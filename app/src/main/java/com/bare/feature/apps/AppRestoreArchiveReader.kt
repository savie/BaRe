package com.bare.feature.apps

import android.content.Context
import com.bare.feature.settings.EncryptionPasswordStore
import java.io.BufferedInputStream
import java.io.DataInputStream
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.security.KeyStore
import java.security.MessageDigest
import java.util.zip.ZipInputStream
import com.github.luben.zstd.ZstdInputStream
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream
import javax.crypto.Cipher
import javax.crypto.CipherInputStream
import javax.crypto.SecretKey
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.PBEKeySpec
import javax.crypto.spec.SecretKeySpec

class AppRestoreArchiveReader(private val context: Context) {
    fun extract(
        archive: File,
        destination: File,
        expectedSha256: String?,
        password: CharArray?,
        part: AppBackupPart,
        onProgress: (Long, Long) -> Unit = { _, _ -> },
    ) {
        require(archive.isFile) { "Backup artifact is missing: ${archive.name}" }
        expectedSha256?.let { expected ->
            val actual = sha256(archive)
            require(actual.equals(expected, ignoreCase = true)) {
                "Backup artifact hash mismatch: ${archive.name}"
            }
        }

        val total = archive.length()
        FileInputStream(archive).use { raw ->
            val input = BufferedInputStream(raw, BUFFER_BYTES)
            val header = readHeader(input)
            val cipher = Cipher.getInstance(TRANSFORMATION)
            val key = when (header.mode) {
                EncryptionMode.STANDARD -> standardKey()
                EncryptionMode.ADVANCED -> {
                    require(password != null && password.isNotEmpty()) {
                        "Advanced backup password is required"
                    }
                    val spec = PBEKeySpec(password, header.salt, PBKDF2_ITERATIONS, KEY_BITS)
                    try {
                        SecretKeySpec(
                            SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256")
                                .generateSecret(spec).encoded,
                            "AES",
                        )
                    } finally {
                        spec.clearPassword()
                        password.fill('\u0000')
                    }
                }
            }
            cipher.init(
                Cipher.DECRYPT_MODE,
                key,
                GCMParameterSpec(GCM_TAG_BITS, header.iv),
            )
            cipher.updateAAD(header.raw)

            CipherInputStream(input, cipher).use { decrypted ->
                when (header.version) {
                    LEGACY_FORMAT_VERSION -> extractZipPayload(decrypted, destination, part, total, onProgress)
                    FORMAT_VERSION -> extractTarZstdPayload(decrypted, destination, part, total, onProgress)
                    else -> error("Unsupported BaRe backup version: ${header.version}")
                }
            }
        }
    }

    private fun readHeader(input: java.io.InputStream): Header {
        val raw = java.io.ByteArrayOutputStream()
        fun readExact(count: Int): ByteArray {
            val bytes = ByteArray(count)
            var offset = 0
            while (offset < count) {
                val read = input.read(bytes, offset, count - offset)
                if (read < 0) error("Unexpected end of backup header")
                raw.write(bytes, offset, read)
                offset += read
            }
            return bytes
        }

        val magic = readExact(MAGIC.size)
        require(magic.contentEquals(MAGIC)) { "Invalid BaRe backup artifact" }
        val version = DataInputStream(java.io.ByteArrayInputStream(readExact(4))).readInt()
        require(version == FORMAT_VERSION) { "Unsupported BaRe backup version: $version" }
        val mode = when (readExact(1)[0].toInt()) {
            EncryptionMode.STANDARD.ordinal -> EncryptionMode.STANDARD
            EncryptionMode.ADVANCED.ordinal -> EncryptionMode.ADVANCED
            else -> error("Unsupported backup encryption mode")
        }
        val saltSize = readExact(1)[0].toInt() and 0xff
        val salt = readExact(saltSize)
        val ivSize = readExact(1)[0].toInt() and 0xff
        require(ivSize == GCM_IV_BYTES) { "Unsupported GCM IV length: $ivSize" }
        val iv = readExact(ivSize)
        return Header(raw.toByteArray(), version, mode, salt, iv)
    }

