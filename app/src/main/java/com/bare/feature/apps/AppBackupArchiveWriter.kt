package com.bare.feature.apps

import android.content.Context
import java.io.DataOutputStream
import java.io.File
import java.io.FileInputStream
import java.io.BufferedInputStream
import java.io.FileOutputStream
import java.io.FilterOutputStream
import java.util.zip.Deflater
import java.nio.file.Files
import java.nio.file.StandardCopyOption
import java.security.KeyStore
import java.security.MessageDigest
import java.security.SecureRandom
import com.bare.capability.RootArchiveSource
import com.bare.capability.RootCapabilityProvider
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream
import javax.crypto.Cipher
import javax.crypto.CipherOutputStream
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.PBEKeySpec
import javax.crypto.spec.SecretKeySpec

data class AppBackupArchiveResult(
    val file: File,
    val byteSize: Long,
    val fileCount: Int,
    val sha256: String,
    val encryption: EncryptionMode,
)

enum class EncryptionMode { STANDARD, ADVANCED }

class AppBackupArchiveWriter(private val context: Context) {
    private val root = RootCapabilityProvider()

    fun write(
        output: File,
        sources: List<AppBackupArchiveSource>,
        password: CharArray?,
        onProgress: ((processedBytes: Long, totalBytes: Long) -> Unit)? = null,
    ): AppBackupArchiveResult {
        require(sources.isNotEmpty()) { "No backup files to archive" }
        output.parentFile?.mkdirs()

        val material = encryptionMaterial(password)
        val cipher = createCipher(material)
        val header = buildHeader(material.mode, material.salt, cipher.iv)
        cipher.updateAAD(header)

        val digest = MessageDigest.getInstance("SHA-256")
        val stagedOutput = stagedOutput(output)
        var fileCount = 0

        try {
            FileOutputStream(stagedOutput).use { raw ->
                val digesting = DigestOutputStream(raw, digest)
                digesting.write(header)
                CipherOutputStream(digesting, cipher).use { encrypted ->
                    fileCount = AppReferenceTarZstdArchive().writeLocal(
                        encrypted,
                        sources,
                        onProgress,
                    )
                }
            }
            moveIntoPlace(stagedOutput, output)
        } catch (t: Throwable) {
            stagedOutput.delete()
            throw t
        }

        return AppBackupArchiveResult(
            file = output,
            byteSize = output.length(),
            fileCount = fileCount,
            sha256 = sha256(output),
            encryption = material.mode,
        )
    }

    fun writeRoot(
        output: File,
        sources: List<RootArchiveSource>,
        password: CharArray?,
        onProgress: ((processedBytes: Long, totalBytes: Long) -> Unit)? = null,
        isCancelled: () -> Boolean = { false },
    ): AppBackupArchiveResult {
        require(sources.isNotEmpty()) { "No root backup sources to archive" }
        output.parentFile?.mkdirs()

        val material = encryptionMaterial(password)
        val cipher = createCipher(material)
        val header = buildHeader(material.mode, material.salt, cipher.iv)
        cipher.updateAAD(header)

        val digest = MessageDigest.getInstance("SHA-256")
        val stagedOutput = stagedOutput(output)
        var fileCount = 0

        try {
            FileOutputStream(stagedOutput).use { raw ->
                val digesting = DigestOutputStream(raw, digest)
                digesting.write(header)
                CipherOutputStream(digesting, cipher).use { encrypted ->
                    fileCount = AppReferenceTarZstdArchive().writeRoot(
                        encrypted,
                        sources,
                        onProgress,
                        isCancelled,
                    )
                }
            }
            moveIntoPlace(stagedOutput, output)
        } catch (t: Throwable) {
            stagedOutput.delete()
            throw t
        }

        return AppBackupArchiveResult(
            file = output,
            byteSize = output.length(),
            fileCount = fileCount,
            sha256 = sha256(output),
            encryption = material.mode,
        )
    }

