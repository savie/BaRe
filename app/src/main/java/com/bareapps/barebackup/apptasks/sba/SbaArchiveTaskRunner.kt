package com.bareapps.barebackup.apptasks.sba

import com.bareapps.sba.SbaArchiveNative
import com.bareapps.sba.SbaBareTarNative
import com.bareapps.sba.internal.progress.SbaNativeProgressListener
import java.io.Closeable
import java.io.FileInputStream
import java.io.IOException
import java.io.InterruptedIOException
import java.nio.file.Files
import java.nio.file.LinkOption
import java.nio.file.Path
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicLong

data class SbaCreateTaskRequest(
    val outputPath: String,
    val metadata: ByteArray,
    val sourcePaths: List<String>,
    val entryNames: List<String>,
    val entryModes: IntArray,
    val includePaths: List<List<String>?> = List(sourcePaths.size) { null },
    val excludePaths: List<List<String>?> = List(sourcePaths.size) { null },
    val compressionMethod: Int = 0,
    val compressionLevel: Int = 0,
)

data class SbaExtractTaskRequest(
    val archivePath: String,
    val entryName: String,
    val destination: String,
    val flags: Int = 0x1ff,
    val includes: List<String> = emptyList(),
)

data class SbaTarExtractTaskRequest(
    val sourcePath: String,
    val destination: String,
    val flags: Int = 0x1ff,
    val includes: List<String> = emptyList(),
)

data class SbaTaskBackendResult(
    val outputPath: String?,
    val bytesProcessed: Long = 0,
    val durationMillis: Long = 0,
    val tarEntryCount: Long = 0,
    val regularFileCount: Long = 0,
    val directoryCount: Long = 0,
    val symlinkCount: Long = 0,
    val hardlinkCount: Long = 0,
    val otherEntryCount: Long = 0,
    val skippedEntryCount: Long = 0,
    val regularFileBytes: Long = 0,
    val diagnostics: String? = null,
)

interface SbaTaskBackend {
    fun create(request: SbaCreateTaskRequest, progress: SbaNativeProgressListener): SbaTaskBackendResult
    fun extract(request: SbaExtractTaskRequest, progress: SbaNativeProgressListener): SbaTaskBackendResult
    fun extractTar(request: SbaTarExtractTaskRequest, progress: SbaNativeProgressListener): SbaTaskBackendResult
}

private object NativeSbaTaskBackend : SbaTaskBackend {
    override fun create(request: SbaCreateTaskRequest, progress: SbaNativeProgressListener): SbaTaskBackendResult {
        val started = System.nanoTime()
        val stats = SbaArchiveNative.a.createArchive(
            1,
            request.outputPath,
            request.metadata,
            request.sourcePaths.toTypedArray(),
            request.entryNames.toTypedArray(),
            request.entryModes,
            request.includePaths.map { it?.toTypedArray() ?: emptyArray<String>() }.toTypedArray(),
            request.excludePaths.map { it?.toTypedArray() ?: emptyArray<String>() }.toTypedArray(),
            request.compressionMethod,
            request.compressionLevel,
            0, 0, 0, 0, 0, 0, 0, 0,
            null, null, null, null,
            progress,
        )
        var tarEntries = 0L
        var regularFiles = 0L
        var directories = 0L
        var symlinks = 0L
        var hardlinks = 0L
        var otherEntries = 0L
        var regularBytes = 0L
        val archiveInfo = SbaArchiveNative.readArchiveInfo(request.outputPath)
        archiveInfo.entries.forEach { archiveEntry ->
            SbaArchiveNative.listEntryTarEntries(request.outputPath, archiveEntry.name).forEach { entry ->
                tarEntries++
                when (entry.type) {
                    com.bareapps.sba.internal.tar.SbaTarEntryInfo.TYPE_FILE -> {
                        regularFiles++
                        regularBytes = safeAdd(regularBytes, entry.realSize)
                    }
                    com.bareapps.sba.internal.tar.SbaTarEntryInfo.TYPE_DIRECTORY -> directories++
                    com.bareapps.sba.internal.tar.SbaTarEntryInfo.TYPE_SYMLINK -> symlinks++
                    com.bareapps.sba.internal.tar.SbaTarEntryInfo.TYPE_HARDLINK -> hardlinks++
                    else -> otherEntries++
                }
            }
        }
        return SbaTaskBackendResult(
            outputPath = request.outputPath,
            bytesProcessed = stats.getOrElse(0) { 0L },
            durationMillis = (System.nanoTime() - started) / 1_000_000L,
            tarEntryCount = tarEntries,
            regularFileCount = regularFiles,
            directoryCount = directories,
            symlinkCount = symlinks,
            hardlinkCount = hardlinks,
            otherEntryCount = otherEntries,
            regularFileBytes = regularBytes,
        )
    }

