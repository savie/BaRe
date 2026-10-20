package com.bareapps.sba

import android.os.ParcelFileDescriptor
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.swiftapps.sba.SbaLibaegisCryptoNative as ReferenceCrypto
import com.swiftapps.sba.internal.progress.NeverCancelProgress
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.nio.charset.StandardCharsets
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class SbaAegisReferenceInteropInstrumentedTest {
    @Test
    fun rewriteCiphertextAuthenticatesInReferenceDecryptorForBothAegisModes() {
        val reference = ReferenceCrypto.loadIfPresent()
        assumeTrue(
            "Provide -PswiftbackupReferenceApk=/path/to/5.1.0 (620).apk to run the reference-native oracle",
            reference != null,
        )
        val oracle = reference!!
        assertTrue("reference AEGIS JNI library did not initialize", oracle.isAvailable())

        val rewrite = SbaLibaegisCryptoNative.a
        assertTrue("rewrite AEGIS self-tests failed", rewrite.isAvailable())
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        val directory = File(context.cacheDir, "sba-aegis-reference-oracle").apply { mkdirs() }
        val input = File.createTempFile("sba-oracle-in-", ".tmp", directory)
        val encrypted = File.createTempFile("sba-oracle-enc-", ".tmp", directory)
        val decrypted = File.createTempFile("sba-oracle-out-", ".tmp", directory)
        val chunkSize = 4096
        val plain = ByteArray(chunkSize * 2 + 811) { ((it * 31 + 17) and 0xff).toByte() }
        val nonceSeed = ByteArray(16) { (0x60 + it).toByte() }
        val entryName = "apps/data_de".toByteArray(StandardCharsets.UTF_8)
        val entryOrder = 2L
        val progress = NeverCancelProgress()

        try {
            FileOutputStream(input).use { it.write(plain) }
            for (method in intArrayOf(4, 5)) {
                val key = ByteArray(if (method == 4) 32 else 16) { (it * 7 + 5).toByte() }
                try {
                    FileInputStream(input).use { source ->
                        FileOutputStream(encrypted, false).use { output ->
                            val counts = if (method == 4) {
                                rewrite.encryptAegis256ChunkedEntryFdRaw(
                                    source.fd, plain.size.toLong(), output.fd, key, nonceSeed,
                                    entryName, entryOrder, chunkSize, null,
                                )
                            } else {
                                rewrite.encryptAegis128X2ChunkedEntryFdRaw(
                                    source.fd, plain.size.toLong(), output.fd, key, nonceSeed,
                                    entryName, entryOrder, chunkSize, null,
                                )
                            }
                            output.flush()
                            val chunkCount = (plain.size.toLong() + chunkSize - 1L) / chunkSize
                            val expectedStored = plain.size.toLong() + chunkCount * 16L
                            assertArrayEquals(longArrayOf(expectedStored, plain.size.toLong()), counts)
                            assertEquals(expectedStored, encrypted.length())
                        }
                    }

                    val storedSize = encrypted.length()
                    ParcelFileDescriptor.open(encrypted, ParcelFileDescriptor.MODE_READ_ONLY).use { inputPfd ->
                        ParcelFileDescriptor.open(
                            decrypted,
                            ParcelFileDescriptor.MODE_READ_WRITE or
                                ParcelFileDescriptor.MODE_CREATE or
                                ParcelFileDescriptor.MODE_TRUNCATE,
                        ).use { outputPfd ->
                            val inputFd = inputPfd.detachFd()
                            val outputFd = outputPfd.detachFd()
                            try {
                                val counts = if (method == 4) {
                                    oracle.decryptAegis256ChunkedEntryFdRaw(
                                        inputFd, storedSize, outputFd, key, nonceSeed, entryName,
                                        entryOrder, plain.size.toLong(), chunkSize, progress,
                                    )
                                } else {
                                    oracle.decryptAegis128X2ChunkedEntryFdRaw(
                                        inputFd, storedSize, outputFd, key, nonceSeed, entryName,
                                        entryOrder, plain.size.toLong(), chunkSize, progress,
                                    )
                                }
                                assertArrayEquals(longArrayOf(storedSize, plain.size.toLong()), counts)
                            } finally {
                                ParcelFileDescriptor.adoptFd(outputFd).close()
                                ParcelFileDescriptor.adoptFd(inputFd).close()
                            }
                        }
                    }
                    assertArrayEquals(plain, decrypted.readBytes())
                } finally {
                    java.util.Arrays.fill(key, 0)
                }
            }
        } finally {
            java.util.Arrays.fill(plain, 0)
            java.util.Arrays.fill(nonceSeed, 0)
            listOf(input, encrypted, decrypted).forEach { it.delete() }
            directory.delete()
        }
    }
}