    private fun encryptionMaterial(password: CharArray?): EncryptionMaterial {
        val strategy = com.bare.feature.settings.EncryptionPasswordStore(context).loadStrategy()
        return when (strategy) {
            com.bare.feature.settings.EncryptionPasswordStrategy.STANDARD ->
                EncryptionMaterial(EncryptionMode.STANDARD, standardKey(), ByteArray(0))
            com.bare.feature.settings.EncryptionPasswordStrategy.ADVANCED -> {
                require(password != null && password.isNotEmpty()) { "Advanced encryption password is required" }
                val salt = ByteArray(SALT_BYTES).also(SecureRandom()::nextBytes)
                val spec = PBEKeySpec(password, salt, PBKDF2_ITERATIONS, KEY_BITS)
                val key = try {
                    SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256")
                        .generateSecret(spec).encoded
                } finally {
                    spec.clearPassword()
                    password.fill('\\u0000')
                }
                EncryptionMaterial(EncryptionMode.ADVANCED, SecretKeySpec(key, "AES"), salt)
            }
        }
    }

    private fun createCipher(material: EncryptionMaterial): Cipher {
        val cipher = Cipher.getInstance(TRANSFORMATION)
        if (material.mode == EncryptionMode.STANDARD) {
            cipher.init(Cipher.ENCRYPT_MODE, material.key)
        } else {
            val iv = ByteArray(GCM_IV_BYTES).also(SecureRandom()::nextBytes)
            cipher.init(
                Cipher.ENCRYPT_MODE,
                material.key,
                GCMParameterSpec(GCM_TAG_BITS, iv),
            )
        }
        require(cipher.iv.size == GCM_IV_BYTES) { "Unsupported GCM IV length: " + cipher.iv.size }
        return cipher
    }

    private fun stagedOutput(output: File): File =
        File(
            output.parentFile ?: throw IllegalStateException("Backup archive parent directory is missing"),
            ".${output.name}.${java.util.UUID.randomUUID()}.partial",
        )

    private fun addRootSource(
        zip: ZipOutputStream,
        source: RootArchiveSource,
        progress: ArchiveProgressCounter,
        isCancelled: () -> Boolean,
    ): Int {
        var count = 0
        var pendingPath: String? = null
        root.openTarStream(source.sourcePath).use { tar ->
            val input = BufferedInputStream(tar.input, BUFFER_BYTES)
            while (true) {
                if (isCancelled()) throw AppBackupEngine.BackupCancelledException()
                val header = ByteArray(TAR_BLOCK_BYTES)
                val first = input.read()
                if (first < 0) break
                header[0] = first.toByte()
                readFully(input, header, 1, TAR_BLOCK_BYTES - 1)
                if (header.all { it.toInt() == 0 }) break

                val type = header[156].toInt().toChar()
                val size = parseTarOctal(header, 124, 12)
                val rawName = parseTarString(header, 0, 100)
                when (type) {
                    'x', 'g' -> {
                        val pax = readTarPayload(input, size)
                        if (type == 'x') pendingPath = parsePaxPath(pax)
                    }
                    'L' -> {
                        pendingPath = readTarPayload(input, size).toString(Charsets.UTF_8).trimEnd('\u0000', '\n')
                    }
                    '0', '\u0000' -> {
                        val tarName = pendingPath ?: rawName
                        val entryName = rootEntryName(source, tarName)
                        if (entryName.isNotBlank()) {
                            ZipEntry(entryName).also { entry ->
                                val mtime = parseTarOctal(header, 136, 12)
                                if (mtime > 0L) entry.time = mtime * 1000L
                                zip.putNextEntry(entry)
                                copyTarPayload(input, zip, size, progress, isCancelled)
                                zip.closeEntry()
                                count++
                            }
                        } else {
                            skipFully(input, size)
                        }
                        pendingPath = null
                    }
                    else -> {
                        skipFully(input, size)
                        if (type != 'x' && type != 'g' && type != 'L') pendingPath = null
                    }
                }
                val padding = (TAR_BLOCK_BYTES - (size % TAR_BLOCK_BYTES)) % TAR_BLOCK_BYTES
                if (padding > 0L) skipFully(input, padding)
            }
            tar.awaitSuccess()
        }
        return count
    }

    private fun rootEntryName(source: RootArchiveSource, tarName: String): String {
        if (!source.directory) return source.entryName
        var name = tarName.replace('\\', '/').removePrefix("./").trim('/')
        if (name.isBlank()) return ""
        val slash = name.indexOf('/')
        if (slash >= 0) name = name.substring(slash + 1)
        if (name.isBlank()) return ""
        val parts = name.split('/').filter { it.isNotBlank() && it != "." && it != ".." }
        if (parts.size != name.split('/').count { it.isNotBlank() && it != "." && it != ".." }) return ""
        return source.entryName.trimEnd('/') + "/" + parts.joinToString("/")
    }