    private fun extractZipPayload(
        decrypted: java.io.InputStream,
        destination: File,
        part: AppBackupPart,
        total: Long,
        onProgress: (Long, Long) -> Unit,
    ) {
        ZipInputStream(BufferedInputStream(decrypted, BUFFER_BYTES)).use { zip ->
            while (true) {
                val entry = zip.nextEntry ?: break
                extractEntry(entry.name, entry.isDirectory, entry.time, zip, destination, part, total, onProgress)
                zip.closeEntry()
            }
        }
    }

    private fun extractTarZstdPayload(
        decrypted: java.io.InputStream,
        destination: File,
        part: AppBackupPart,
        total: Long,
        onProgress: (Long, Long) -> Unit,
    ) {
        ZstdInputStream(BufferedInputStream(decrypted, BUFFER_BYTES)).use { zstd ->
            TarArchiveInputStream(BufferedInputStream(zstd, BUFFER_BYTES)).use { tar ->
                while (true) {
                    val entry = tar.nextTarEntry ?: break
                    extractEntry(
                        entry.name,
                        entry.isDirectory,
                        entry.modTime.time,
                        tar,
                        destination,
                        part,
                        total,
                        onProgress,
                    )
                }
            }
        }
    }

    private fun extractEntry(
        name: String,
        directory: Boolean,
        time: Long,
        input: java.io.InputStream,
        destination: File,
        part: AppBackupPart,
        total: Long,
        onProgress: (Long, Long) -> Unit,
    ) {
        val normalized = normalizeEntry(name)
        val prefix = part.directoryNameForRestore() + "/"
        if (!normalized.startsWith(prefix)) return
        val relative = normalized.removePrefix(prefix)
        if (relative.isBlank()) return
        val target = safeChild(destination, relative)
        if (directory) {
            target.mkdirs()
            return
        }

        target.parentFile?.mkdirs()
        FileOutputStream(target).use { output ->
            val buffer = ByteArray(BUFFER_BYTES)
            var processed = 0L
            while (true) {
                val read = input.read(buffer)
                if (read < 0) break
                output.write(buffer, 0, read)
                processed += read
                onProgress(processed, total)
            }
        }
        if (time > 0L) target.setLastModified(time)
    }

    private fun AppBackupPart.directoryNameForRestore(): String = when (this) {
        AppBackupPart.APK -> "apk"
        AppBackupPart.DATA -> "data"
        AppBackupPart.EXTERNAL_DATA -> "external-data"
        AppBackupPart.MEDIA -> "media"
    }

    private fun normalizeEntry(value: String): String {
        val normalized = value.replace('\\', '/').trimStart('/')
        require(!normalized.split('/').any { it == ".." }) { "Unsafe backup entry" }
        return normalized
    }

    private fun safeChild(root: File, relative: String): File {
        val base = root.canonicalFile
        val child = File(base, relative).canonicalFile
        require(child.path == base.path || child.path.startsWith(base.path + File.separator)) {
            "Unsafe restore destination"
        }
        return child
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
        return digest.digest().joinToString("") { "%02x".format(it) }
    }

    private fun standardKey(): SecretKey {
        val keyStore = KeyStore.getInstance(ANDROID_KEYSTORE).apply { load(null) }
        return keyStore.getKey(KEY_ALIAS, null) as? SecretKey
            ?: error("BaRe backup encryption key is unavailable")
    }

    private data class Header(
        val raw: ByteArray,
        val mode: EncryptionMode,
        val salt: ByteArray,
        val iv: ByteArray,
    )

    companion object {
        private val MAGIC = byteArrayOf(
            'B'.code.toByte(), 'A'.code.toByte(), 'R'.code.toByte(), 'E'.code.toByte(),
            'E'.code.toByte(), 'N'.code.toByte(), 'C'.code.toByte(), '1'.code.toByte(),
        )
        private const val LEGACY_FORMAT_VERSION = 1\n        private const val FORMAT_VERSION = 2
        private const val ANDROID_KEYSTORE = "AndroidKeyStore"
        private const val KEY_ALIAS = "bare_backup_payload"
        private const val TRANSFORMATION = "AES/GCM/NoPadding"
        private const val GCM_IV_BYTES = 12
        private const val GCM_TAG_BITS = 128
        private const val PBKDF2_ITERATIONS = 310_000
        private const val KEY_BITS = 256
        private const val BUFFER_BYTES = 1024 * 1024
    }
}
