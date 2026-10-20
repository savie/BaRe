package com.swiftapps.sba

import androidx.test.platform.app.InstrumentationRegistry
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener
import java.io.File
import java.io.IOException

/**
 * Test-only JNI declarations for the exact exported names in SwiftBackup 5.1.0 (620).
 * The reference ELF is loaded from generated test assets only when the caller supplies
 * -PswiftbackupReferenceApk=... to Gradle.
 */
class SbaLibaegisCryptoNative private constructor() {
    external fun isAvailable(): Boolean

    external fun decryptAegis256ChunkedEntryFdRaw(
        fd: Int,
        storedSize: Long,
        outputFd: Int,
        key: ByteArray,
        nonceSeed: ByteArray,
        metadata: ByteArray,
        entryOrder: Long,
        compressedSize: Long,
        chunkSize: Int,
        progress: SbaNativeProgressListener?,
    ): LongArray

    external fun decryptAegis128X2ChunkedEntryFdRaw(
        fd: Int,
        storedSize: Long,
        outputFd: Int,
        key: ByteArray,
        nonceSeed: ByteArray,
        metadata: ByteArray,
        entryOrder: Long,
        compressedSize: Long,
        chunkSize: Int,
        progress: SbaNativeProgressListener?,
    ): LongArray

    companion object {
        fun loadIfPresent(): SbaLibaegisCryptoNative? {
            val instrumentation = InstrumentationRegistry.getInstrumentation()
            val bytes = try {
                instrumentation.context.assets.open("reference/libsba_archive.so").use { it.readBytes() }
            } catch (_: IOException) {
                return null
            }
            val library = File(instrumentation.targetContext.cacheDir, "libref_archive.so")
            if (library.exists() && !library.delete()) throw IOException("Unable to replace reference oracle library")
            library.writeBytes(bytes)
            System.load(library.absolutePath)
            return SbaLibaegisCryptoNative()
        }
    }
}