    override fun extract(request: SbaExtractTaskRequest, progress: SbaNativeProgressListener): SbaTaskBackendResult {
        val started = System.nanoTime()
        val allEntries = SbaArchiveNative.listEntryTarEntries(request.archivePath, request.entryName)
        val extracted = SbaArchiveNative.extractEntry(
            request.archivePath,
            request.entryName,
            request.destination,
            request.flags,
            request.includes.toTypedArray(),
            progress,
        )
        val root = Path.of(request.destination).toAbsolutePath().normalize()
        val extractedNameCounts = extracted.groupingBy { it }.eachCount().toMutableMap()
        val extractedEntries = allEntries.filter { entry ->
            val remaining = extractedNameCounts[entry.name] ?: 0
            if (remaining <= 0) false else {
                extractedNameCounts[entry.name] = remaining - 1
                true
            }
        }
        var files = 0L
        var directories = 0L
        var symlinks = 0L
        var hardlinks = 0L
        var otherEntries = 0L
        var bytes = 0L
        extractedEntries.forEach { entry ->
            when (entry.type) {
                com.bareapps.sba.internal.tar.SbaTarEntryInfo.TYPE_FILE -> {
                    files++
                    bytes = safeAdd(bytes, entry.realSize)
                }
                com.bareapps.sba.internal.tar.SbaTarEntryInfo.TYPE_DIRECTORY -> directories++
                com.bareapps.sba.internal.tar.SbaTarEntryInfo.TYPE_SYMLINK -> symlinks++
                com.bareapps.sba.internal.tar.SbaTarEntryInfo.TYPE_HARDLINK -> hardlinks++
                else -> otherEntries++
            }
        }
        // Validate that returned names resolve within the requested destination.
        extracted.forEach { name ->
            val path = root.resolve(name).normalize()
            if (!path.startsWith(root)) throw java.io.IOException("TAR extractor returned a path outside its destination")
        }
        return SbaTaskBackendResult(
            outputPath = request.destination,
            bytesProcessed = bytes,
            durationMillis = (System.nanoTime() - started) / 1_000_000L,
            tarEntryCount = extractedEntries.size.toLong(),
            regularFileCount = files,
            directoryCount = directories,
            symlinkCount = symlinks,
            hardlinkCount = hardlinks,
            otherEntryCount = otherEntries,
            skippedEntryCount = (allEntries.size - extractedEntries.size).coerceAtLeast(0).toLong(),
            regularFileBytes = bytes,
        )
    }

    override fun extractTar(request: SbaTarExtractTaskRequest, progress: SbaNativeProgressListener): SbaTaskBackendResult {
        val source = Path.of(request.sourcePath).toAbsolutePath().normalize()
        if (!Files.isRegularFile(source)) throw IOException("TAR source is not a regular file: $source")
        val tarBytes = Files.size(source)
        val started = System.nanoTime()
        val stats = FileInputStream(source.toFile()).use { input ->
            SbaBareTarNative.instance.extractTarFromDescriptorWithStats(
                input.fd, tarBytes, request.destination, request.flags, request.includes.toTypedArray(), progress,
            )
        }
        return SbaTaskBackendResult(
            outputPath = request.destination,
            bytesProcessed = stats.getOrElse(0) { tarBytes },
            durationMillis = stats.getOrElse(16) { (System.nanoTime() - started) / 1_000_000L },
            tarEntryCount = stats.getOrElse(1) { 0L },
            regularFileCount = stats.getOrElse(2) { 0L },
            directoryCount = stats.getOrElse(3) { 0L },
            symlinkCount = stats.getOrElse(4) { 0L },
            hardlinkCount = stats.getOrElse(5) { 0L },
            otherEntryCount = stats.getOrElse(6) { 0L },
            skippedEntryCount = stats.getOrElse(7) { 0L },
            regularFileBytes = stats.getOrElse(8) { 0L },
        )
    }

