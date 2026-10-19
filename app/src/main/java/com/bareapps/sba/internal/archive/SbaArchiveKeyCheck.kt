package com.bareapps.sba.internal.archive

import com.bareapps.sba.SbaArgon2idPortable
import java.io.IOException
import java.nio.CharBuffer
import java.nio.charset.CodingErrorAction
import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import java.util.Arrays
import java.util.zip.CRC32
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec

/** Implements the reference SBA1 key-check digest; it does not decrypt payload chunks. */
internal object SbaArchiveKeyCheck {
    data class CreatedKeyMaterial(val key: ByteArray, val keyCheck: ByteArray)

    fun deriveForCreation(
        encryptionMethod: Int,
        password: CharArray,
        salt: ByteArray,
        nonceSeed: ByteArray,
        iterations: Int = 3,
        memoryKiB: Int = 16384,
        parallelism: Int = 1,
    ): CreatedKeyMaterial {
        if (encryptionMethod != 4 && encryptionMethod != 5) {
            throw IOException("Unsupported SBA AEGIS encryption method")
        }
        if (salt.size != 16 || nonceSeed.size != 16) throw IOException("SBA salt and nonce seed must be 16 bytes")
        if (password.isEmpty()) throw IOException("SBA encryption password must not be empty")
        val passwordCopy = password.copyOf()
        val encoded = try {
            val buffer = StandardCharsets.UTF_8.newEncoder()
                .onMalformedInput(CodingErrorAction.REPORT)
                .onUnmappableCharacter(CodingErrorAction.REPORT)
                .encode(CharBuffer.wrap(passwordCopy))
            ByteArray(buffer.remaining()).also {
                buffer.get(it)
                if (buffer.hasArray()) Arrays.fill(buffer.array(), 0.toByte())
            }
        } catch (failure: Exception) {
            throw IOException("SBA password is not valid UTF-8", failure)
        } finally {
            Arrays.fill(passwordCopy, '\u0000')
        }
        var key = ByteArray(0)
        try {
            key = SbaArgon2idPortable.deriveArgon2id(
                encoded, salt, iterations, memoryKiB, parallelism,
                if (encryptionMethod == 4) 32 else 16,
            )
            val digest = MessageDigest.getInstance("SHA-256")
            digest.update(
                (if (encryptionMethod == 4) "SBA1-AEGIS256-key-check-v1"
                else "SBA1-AEGIS128X2-key-check-v1").toByteArray(StandardCharsets.UTF_8)
            )
            digest.update(salt)
            digest.update(nonceSeed)
            digest.update(key)
            val fullCheck = digest.digest()
            return try {
                CreatedKeyMaterial(key, fullCheck.copyOf(16))
            } finally {
                Arrays.fill(fullCheck, 0)
            }
        } catch (failure: Throwable) {
            Arrays.fill(key, 0)
            throw failure
        } finally {
            Arrays.fill(encoded, 0)
        }
    }

    fun verify(info: SbaArchiveInfo, password: CharArray, archivePath: String? = null): Boolean {
        val key = deriveVerifiedKey(info, password, archivePath) ?: return false
        Arrays.fill(key, 0)
        return true
    }

    /** Validate caller-supplied key material against the archive before using it. */
    fun verifyProvidedKey(info: SbaArchiveInfo, key: ByteArray, archivePath: String) {
        if (!info.isEncrypted || info.encryptionMethod !in 4..5) {
            throw IOException("Archive does not use a supported SBA AEGIS encryption method")
        }
        val expectedLength = if (info.encryptionMethod == 4) 32 else 16
        if (key.size != expectedLength) throw IOException("Invalid SBA AEGIS key length")
        val fullCheck = MessageDigest.getInstance("SHA-256").run {
            update((if (info.encryptionMethod == 4) "SBA1-AEGIS256-key-check-v1"
                else "SBA1-AEGIS128X2-key-check-v1").toByteArray(StandardCharsets.UTF_8))
            update(info.salt)
            update(info.nonceSeed)
            update(key)
            digest()
        }
        val expectedCheck = fullCheck.copyOf(16)
        try {
            if (!MessageDigest.isEqual(info.keyCheck, expectedCheck)) {
                throw IOException("SBA supplied key does not match the archive key-check")
            }
            if (info.version >= 2) verifyV2IndexMac(archivePath, info, key)
        } finally {
            Arrays.fill(fullCheck, 0)
            Arrays.fill(expectedCheck, 0)
        }
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
            ByteArray(buffer.remaining()).also {
                buffer.get(it)
                if (buffer.hasArray()) Arrays.fill(buffer.array(), 0.toByte())
            }
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
        var storedHeaderMac = ByteArray(0)
        var footer = ByteArray(0)
        var index = ByteArray(0)
        var actualMac = ByteArray(0)
        return try {
            RandomAccessFile(path, "r").use { file ->
                if (file.length() != info.fileSize) throw IOException("SBA archive changed during index MAC verification")
                val headerSize = if (info.version == 1) 96 else 144
                header = ByteArray(headerSize)
                file.seek(0L)
                file.readFully(header)
                storedHeaderMac = header.copyOfRange(104, 136)
                if (!MessageDigest.isEqual(info.indexMac, storedHeaderMac)) {
                    throw IOException("SBA encrypted index MAC field changed during verification")
                }
                Arrays.fill(header, 104, 136, 0.toByte())

                footer = ByteArray(32)
                file.seek(info.fileSize - 32L)
                file.readFully(footer)
                val footerBuffer = ByteBuffer.wrap(footer).order(ByteOrder.BIG_ENDIAN)
                val footerMagic = ByteArray(4).also { footerBuffer.get(it) }
                if (!footerMagic.contentEquals("SAF1".toByteArray(StandardCharsets.US_ASCII)) ||
                    (footerBuffer.short.toInt() and 0xffff) != 32 ||
                    (footerBuffer.short.toInt() and 0xffff) != info.version) {
                    throw IOException("SBA footer changed during index MAC verification")
                }
                val footerOffset = footerBuffer.long
                val footerSize = footerBuffer.long
                val footerIndexCrc = footerBuffer.int
                val footerCrc = footerBuffer.int
                val actualFooterCrc = CRC32().apply { update(footer, 0, 28) }.value.toInt()
                if (footerOffset != info.indexOffset || footerSize != info.indexSize ||
                    footerIndexCrc != info.indexCrc32 || footerCrc != info.footerCrc32 ||
                    footerCrc != actualFooterCrc || footerOffset + footerSize != info.fileSize - 32L) {
                    throw IOException("SBA footer changed during index MAC verification")
                }

                if (info.indexSize > Int.MAX_VALUE) throw IOException("SBA index too large for verification")
                index = ByteArray(info.indexSize.toInt())
                file.seek(info.indexOffset)
                file.readFully(index)
                val actualIndexCrc = CRC32().apply { update(index) }.value.toInt()
                if (actualIndexCrc != info.indexCrc32) {
                    throw IOException("SBA index changed during MAC verification")
                }
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
            Arrays.fill(storedHeaderMac, 0)
            Arrays.fill(footer, 0)
            Arrays.fill(index, 0)
            Arrays.fill(actualMac, 0)
        }
    }

}
