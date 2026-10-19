package com.bareapps.rootservice

import android.content.Context
import android.content.pm.PackageInfo
import android.os.ParcelFileDescriptor
import android.os.Process
import android.os.RemoteException
import com.bareapps.barebackup.apptasks.sba.SbaArchiveTaskRunner
import com.bareapps.barebackup.apptasks.sba.SbaCreateTaskRequest
import com.bareapps.barebackup.apptasks.sba.SbaExtractTaskRequest
import com.bareapps.barebackup.apptasks.sba.SbaOperationSnapshot
import com.bareapps.barebackup.apptasks.sba.SbaTarExtractTaskRequest
import com.bareapps.sba.SbaArchiveNative
import com.bareapps.sba.SbaBareTarNative
import com.bareapps.sba.SbaLibaegisCryptoNative
import com.bareapps.sba.SbaRuntimeNative
import com.bareapps.sba.internal.archive.SbaArchiveInfo as NativeArchiveInfo
import com.bareapps.sba.internal.tar.SbaTarEntryInfo
import java.io.Closeable
import java.io.File
import java.io.FileInputStream
import java.io.IOException
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Path
import java.util.Locale

/** Shizuku user-service Binder adapter for SBA operations. */
class SbaRootService : IRootAidlInterface.Stub(), Closeable {
    private val taskRunner = SbaArchiveTaskRunner()
    private data class CacheRecord<T>(
        val value: T,
        val expiresAtMillis: Long,
        val fileSize: Long,
        val modifiedAtMillis: Long,
    )
    private val archiveCache = java.util.LinkedHashMap<String, CacheRecord<NativeArchiveInfo>>(8, 0.75f, true)
    private val tarCache = java.util.LinkedHashMap<String, CacheRecord<List<SbaTarEntryInfo>>>(4, 0.75f, true)
    private val cacheTtlMillis = 30_000L

    override fun getPid(): Int = Process.myPid()
    override fun getUid(): Int = Process.myUid()

    override fun getPackageArchiveInfo(path: String, flags: Int): PackageInfo? {
        validateAbsolutePath(path)
        val info = applicationContext().packageManager.getPackageArchiveInfo(path, flags) ?: return null
        info.applicationInfo?.sourceDir = path
        info.applicationInfo?.publicSourceDir = path
        return info
    }

    override fun getParcelFileDescriptor(path: String, mode: Int): ParcelFileDescriptor {
        validateAbsolutePath(path)
        if (mode != 268435456 && mode != 738197504 && mode != 939524096) {
            throw RemoteException("Unsupported parcel file descriptor mode")
        }
        return ParcelFileDescriptor.open(File(path), mode)
    }

    override fun getSbaNativeVersion(): String = SbaRuntimeNative.a.version()

    override fun isSbaAegis256Available(): Boolean = SbaLibaegisCryptoNative.a.isAvailable()

    override fun isSbaFile(path: String): Boolean {
        validateAbsolutePath(path)
        return SbaArchiveNative.isSbaFile(path)
    }

    override fun readSbaInfo(path: String): SbaArchiveInfo {
        val info = readNativeInfo(path)
        return toRootInfo(info, info.entries.indices.toList())
    }

    override fun readSbaInfoPage(path: String, start: Int, pageSize: Int): SbaArchiveInfoPage {
        val info = readNativeInfo(path)
        val range = pageRange(info.entries.size, start, pageSize)
        val entries = info.entries.subList(range.first, range.second).mapIndexed { localIndex, entry ->
            toRootEntry(entry, range.first + localIndex, info.compressionMethod, info.compressionLevel)
        }
        val next = if (range.second < info.entries.size) range.second else -1
        return SbaArchiveInfoPage(
            formatName = "SBA",
            magic = "SBA1",
            version = info.version,
            fileSize = info.fileSize,
            metadataJson = if (range.first == 0) String(info.metadata, StandardCharsets.UTF_8) else "",
            entries = ArrayList(entries),
            nextEntryStartIndex = next,
        )
    }

