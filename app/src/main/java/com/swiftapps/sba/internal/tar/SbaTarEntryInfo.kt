package com.swiftapps.sba.internal.tar

/**
 * JNI-constructed TAR entry. Constructor argument order and types must match
 * the SwiftBackup 5.1.0 native ABI.
 */
class SbaTarEntryInfo(
    val name: String,
    val type: Int,
    val linkName: String?,
    val mode: Int,
    val size: Long,
    val realSize: Long,
    val mtimeMs: Long,
    val sparse: Boolean,
    val xattrNames: Array<String>,
) {
    companion object {
        const val TYPE_FILE = 1
        const val TYPE_DIRECTORY = 2
        const val TYPE_SYMLINK = 3
        const val TYPE_HARDLINK = 4
        const val TYPE_FIFO = 5
        const val TYPE_CHARACTER = 6
        const val TYPE_BLOCK = 7
        const val TYPE_OTHER = 99
    }
}
