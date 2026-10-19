package com.bareapps.sba

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.bareapps.sba.internal.progress.SbaNativeProgressListener
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.IOException
import java.io.InterruptedIOException
import java.io.RandomAccessFile
import java.nio.charset.StandardCharsets
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.junit.Assert.assertThrows

@RunWith(AndroidJUnit4::class)
class SbaAegisChunkCryptoInstrumentedTest {
    @Test
    fun nativeSelfTestsAndBothAegisModesRoundTripPartialFinalChunkAndRejectTampering() {
        val crypto = SbaLibaegisCryptoNative.a
        assertTrue("native AEGIS KAT/protocol self-tests failed", crypto.isAvailable())

        val context = InstrumentationRegistry.getInstrumentation().targetContext
        val directory = File(context.cacheDir, "sba-aegis-instrumented").apply { mkdirs() }
        val input = File.createTempFile("sba-plain-", ".tmp", directory)
        val encrypted = File.createTempFile("sba-encrypted-", ".tmp", directory)
        val decrypted = File.createTempFile("sba-decrypted-", ".tmp", directory)
        val tampered = File.createTempFile("sba-tampered-", ".tmp", directory)
        val failedOutput = File.createTempFile("sba-failed-", ".tmp", directory)
        val chunkSize = 4096
        val plain = ByteArray(chunkSize + 37) { ((it * 17 + 3) and 0xff).toByte() }
        val nonceSeed = ByteArray(16) { (0x40 + it).toByte() }
        val entryName = "data_de".toByteArray(StandardCharsets.UTF_8)

        try {
            FileOutputStream(input).use { it.write(plain) }
            for (method in intArrayOf(4, 5)) {
                val key = ByteArray(if (method == 4) 32 else 16) { (it + 1).toByte() }
                try {
                    FileOutputStream(encrypted, false).use { output ->
                        FileInputStream(input).use { source ->
                            val counts = if (method == 4) {
                                crypto.encryptAegis256ChunkedEntryFdRaw(
                                    source.fd, plain.size.toLong(), output.fd, key, nonceSeed,
                                    entryName, 0L, chunkSize, null,
                                )
                            } else {
                                crypto.encryptAegis128X2ChunkedEntryFdRaw(
                                    source.fd, plain.size.toLong(), output.fd, key, nonceSeed,
                                    entryName, 0L, chunkSize, null,
                                )
                            }
                            output.flush()
                            val expectedStored = plain.size.toLong() + 2L * 16L
                            assertArrayEquals(longArrayOf(expectedStored, plain.size.toLong()), counts)
                        }
                    }
                    val expectedStored = plain.size.toLong() + 2L * 16L
                    assertEquals(expectedStored, encrypted.length())

                    FileOutputStream(decrypted, false).use { output ->
                        FileInputStream(encrypted).use { source ->
                            val counts = if (method == 4) {
                                crypto.decryptAegis256ChunkedEntryFdRaw(
                                    source.fd, expectedStored, output.fd, key, nonceSeed,
                                    entryName, 0L, plain.size.toLong(), chunkSize, null,
                                )
                            } else {
                                crypto.decryptAegis128X2ChunkedEntryFdRaw(
                                    source.fd, expectedStored, output.fd, key, nonceSeed,
                                    entryName, 0L, plain.size.toLong(), chunkSize, null,
                                )
                            }
                            output.flush()
                            assertArrayEquals(longArrayOf(expectedStored, plain.size.toLong()), counts)
                        }
                    }
                    assertArrayEquals(plain, decrypted.readBytes())

                    encrypted.copyTo(tampered, overwrite = true)
                    RandomAccessFile(tampered, "rw").use { file ->
                        file.seek(file.length() - 1L)
                        val last = file.read()
                        file.seek(file.length() - 1L)
                        file.write(last xor 1)
                    }
                    FileOutputStream(failedOutput, false).use { output ->
                        FileInputStream(tampered).use { source ->
                            val failure = assertThrows(IOException::class.java) {
                                if (method == 4) {
                                    crypto.decryptAegis256ChunkedEntryFdRaw(
                                        source.fd, expectedStored, output.fd, key, nonceSeed,
                                        entryName, 0L, plain.size.toLong(), chunkSize, null,
                                    )
                                } else {
                                    crypto.decryptAegis128X2ChunkedEntryFdRaw(
                                        source.fd, expectedStored, output.fd, key, nonceSeed,
                                        entryName, 0L, plain.size.toLong(), chunkSize, null,
                                    )
                                }
                            }
                            assertTrue(failure.message.orEmpty().contains("authentication failed", true))
                        }
                    }

                    val wrongKey = key.copyOf().also { it[0] = (it[0].toInt() xor 1).toByte() }
                    try {
                        FileOutputStream(failedOutput, false).use { output ->
                            FileInputStream(encrypted).use { source ->
                                val failure = assertThrows(IOException::class.java) {
                                    if (method == 4) {
                                        crypto.decryptAegis256ChunkedEntryFdRaw(
                                            source.fd, expectedStored, output.fd, wrongKey, nonceSeed,
                                            entryName, 0L, plain.size.toLong(), chunkSize, null,
                                        )
                                    } else {
                                        crypto.decryptAegis128X2ChunkedEntryFdRaw(
                                            source.fd, expectedStored, output.fd, wrongKey, nonceSeed,
                                            entryName, 0L, plain.size.toLong(), chunkSize, null,
                                        )
                                    }
                                }
                                assertTrue(failure.message.orEmpty().contains("authentication failed", true))
                            }
                        }
                    } finally {
                        java.util.Arrays.fill(wrongKey, 0)
                    }

                    val cancelled = object : SbaNativeProgressListener {
                        override fun isCancellationRequested(): Boolean = true
                        override fun onProgress(processed: Long, total: Long) = Unit
                    }
                    FileOutputStream(failedOutput, false).use { output ->
                        FileInputStream(input).use { source ->
                            assertThrows(InterruptedIOException::class.java) {
                                if (method == 4) {
                                    crypto.encryptAegis256ChunkedEntryFdRaw(
                                        source.fd, plain.size.toLong(), output.fd, key, nonceSeed,
                                        entryName, 0L, chunkSize, cancelled,
                                    )
                                } else {
                                    crypto.encryptAegis128X2ChunkedEntryFdRaw(
                                        source.fd, plain.size.toLong(), output.fd, key, nonceSeed,
                                        entryName, 0L, chunkSize, cancelled,
                                    )
                                }
                            }
                        }
                    }
                } finally {
                    java.util.Arrays.fill(key, 0)
                }
            }
        } finally {
            java.util.Arrays.fill(nonceSeed, 0)
            java.util.Arrays.fill(plain, 0)
            listOf(input, encrypted, decrypted, tampered, failedOutput).forEach { it.delete() }
            directory.delete()
        }
    }
}
