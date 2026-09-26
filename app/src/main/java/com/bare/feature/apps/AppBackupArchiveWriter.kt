package com.bare.feature.apps

import android.content.Context
import java.io.DataOutputStream
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.FilterOutputStream
import java.nio.file.Files
import java.nio.file.StandardCopyOption
import java.security.KeyStore
import java.security.MessageDigest
import java.security.SecureRandom
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
    fun write(
        output: File,
        sources: List<AppBackupArchiveSource>,
        password: CharArray?,
        onProgress: ((processedBytes: Long, totalBytes: Long) -> Unit)? = null,
    ): AppBackupArchiveResult {
        require(sources.isNotEmpty()) { "No backup files to archive" }
        output.parentFile?.mkdirs()

        val strategy = com.bare.feature.settings.EncryptionPasswordStore(context).loadStrategy()
        val material = when (strategy) {
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
                    password.fill('\u0000')
                }
                EncryptionMaterial(EncryptionMode.ADVANCED, SecretKeySpec(key, "AES"), salt)
            }
        }

        val cipher = Cipher.getInstance(TRANSFORMATION)
        val iv = if (material.mode == EncryptionMode.STANDARD) {
            // AndroidKeyStore GCM keys generate the encryption IV internally.
            // Supplying a caller IV is rejected by the Keystore provider.
            cipher.init(Cipher.ENCRYPT_MODE, material.key)
            cipher.iv
        } else {
            ByteArray(GCM_IV_BYTES).also(SecureRandom()::nextBytes).also { generatedIv ->
                cipher.init(
                    Cipher.ENCRYPT_MODE,
                    material.key,
                    GCMParameterSpec(GCM_TAG_BITS, generatedIv),
                )
            }
        }
        require(iv.size == GCM_IV_BYTES) { "Unsupported GCM IV length: " + iv.size }
        val header = buildHeader(material.mode, material.salt, iv)
        cipher.updateAAD(header)

        val digest = MessageDigest.getInstance("SHA-256")
        var fileCount = 0
        val progress = ArchiveProgressCounter(
            totalBytes = sources.sumOf { sourceByteSize(it.file) },
            onProgress = onProgress,
        )
        val stagedOutput = File(
            output.parentFile ?: throw IllegalStateException("Backup archive parent directory is missing"),
            ".${output.name}.${java.util.UUID.randomUUID()}.partial",
        )

        try {
            FileOutputStream(stagedOutput).use { raw ->
                val digesting = DigestOutputStream(raw, digest)
                digesting.write(header)
                CipherOutputStream(digesting, cipher).use { encrypted ->
                    ZipOutputStream(encrypted).use { zip ->
                        for (source in sources) {
                            fileCount += addSource(zip, source, progress)
                        }
                        progress.finish()
                    }
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
            sha256 = digest.digest().toHex(),
            encryption = material.mode,
        )
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

    private fun sourceByteSize(file: File): Long =
        if (!file.exists()) 0L
        else if (file.isFile) file.length().coerceAtLeast(0L)
        else file.walkTopDown().filter { it.isFile }.sumOf { it.length().coerceAtLeast(0L) }

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