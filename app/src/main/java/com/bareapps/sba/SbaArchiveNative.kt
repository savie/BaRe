package com.bareapps.sba

import com.bareapps.sba.internal.archive.SbaArchiveInfo
import com.bareapps.sba.internal.archive.SbaArchiveReader
import com.bareapps.sba.internal.progress.SbaNativeProgressListener
import java.io.FileInputStream
import java.io.IOException

/** Native SBA v1 creation entry point and independent archive-info/restore facade. */
class SbaArchiveNative private constructor() {
    external fun createArchive(
        mode: Int,
        outputPath: String,
        metadata: ByteArray,
        sourcePaths: Array<String>,
        entryNames: Array<String>,
        entryModes: IntArray,
        includePaths: Array<Array<String>>,
        excludePaths: Array<Array<String>>,
        option0: Int,
        option1: Int,
        option2: Int,
        option3: Int,
        option4: Int,
        option5: Int,
        option6: Int,
        option7: Int,
        option8: Int,
        option9: Int,
        key0: ByteArray?,
        key1: ByteArray?,
        key2: ByteArray?,
        key3: ByteArray?,
        progress: SbaNativeProgressListener?,
    ): LongArray

    companion object {
        @JvmField val a = SbaArchiveNative()

        @JvmStatic
        fun isSbaFile(path: String): Boolean = try {
            FileInputStream(path).use { input ->
                val magic = ByteArray(4)
                var read = 0
                while (read < magic.size) {
                    val count = input.read(magic, read, magic.size - read)
                    if (count < 0) return false
                    read += count
                }
                magic.contentEquals("SBA1".toByteArray(Charsets.US_ASCII))
            }
        } catch (_: IOException) {
            false
        }

        @JvmStatic
        @Throws(IOException::class)
        fun readArchiveInfo(path: String): SbaArchiveInfo = SbaArchiveReader.read(path)

        @JvmStatic
        @Throws(IOException::class)
        fun extractEntry(
            path: String,
            entryName: String,
            destination: String,
            flags: Int,
            includes: Array<String>,
            progress: SbaNativeProgressListener?,
        ): Array<String> {
            val info = SbaArchiveReader.read(path)
            val entry = info.entries.firstOrNull { it.name == entryName }
                ?: throw IOException("SBA entry not found: $entryName")
            FileInputStream(path).use { archive ->
                return if (info.compressionMethod == 1) {
                    SbaBareTarNative.instance.extractTarZstdFromDescriptor(
                        archive.fd, entry.payloadOffset, entry.compressedSize,
                        destination, flags, includes, progress,
                    )
                } else {
                    SbaBareTarNative.instance.extractTarFromDescriptor(
                        archive.fd, entry.payloadOffset, destination, flags, includes, progress,
                    )
                }
            }
        }

        init { System.loadLibrary("sba_archive") }
    }
}