    override fun listSbaTarEntries(
        path: String,
        entryName: String,
        password: CharArray?,
        start: Int,
        pageSize: Int,
    ): SbaTarEntryPage {
        if (!password.isNullOrEmpty()) {
            password.fill('\u0000')
            throw RemoteException("Encrypted SBA entry listing is not available")
        }
        try {
            val info = readNativeInfo(path)
            val selected = if (entryName.isBlank()) info.entries else {
                listOf(info.entries.firstOrNull { it.name == entryName }
                    ?: throw RemoteException("SBA entry not found: " + entryName))
            }
            val all = try {
                selected.flatMap { listArchiveTarEntries(path, it.name) }
            } catch (failure: IOException) {
                throw RemoteException("Unable to list SBA TAR entries: " + failure.message)
            }
            val range = pageRange(all.size, start, pageSize)
            return SbaTarEntryPage(
                entries = ArrayList(all.subList(range.first, range.second).map(::toRootTarEntry)),
                nextStartIndex = if (range.second < all.size) range.second else -1,
            )
        } finally {
            password?.fill('\u0000')
        }
    }

    override fun listTarEntries(path: String, start: Int, pageSize: Int): SbaTarEntryPage {
        validateAbsolutePath(path)
        val all = try {
            listDirectTarEntries(path)
        } catch (failure: IOException) {
            throw RemoteException("Unable to list TAR entries: " + failure.message)
        }
        val range = pageRange(all.size, start, pageSize)
        return SbaTarEntryPage(
            entries = ArrayList(all.subList(range.first, range.second).map(::toRootTarEntry)),
            nextStartIndex = if (range.second < all.size) range.second else -1,
        )
    }

    override fun createSba(request: SbaCreateRequest, callback: ISbaOperationCallback?): Long {
        if (request.mode !in 0..1) throw RemoteException("Unknown SBA TAR profile")
        if (request.encryptionMethod !in 0..1) throw RemoteException("Unknown SBA encryption method")
        if (request.encryptionMethod != 0 || !request.password.isNullOrEmpty()) {
            request.password?.fill('\u0000')
            throw RemoteException("Encrypted SBA creation requires the unfinished AEGIS/key schedule")
        }
        request.password?.fill('\u0000')
        if (request.entries.isEmpty()) throw RemoteException("SBA creation requires at least one entry")
        val sourcePaths = ArrayList<String>(request.entries.size)
        val entryNames = ArrayList<String>(request.entries.size)
        val entryModes = IntArray(request.entries.size)
        val includes = ArrayList<List<String>?>(request.entries.size)
        val excludes = ArrayList<List<String>?>(request.entries.size)
        request.entries.forEachIndexed { index, entry ->
            if (entry.sourcePath.isBlank() || !Path.of(entry.sourcePath).isAbsolute) {
                throw RemoteException("SBA source path must be absolute")
            }
            if (!entry.fallbackSourcePath.isNullOrBlank() && !Path.of(entry.fallbackSourcePath).isAbsolute) {
                throw RemoteException("SBA fallback source path must be absolute")
            }
            val source = Path.of(entry.sourcePath)
            val fallback = entry.fallbackSourcePath?.takeIf { it.isNotBlank() }?.let { Path.of(it) }
            val selected = if (!Files.exists(source) && fallback != null && Files.exists(fallback)) fallback else source
            sourcePaths.add(selected.toAbsolutePath().normalize().toString())
            entryNames.add(entry.name)
            var flags = if (entry.includeRootDirectory) 8 else 0
            if (request.mode == 1) flags = flags or 1 or 4
            if (request.useShizuku) flags = flags or 16
            entryModes[index] = flags
            includes.add(entry.includePaths)
            excludes.add(entry.excludePaths)
        }
        val taskRequest = SbaCreateTaskRequest(
            outputPath = request.outputPath,
            metadata = (request.metadataJson ?: "{}").toByteArray(StandardCharsets.UTF_8),
            sourcePaths = sourcePaths,
            entryNames = entryNames,
            entryModes = entryModes,
            includePaths = includes,
            excludePaths = excludes,
            compressionMethod = request.compressionMethod,
            compressionLevel = request.compressionLevel,
        )
        return taskRunner.submitCreate(taskRequest, callbackFor(callback, request.progressIntervalMs))
    }