    private fun safeAdd(a: Long, b: Long): Long {
        require(b >= 0L && a <= Long.MAX_VALUE - b) { "SBA statistics overflow" }
        return a + b
    }
}

data class SbaOperationSnapshot(
    val operationId: Long,
    val state: Int,
    val errorCode: Int,
    val errorSubCode: Int,
    val errorMessage: String?,
    val outputPath: String?,
    val bytesProcessed: Long,
    val durationMillis: Long,
    val diagnostics: String?,
    val tarEntryCount: Long,
    val regularFileCount: Long,
    val directoryCount: Long,
    val symlinkCount: Long,
    val hardlinkCount: Long,
    val otherEntryCount: Long,
    val skippedEntryCount: Long,
    val regularFileBytes: Long,
    val progressProcessed: Long,
    val progressTotal: Long,
) {
    val isFinal: Boolean get() = state == STATE_SUCCEEDED || state == STATE_FAILED

    companion object {
        const val STATE_QUEUED = 0
        const val STATE_RUNNING = 1
        const val STATE_SUCCEEDED = 2
        const val STATE_FAILED = 3
        const val ERROR_NONE = 0
        const val ERROR_INVALID_REQUEST = 1
        const val ERROR_OPERATION_FAILED = 2
        const val ERROR_CANCELLED = 3
    }
}

/**
 * App-task lifecycle for SBA create/restore. The backend is injectable so the state
 * machine and cancellation contract can be tested without loading JNI in host tests.
 */