    private fun parsePaxPath(payload: ByteArray): String? =
        payload.toString(Charsets.UTF_8).lineSequence()
            .mapNotNull { line -> line.substringAfter("path=", "").takeIf { line.contains(" path=") } }
            .firstOrNull()

    private fun parseTarString(header: ByteArray, offset: Int, length: Int): String =
        header.copyOfRange(offset, offset + length).toString(Charsets.UTF_8).trimEnd('\u0000').trim()

    private fun parseTarOctal(header: ByteArray, offset: Int, length: Int): Long {
        val value = parseTarString(header, offset, length).trim()
        if (value.isBlank()) return 0L
        return value.trimStart('0').ifBlank { "0" }.toLongOrNull(8) ?: 0L
    }

    private fun readTarPayload(input: java.io.InputStream, size: Long): ByteArray {
        require(size <= Int.MAX_VALUE) { "Tar metadata entry is too large" }
        val payload = ByteArray(size.toInt())
        readFully(input, payload, 0, payload.size)
        return payload
    }

    private fun copyTarPayload(
        input: java.io.InputStream,
        output: java.io.OutputStream,
        size: Long,
        progress: ArchiveProgressCounter,
        isCancelled: () -> Boolean,
    ) {
        var remaining = size
        val buffer = ByteArray(BUFFER_BYTES)
        while (remaining > 0L) {
            if (isCancelled()) throw AppBackupEngine.BackupCancelledException()
            val wanted = minOf(buffer.size.toLong(), remaining).toInt()
            val read = input.read(buffer, 0, wanted)
            if (read < 0) throw IllegalStateException("Unexpected end of root tar stream")
            output.write(buffer, 0, read)
            progress.add(read.toLong())
            remaining -= read.toLong()
        }
    }

    private fun readFully(input: java.io.InputStream, buffer: ByteArray, offset: Int, length: Int) {
        var position = offset
        var remaining = length
        while (remaining > 0) {
            val read = input.read(buffer, position, remaining)
            if (read < 0) throw IllegalStateException("Unexpected end of root tar stream")
            position += read
            remaining -= read
        }
    }

    private fun skipFully(input: java.io.InputStream, size: Long) {
        var remaining = size
        while (remaining > 0L) {
            val skipped = input.skip(remaining)
            if (skipped > 0L) {
                remaining -= skipped
                continue
            }
            if (input.read() < 0) throw IllegalStateException("Unexpected end of root tar stream")
            remaining--
        }
    }

    private fun sha256(file: File): String {
        val digest = MessageDigest.getInstance("SHA-256")
        FileInputStream(file).use { input ->
            val buffer = ByteArray(BUFFER_BYTES)
            while (true) {
                val read = input.read(buffer)
                if (read < 0) break
                digest.update(buffer, 0, read)
            }
        }
        return digest.digest().toHex()
    }

    private fun moveIntoPlace(stagedOutput: File, output: File) {
        runCatching {
            Files.move(
                stagedOutput.toPath(),
                output.toPath(),
                StandardCopyOption.REPLACE_EXISTING,
                StandardCopyOption.ATOMIC_MOVE,
            )
        }.getOrElse {
            Files.move(
                stagedOutput.toPath(),
                output.toPath(),
                StandardCopyOption.REPLACE_EXISTING,
            )
        }
    }

    private fun addSource(
        zip: ZipOutputStream,
        source: AppBackupArchiveSource,
        progress: ArchiveProgressCounter,
    ): Int {
        if (!source.file.exists()) return 0
        if (source.file.isFile) {
            addFile(zip, source.file, source.entryName, progress)
            return 1
        }
        var count = 0
        source.file.walkTopDown().filter { it.isFile }.forEach { file ->
            val relative = file.relativeTo(source.file).invariantSeparatorsPath
            val entry = if (relative.isBlank()) source.entryName else source.entryName.trimEnd('/') + "/" + relative
            addFile(zip, file, entry, progress)
            count++
        }
        return count
    }

    private fun addFile(
        zip: ZipOutputStream,
        file: File,
        entryName: String,
        progress: ArchiveProgressCounter,
    ) {
        ZipEntry(entryName.replace('\\', '/')).also { entry ->
            entry.time = file.lastModified()
            zip.putNextEntry(entry)
            FileInputStream(file).use { input ->
                val buffer = ByteArray(BUFFER_BYTES)
                while (true) {
                    val read = input.read(buffer)
                    if (read < 0) break
                    zip.write(buffer, 0, read)
                    progress.add(read.toLong())
                }
            }
            zip.closeEntry()
        }
    }