    override fun extractSba(request: SbaExtractRequest, callback: ISbaOperationCallback?): Long {
        if (!request.password.isNullOrEmpty()) {
            request.password?.fill('\u0000')
            throw RemoteException("Encrypted SBA extraction is not available")
        }
        request.password?.fill('\u0000')
        val taskRequest = SbaExtractTaskRequest(
            archivePath = request.sourcePath,
            entryName = request.entryName,
            destination = request.targetPath,
            flags = restoreOptions(request.restoreProfile),
            includes = request.includePaths ?: emptyList(),
        )
        return taskRunner.submitExtract(taskRequest, callbackFor(callback, request.progressIntervalMs))
    }

    override fun extractTar(request: SbaTarExtractRequest, callback: ISbaOperationCallback?): Long {
        val taskRequest = SbaTarExtractTaskRequest(
            sourcePath = request.sourcePath,
            destination = request.targetDirectory,
            flags = restoreOptions(request.restoreProfile),
            includes = request.includePaths ?: emptyList(),
        )
        return taskRunner.submitTarExtract(taskRequest, callbackFor(callback, request.progressIntervalMs))
    }

    override fun cancelSba(operationId: Long): Boolean = taskRunner.cancel(operationId)

    override fun getSbaResult(operationId: Long): SbaOperationResult {
        val snapshot = taskRunner.getResult(operationId) ?: return SbaOperationResult(
            operationId = operationId, state = SbaOperationSnapshot.STATE_FAILED,
            errorCode = 1, errorSubCode = 0, errorMessage = "Unknown operation ID",
            outputPath = null, bytesProcessed = 0, durationMillis = 0, diagnostics = null,
            tarEntryCount = 0, regularFileCount = 0, directoryCount = 0, symlinkCount = 0,
            hardlinkCount = 0, otherEntryCount = 0, skippedEntryCount = 0, regularFileBytes = 0,
        )
        return SbaOperationResult(
            operationId = snapshot.operationId,
            state = snapshot.state,
            errorCode = snapshot.errorCode,
            errorSubCode = snapshot.errorSubCode,
            errorMessage = snapshot.errorMessage,
            outputPath = snapshot.outputPath,
            bytesProcessed = snapshot.bytesProcessed,
            durationMillis = snapshot.durationMillis,
            diagnostics = snapshot.diagnostics,
            tarEntryCount = snapshot.tarEntryCount,
            regularFileCount = snapshot.regularFileCount,
            directoryCount = snapshot.directoryCount,
            symlinkCount = snapshot.symlinkCount,
            hardlinkCount = snapshot.hardlinkCount,
            otherEntryCount = snapshot.otherEntryCount,
            skippedEntryCount = snapshot.skippedEntryCount,
            regularFileBytes = snapshot.regularFileBytes,
        )
    }

    @Synchronized
    private fun readNativeInfo(path: String): NativeArchiveInfo {
        validateAbsolutePath(path)
        val file = File(path)
        if (!file.isFile) throw RemoteException("SBA archive is not a regular file")
        val fileSize = file.length()
        val modified = file.lastModified()
        val now = System.currentTimeMillis()
        archiveCache[path]?.let { cached ->
            if (cached.expiresAtMillis > now && cached.fileSize == fileSize && cached.modifiedAtMillis == modified) {
                return cached.value
            }
        }
        val info = try {
            SbaArchiveNative.readArchiveInfo(path)
        } catch (failure: IOException) {
            throw RemoteException("Unable to read SBA archive: " + failure.message)
        }
        archiveCache[path] = CacheRecord(info, now + cacheTtlMillis, fileSize, modified)
        while (archiveCache.size > 4) archiveCache.remove(archiveCache.entries.iterator().next().key)
        return info
    }

