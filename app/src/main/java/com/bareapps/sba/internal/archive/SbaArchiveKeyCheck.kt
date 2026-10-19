package com.bareapps.sba.internal.archive

import com.bareapps.sba.SbaArgon2idPortable
import java.io.IOException
import java.nio.CharBuffer
import java.nio.charset.CodingErrorAction
import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import java.util.Arrays
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec

/** Implements the reference SBA1 key-check digest; it does not decrypt payload chunks. */
internal object SbaArchiveKeyCheck {
    fun verify(info: SbaArchiveInfo, password: CharArray, archivePath: String? = null): Boolean {
        val key = deriveVerifiedKey(info, password, archivePath) ?: return false
        Arrays.fill(key, 0)
        return true
    }

    /** Returns key bytes only after both the header key-check and, for v2, index MAC pass. */
    fun deriveVerifiedKey(
        info: SbaArchiveInfo,
        password: CharArray,
        archivePath: String? = null,
    ): ByteArray? {
        if (!info.isEncrypted) throw IOException("SBA archive is not encrypted")
        if (info.encryptionMethod != 4 && info.encryptionMethod != 5) {
            throw IOException("Password verification is not implemented for this SBA encryption method")
        }
        if (password.isEmpty()) throw IOException("SBA encryption password must not be empty")
        val passwordCopy = password.copyOf()
        val encoded = try {
            val buffer = StandardCharsets.UTF_8.newEncoder()
                .onMalformedInput(CodingErrorAction.REPORT)
                .onUnmappableCharacter(CodingErrorAction.REPORT)
                .encode(CharBuffer.wrap(passwordCopy))
            ByteArray(buffer.remaining()).also { buffer.get(it) }
        } catch (failure: Exception) {
            throw IOException("SBA password is not valid UTF-8", failure)
        } finally {
            Arrays.fill(passwordCopy, '\u0000')
        }
        var key = ByteArray(0)
        var fullCheck = ByteArray(0)
        var expectedCheck = ByteArray(0)
        var retainKey = false
        try {
            val keyLength = if (info.encryptionMethod == 4) 32 else 16
            key = SbaArgon2idPortable.deriveArgon2id(
                encoded, info.salt, info.kdfIterations, info.kdfMemoryKiB,
                info.kdfParallelism, keyLength,
            )
            val digest = MessageDigest.getInstance("SHA-256")
            digest.update(
                (if (info.encryptionMethod == 4) "SBA1-AEGIS256-key-check-v1"
                else "SBA1-AEGIS128X2-key-check-v1").toByteArray(StandardCharsets.UTF_8)
            )
            digest.update(info.salt)
            digest.update(info.nonceSeed)
            digest.update(key)
            fullCheck = digest.digest()
            expectedCheck = fullCheck.copyOf(16)
            if (!MessageDigest.isEqual(info.keyCheck, expectedCheck)) return null
            if (info.version >= 2) {
                val path = archivePath ?: throw IOException("SBA v2 index MAC verification requires the archive path")
                verifyV2IndexMac(path, info, key)
            }
            retainKey = true
            return key
        } finally {
            Arrays.fill(encoded, 0)
            Arrays.fill(fullCheck, 0)
            Arrays.fill(expectedCheck, 0)
            if (!retainKey) Arrays.fill(key, 0)
        }
    }

    private fun verifyV2IndexMac(path: String, info: SbaArchiveInfo, derivedKey: ByteArray): Boolean {
        if (info.indexMac.size != 32) throw IOException("Invalid SBA v2 index MAC length")
        val secondaryKey = MessageDigest.getInstance("SHA-256").run {
            update("SBA2-index-mac-key-v1".toByteArray(StandardCharsets.UTF_8))
            update(info.salt)
            update(info.nonceSeed)
            update(derivedKey)
            digest()
        }
        var header = ByteArray(0)
        var index = ByteArray(0)
        var actualMac = ByteArray(0)
        return try {
            RandomAccessFile(path, "r").use { file ->
                val headerSize = if (info.version == 1) 96 else 144
                header = ByteArray(headerSize)
                file.seek(0L)
                file.readFully(header)
                Arrays.fill(header, 104, 136, 0.toByte())
                if (info.indexSize > Int.MAX_VALUE) throw IOException("SBA index too large for verification")
                index = ByteArray(info.indexSize.toInt())
                file.seek(info.indexOffset)
                file.readFully(index)
            }
            val mac = Mac.getInstance("HmacSHA256")
            mac.init(SecretKeySpec(secondaryKey, "HmacSHA256"))
            mac.update("SBA2-index-metadata-mac-v1".toByteArray(StandardCharsets.UTF_8))
            mac.update(header)
            mac.update(ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putLong(info.indexOffset).array())
            mac.update(ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putLong(info.indexSize).array())
            mac.update(ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt(info.indexCrc32).array())
            mac.update(index)
            actualMac = mac.doFinal()
            if (!MessageDigest.isEqual(info.indexMac, actualMac)) {
                throw IOException("SBA encrypted index MAC mismatch")
            }
            true
        } finally {
            Arrays.fill(secondaryKey, 0)
            Arrays.fill(header, 0)
            Arrays.fill(index, 0)
            Arrays.fill(actualMac, 0)
        }
    }

}
