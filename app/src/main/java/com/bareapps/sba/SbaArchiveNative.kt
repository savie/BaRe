package com.bareapps.sba

import com.bareapps.sba.internal.progress.SbaNativeProgressListener

/** Target-package JNI declaration; native implementation must be rebuilt/adapted to these descriptors. */
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
        init { System.loadLibrary("sba_archive") }
    }
}