    @Synchronized
    @Throws(IOException::class)
    private fun listArchiveTarEntries(path: String, entryName: String): List<SbaTarEntryInfo> {
        val file = File(path)
        val fileSize = file.length()
        val modified = file.lastModified()
        val now = System.currentTimeMillis()
        val key = path + "\u0000" + entryName
        tarCache[key]?.let { cached ->
            if (cached.expiresAtMillis > now && cached.fileSize == fileSize && cached.modifiedAtMillis == modified) {
                return cached.value
            }
        }
        val entries = SbaArchiveNative.listEntryTarEntries(path, entryName).toList()
        tarCache[key] = CacheRecord(entries, now + cacheTtlMillis, fileSize, modified)
        while (tarCache.size > 2) tarCache.remove(tarCache.entries.iterator().next().key)
        return entries
    }

    @Synchronized
    @Throws(IOException::class)
    private fun listDirectTarEntries(path: String): List<SbaTarEntryInfo> {
        val file = File(path)
        val fileSize = file.length()
        val modified = file.lastModified()
        val now = System.currentTimeMillis()
        val key = path + "\u0000direct"
        tarCache[key]?.let { cached ->
            if (cached.expiresAtMillis > now && cached.fileSize == fileSize && cached.modifiedAtMillis == modified) {
                return cached.value
            }
        }
        val entries = FileInputStream(path).use { input ->
            SbaBareTarNative.instance.listTarEntriesFromDescriptor(input.fd, 0L).toList()
        }
        tarCache[key] = CacheRecord(entries, now + cacheTtlMillis, fileSize, modified)
        while (tarCache.size > 2) tarCache.remove(tarCache.entries.iterator().next().key)
        return entries
    }

    private fun toRootInfo(info: NativeArchiveInfo, indices: List<Int>): SbaArchiveInfo {
        val nextStart = indices.lastOrNull()?.plus(1) ?: 0
        val entries = indices.map { index ->
            toRootEntry(info.entries[index], index, info.compressionMethod, info.compressionLevel)
        }
        return SbaArchiveInfo(
            formatName = "SBA",
            magic = "SBA1",
            version = info.version,
            fileSize = info.fileSize,
            metadataJson = String(info.metadata, StandardCharsets.UTF_8),
            createdAtMillis = info.createdAtMillis,
            compressionMethod = info.compressionMethod,
            compressionLevel = info.compressionLevel,
            encryptionMethod = 0,
            indexOffset = info.indexOffset,
            indexSize = info.indexSize,
            indexCrc32 = info.indexCrc32,
            indexCrc32Hex = String.format(Locale.ROOT, "%08x", info.indexCrc32),
            footerOffset = info.fileSize - 32L,
            footerSize = 32,
            footerCrc32 = info.footerCrc32,
            footerCrc32Hex = String.format(Locale.ROOT, "%08x", info.footerCrc32),
            entries = ArrayList(entries),
            nextEntryStartIndex = if (nextStart < info.entries.size) nextStart else -1,
        )
    }

    private fun toRootEntry(
        entry: com.bareapps.sba.internal.archive.SbaArchiveEntry,
        order: Int,
        compressionMethod: Int,
        compressionLevel: Int,
    ): SbaArchiveEntry = SbaArchiveEntry(
        name = entry.name,
        order = order,
        entryOffset = entry.entryOffset,
        payloadOffset = entry.payloadOffset,
        payloadSize = entry.storedSize,
        compressedSize = entry.compressedSize,
        tarSize = entry.tarSize,
        compressionDescriptor = if (compressionMethod == 1) "zstd:$compressionLevel" else "none",
        encryptionName = "none",
        flags = entry.flags,
        tarEntryCount = entry.tarEntryCount ?: -1L,
        regularFileCount = entry.regularFileCount ?: -1L,
        directoryCount = entry.directoryCount ?: -1L,
    )