class SbaArchiveTaskRunner(
    private val backend: SbaTaskBackend = NativeSbaTaskBackend,
    private val executor: ExecutorService = Executors.newCachedThreadPool(),
    private val retentionMillis: Long = 5 * 60 * 1000L,
    private val maxRecords: Int = 128,
) : Closeable {
    private class Operation(
        val id: Long,
        val callback: ((SbaOperationSnapshot) -> Unit)?,
    ) {
        val cancelled = java.util.concurrent.atomic.AtomicBoolean(false)
        @Volatile var state = SbaOperationSnapshot.STATE_QUEUED
        @Volatile var errorCode = SbaOperationSnapshot.ERROR_NONE
        @Volatile var errorSubCode = 0
        @Volatile var errorMessage: String? = null
        @Volatile var outputPath: String? = null
        @Volatile var bytesProcessed = 0L
        @Volatile var durationMillis = 0L
        @Volatile var diagnostics: String? = null
        @Volatile var tarEntryCount = 0L
        @Volatile var regularFileCount = 0L
        @Volatile var directoryCount = 0L
        @Volatile var symlinkCount = 0L
        @Volatile var hardlinkCount = 0L
        @Volatile var otherEntryCount = 0L
        @Volatile var skippedEntryCount = 0L
        @Volatile var regularFileBytes = 0L
        @Volatile var progressProcessed = 0L
        @Volatile var progressTotal = 0L
        @Volatile var startedAtMillis = 0L
        @Volatile var finishedAtMillis = 0L
    }

    private val nextId = AtomicLong(1)
    private val operations = ConcurrentHashMap<Long, Operation>()
    private val closed = java.util.concurrent.atomic.AtomicBoolean(false)

    init {
        require(retentionMillis > 0L) { "Operation retention must be positive" }
        require(maxRecords > 0) { "Maximum operation record count must be positive" }
    }

    fun submitCreate(
        request: SbaCreateTaskRequest,
        onUpdate: ((SbaOperationSnapshot) -> Unit)? = null,
    ): Long {
        validateCreate(request)
        return submit(onUpdate) { operation, progress ->
            backend.create(request, progress)
        }
    }

    fun submitExtract(
        request: SbaExtractTaskRequest,
        onUpdate: ((SbaOperationSnapshot) -> Unit)? = null,
    ): Long {
        require(request.archivePath.isNotBlank() && Path.of(request.archivePath).isAbsolute) {
            "SBA archive path must be absolute"
        }
        require(request.entryName.isNotBlank()) { "SBA entry name must not be blank" }
        require(request.destination.isNotBlank() && Path.of(request.destination).isAbsolute) {
            "SBA extraction destination must be absolute"
        }
        require(request.flags in 0..0x1ff) { "Invalid TAR permission mask" }
        return submit(onUpdate) { operation, progress ->
            backend.extract(request, progress)
        }
    }

    fun submitTarExtract(
        request: SbaTarExtractTaskRequest,
        onUpdate: ((SbaOperationSnapshot) -> Unit)? = null,
    ): Long {
        require(request.sourcePath.isNotBlank() && Path.of(request.sourcePath).isAbsolute) {
            "TAR source path must be absolute"
        }
        require(request.destination.isNotBlank() && Path.of(request.destination).isAbsolute) {
            "TAR extraction destination must be absolute"
        }
        require(request.flags in 0..0x1ff) { "Invalid TAR permission mask" }
        return submit(onUpdate) { _, progress -> backend.extractTar(request, progress) }
    }

    fun cancel(operationId: Long): Boolean {
        val operation = operations[operationId] ?: return false
        synchronized(operation) {
            if (operation.state == SbaOperationSnapshot.STATE_SUCCEEDED ||
                operation.state == SbaOperationSnapshot.STATE_FAILED) return false
            operation.cancelled.set(true)
        }
        emit(operation)
        return true
    }

    fun getResult(operationId: Long): SbaOperationSnapshot? {
        cleanupExpired()
        return operations[operationId]?.let(::snapshot)
    }

    fun getResults(): List<SbaOperationSnapshot> {
        cleanupExpired()
        return operations.values.sortedBy { it.id }.map(::snapshot)
    }

    private fun validateCreate(request: SbaCreateTaskRequest) {
        require(request.outputPath.isNotBlank() && Path.of(request.outputPath).isAbsolute) {
            "SBA output path must be absolute"
        }
        require(request.sourcePaths.isNotEmpty() &&
            request.sourcePaths.size == request.entryNames.size &&
            request.sourcePaths.size == request.entryModes.size &&
            request.sourcePaths.size == request.includePaths.size &&
            request.sourcePaths.size == request.excludePaths.size) {
            "SBA create arrays must have identical non-zero lengths"
        }
        require(request.sourcePaths.all { it.isNotBlank() && Path.of(it).isAbsolute }) {
            "SBA source paths must be absolute"
        }
        require(request.compressionMethod in 0..1) { "Unsupported SBA compression method" }
        require(if (request.compressionMethod == 0) request.compressionLevel == 0
            else request.compressionLevel in 1..22) { "Invalid SBA compression level" }
    }

    private fun submit(
        callback: ((SbaOperationSnapshot) -> Unit)?,
        work: (Operation, SbaNativeProgressListener) -> SbaTaskBackendResult,
    ): Long {
        check(!closed.get()) { "SBA task runner is closed" }
        cleanupExpired()
        trimRecords()
        val id = nextId.getAndIncrement()
        check(id > 0) { "SBA operation ID space exhausted" }
        val operation = Operation(id, callback)
        operations[id] = operation
        emit(operation)
        executor.submit task@{
            synchronized(operation) {
                if (operation.cancelled.get()) {
                    finishFailure(operation, InterruptedIOException("SBA operation cancelled"), true)
                    return@task
                }
                operation.state = SbaOperationSnapshot.STATE_RUNNING
                operation.startedAtMillis = System.currentTimeMillis()
            }
            emit(operation)
            val progress = object : SbaNativeProgressListener {
                override fun isCancellationRequested(): Boolean = operation.cancelled.get()
                override fun onProgress(processed: Long, total: Long) {
                    operation.progressProcessed = processed.coerceAtLeast(0L)
                    operation.progressTotal = total.coerceAtLeast(0L)
                    emit(operation)
                }
            }
            try {
                val result = work(operation, progress)
                if (operation.cancelled.get()) {
                    finishFailure(operation, InterruptedIOException("SBA operation cancelled"), true)
                    return@task
                }
                synchronized(operation) {
                    operation.outputPath = result.outputPath
                    operation.bytesProcessed = result.bytesProcessed.coerceAtLeast(0L)
                    operation.durationMillis = if (result.durationMillis > 0) result.durationMillis
                        else System.currentTimeMillis() - operation.startedAtMillis
                    operation.diagnostics = result.diagnostics
                    operation.tarEntryCount = result.tarEntryCount.coerceAtLeast(0L)
                    operation.regularFileCount = result.regularFileCount.coerceAtLeast(0L)
                    operation.directoryCount = result.directoryCount.coerceAtLeast(0L)
                    operation.symlinkCount = result.symlinkCount.coerceAtLeast(0L)
                    operation.hardlinkCount = result.hardlinkCount.coerceAtLeast(0L)
                    operation.otherEntryCount = result.otherEntryCount.coerceAtLeast(0L)
                    operation.skippedEntryCount = result.skippedEntryCount.coerceAtLeast(0L)
                    operation.regularFileBytes = result.regularFileBytes.coerceAtLeast(0L)
                    operation.state = SbaOperationSnapshot.STATE_SUCCEEDED
                    operation.finishedAtMillis = System.currentTimeMillis()
                }
                emit(operation)
            } catch (failure: Exception) {
                finishFailure(operation, failure, operation.cancelled.get() || failure is InterruptedIOException)
            }
        }
        return id
    }

    private fun finishFailure(operation: Operation, failure: Exception, cancelled: Boolean) {
        synchronized(operation) {
            operation.state = SbaOperationSnapshot.STATE_FAILED
            operation.errorCode = if (cancelled) SbaOperationSnapshot.ERROR_CANCELLED
                else SbaOperationSnapshot.ERROR_OPERATION_FAILED
            operation.errorMessage = failure.message ?: if (cancelled) "SBA operation cancelled" else "SBA operation failed"
            operation.diagnostics = failure.javaClass.name
            operation.durationMillis = if (operation.startedAtMillis == 0L) 0L
                else System.currentTimeMillis() - operation.startedAtMillis
            operation.finishedAtMillis = System.currentTimeMillis()
        }
        emit(operation)
    }

    private fun snapshot(operation: Operation): SbaOperationSnapshot = synchronized(operation) {
        SbaOperationSnapshot(
            operation.id, operation.state, operation.errorCode, operation.errorSubCode,
            operation.errorMessage, operation.outputPath, operation.bytesProcessed,
            operation.durationMillis, operation.diagnostics, operation.tarEntryCount,
            operation.regularFileCount, operation.directoryCount, operation.symlinkCount,
            operation.hardlinkCount, operation.otherEntryCount, operation.skippedEntryCount,
            operation.regularFileBytes, operation.progressProcessed, operation.progressTotal,
        )
    }

    private fun emit(operation: Operation) {
        val callback = operation.callback ?: return
        try { callback(snapshot(operation)) } catch (_: Exception) { /* UI/listener failures must not fail archive I/O. */ }
    }

    private fun cleanupExpired() {
        val now = System.currentTimeMillis()
        operations.entries.removeIf { (_, op) ->
            op.finishedAtMillis > 0L && now - op.finishedAtMillis >= retentionMillis
        }
    }

    private fun trimRecords() {
        if (operations.size < maxRecords) return
        val completed = operations.values.filter { it.finishedAtMillis > 0L }.sortedBy { it.finishedAtMillis }
        for (operation in completed) {
            if (operations.size < maxRecords) break
            operations.remove(operation.id, operation)
        }
    }

    override fun close() {
        if (!closed.compareAndSet(false, true)) return
        operations.values.forEach { operation ->
            operation.cancelled.set(true)
            if (operation.state != SbaOperationSnapshot.STATE_SUCCEEDED &&
                operation.state != SbaOperationSnapshot.STATE_FAILED) {
                finishFailure(operation, InterruptedIOException("SBA task runner closed"), true)
            }
        }
        executor.shutdownNow()
    }
}
