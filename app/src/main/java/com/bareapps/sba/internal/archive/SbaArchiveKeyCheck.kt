package com.bareapps.sba.internal.archive

import com.bareapps.sba.SbaArgon2idPortable
import java.io.IOException
import java.nio.CharBuffer
import java.nio.charset.CodingErrorAction
import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import java.util.Arrays

/** Implements the reference SBA1 key-check digest; it does not decrypt payload chunks. */
internal object SbaArchiveKeyCheck {
    fun verify(info: SbaArchiveInfo, password: CharArray): Boolean {
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
        return try {
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
            MessageDigest.isEqual(info.keyCheck, expectedCheck)
        } finally {
            Arrays.fill(encoded, 0)
            Arrays.fill(key, 0)
            Arrays.fill(fullCheck, 0)
            Arrays.fill(expectedCheck, 0)
        }
    }
}