    private fun toRootTarEntry(entry: SbaTarEntryInfo): SbaTarEntry {
        val typeName = when (entry.type) {
            1 -> "file"
            2 -> "directory"
            3 -> "symlink"
            4 -> "hardlink"
            5 -> "fifo"
            6 -> "character-device"
            7 -> "block-device"
            else -> "other"
        }
        return SbaTarEntry(
            name = entry.name,
            typeName = typeName,
            linkName = entry.linkName,
            mode = entry.mode,
            size = entry.size,
            realSize = entry.realSize,
            modificationTimeMillis = entry.mtimeMs,
            sparse = entry.sparse,
            xattrNames = ArrayList(entry.getXattrNames().toList()),
        )
    }

    private fun restoreOptions(profile: Int): Int = when (profile) {
        0 -> 2       // Basic: timestamps
        1 -> 75      // Fidelity: timestamps, permissions, xattrs and sparse files
        2 -> 223     // Root fidelity: all implemented metadata options
        else -> throw RemoteException("Unknown SBA restore profile")
    }

    private fun pageRange(total: Int, start: Int, pageSize: Int): Pair<Int, Int> {
        if (start < 0 || pageSize <= 0) throw RemoteException("Invalid page range")
        val safeStart = start.coerceAtMost(total)
        val safePageSize = pageSize.coerceAtMost(128)
        return safeStart to minOf(total, safeStart + safePageSize)
    }

    private fun validateAbsolutePath(path: String) {
        if (path.isBlank() || !Path.of(path).isAbsolute) throw RemoteException("Path must be absolute")
    }

    private fun callbackFor(
        callback: ISbaOperationCallback?,
        intervalMillis: Long,
    ): ((SbaOperationSnapshot) -> Unit)? {
        if (callback == null) return null
        val interval = intervalMillis.coerceAtLeast(0L)
        val lastSent = java.util.concurrent.atomic.AtomicLong(0L)
        return { snapshot ->
            val now = System.currentTimeMillis()
            val previous = lastSent.get()
            if (snapshot.isFinal || interval == 0L || now - previous >= interval) {
                lastSent.set(now)
                notifyCallback(callback, snapshot)
            }
        }
    }

    private fun notifyCallback(callback: ISbaOperationCallback?, snapshot: SbaOperationSnapshot) {
        if (callback == null) return
        try {
            callback.onProgress(
                snapshot.operationId,
                snapshot.state,
                snapshot.errorCode,
                snapshot.errorSubCode,
                when (snapshot.state) {
                    SbaOperationSnapshot.STATE_RUNNING -> 1
                    SbaOperationSnapshot.STATE_SUCCEEDED -> 100
                    SbaOperationSnapshot.STATE_FAILED -> -1
                    else -> 0
                },
                snapshot.errorMessage,
                snapshot.progressProcessed,
                snapshot.progressTotal,
            )
        } catch (_: RemoteException) {
            // A disconnected callback must not cancel the archive operation.
        }
    }

    private fun applicationContext(): Context {
        return try {
            val activityThread = Class.forName("android.app.ActivityThread")
            activityThread.getDeclaredMethod("currentApplication").invoke(null) as? Context
                ?: throw RemoteException("Application context is unavailable")
        } catch (failure: ReflectiveOperationException) {
            throw RemoteException("Unable to obtain application context: " + failure.message)
        }
    }

    fun destroy() {
        close()
    }

    fun onDestroy() {
        close()
    }

    override fun close() {
        taskRunner.close()
        synchronized(this) {
            archiveCache.clear()
            tarCache.clear()
        }
    }
}