    private class ArchiveProgressCounter(
        private val totalBytes: Long,
        private val onProgress: ((Long, Long) -> Unit)?,
    ) {
        private var processedBytes = 0L
        private var lastReportNanos = 0L
        private var lastReportBytes = -1L

        fun add(bytes: Long) {
            processedBytes += bytes
            val callback = onProgress ?: return
            val now = System.nanoTime()
            if (lastReportNanos == 0L ||
                now - lastReportNanos >= 500_000_000L ||
                processedBytes - lastReportBytes >= 1_048_576L
            ) {
                callback(processedBytes, totalBytes)
                lastReportNanos = now
                lastReportBytes = processedBytes
            }
        }

        fun finish() {
            onProgress?.invoke(processedBytes, totalBytes)
        }
    }

    private fun localSourceByteSize(file: File): Long =
        if (!file.exists()) 0L
        else if (file.isFile) file.length().coerceAtLeast(0L)
        else file.walkTopDown().filter { it.isFile }.sumOf { it.length().coerceAtLeast(0L) }

    private fun standardKey(): SecretKey {
        val keyStore = KeyStore.getInstance(ANDROID_KEYSTORE).apply { load(null) }
        keyStore.getKey(KEY_ALIAS, null)?.let { return it as SecretKey }
        val generator = KeyGenerator.getInstance("AES", ANDROID_KEYSTORE)
        generator.init(
            android.security.keystore.KeyGenParameterSpec.Builder(
                KEY_ALIAS,
                android.security.keystore.KeyProperties.PURPOSE_ENCRYPT or
                    android.security.keystore.KeyProperties.PURPOSE_DECRYPT,
            )
                .setKeySize(KEY_BITS)
                .setBlockModes(android.security.keystore.KeyProperties.BLOCK_MODE_GCM)
                .setEncryptionPaddings(android.security.keystore.KeyProperties.ENCRYPTION_PADDING_NONE)
                .build(),
        )
        return generator.generateKey()
    }

    private fun buildHeader(mode: EncryptionMode, salt: ByteArray, iv: ByteArray): ByteArray {
        val buffer = java.io.ByteArrayOutputStream()
        DataOutputStream(buffer).use { out ->
            out.write(MAGIC)
            out.writeInt(FORMAT_VERSION)
            out.writeByte(mode.ordinal)
            out.writeByte(salt.size)
            out.write(salt)
            out.writeByte(iv.size)
            out.write(iv)
        }
        return buffer.toByteArray()
    }

    private data class EncryptionMaterial(
        val mode: EncryptionMode,
        val key: SecretKey,
        val salt: ByteArray,
    )

    private class DigestOutputStream(
        output: java.io.OutputStream,
        private val digest: MessageDigest,
    ) : FilterOutputStream(output) {
        override fun write(b: Int) {
            digest.update(b.toByte())
            super.write(b)
        }
        override fun write(b: ByteArray, off: Int, len: Int) {
            digest.update(b, off, len)
            super.write(b, off, len)
        }
    }

    private fun ByteArray.toHex(): String =
        joinToString("") { "%02x".format(it) }

    companion object {
        private const val TAR_BLOCK_BYTES = 512
        private val MAGIC = byteArrayOf(
            'B'.code.toByte(), 'A'.code.toByte(), 'R'.code.toByte(), 'E'.code.toByte(),
            'E'.code.toByte(), 'N'.code.toByte(), 'C'.code.toByte(), '1'.code.toByte(),
        )
        private const val FORMAT_VERSION = 1
        private const val ANDROID_KEYSTORE = "AndroidKeyStore"
        private const val KEY_ALIAS = "bare_backup_payload"
        private const val TRANSFORMATION = "AES/GCM/NoPadding"
        private const val GCM_IV_BYTES = 12
        private const val GCM_TAG_BITS = 128
        private const val SALT_BYTES = 16
        private const val PBKDF2_ITERATIONS = 310_000
        private const val KEY_BITS = 256
        private const val BUFFER_BYTES = 1024 * 1024
    }
}

data class AppBackupArchiveSource(
    val file: File,
    val entryName: String,
)