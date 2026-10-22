package com.bareapps.sba.internal.tar

import java.util.Arrays

/**
 * Native-facing TAR entry value model ported from BareBackup 5.1.0 (620).
 * Keep the constructor descriptor stable for JNI:
 * (String, int, String, int, long, long, long, boolean, String[]).
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
    xattrNames: Array<String>,
) {
    private val xattrs: Array<String> = xattrNames.copyOf()

    fun getEntryType(): SbaTarEntryType = when (type) {
        TYPE_FILE -> SbaTarEntryType.File
        TYPE_DIRECTORY -> SbaTarEntryType.Directory
        TYPE_SYMLINK -> SbaTarEntryType.SymbolicLink
        TYPE_HARDLINK -> SbaTarEntryType.Hardlink
        TYPE_FIFO -> SbaTarEntryType.Fifo
        TYPE_CHARACTER -> SbaTarEntryType.CharacterDevice
        TYPE_BLOCK -> SbaTarEntryType.BlockDevice
        else -> SbaTarEntryType.Other
    }

    fun getXattrNames(): Array<String> = xattrs.copyOf()
    fun isDirectory(): Boolean = type == TYPE_DIRECTORY
    fun isFile(): Boolean = type == TYPE_FILE
    fun isHardlink(): Boolean = type == TYPE_HARDLINK
    fun isSymbolicLink(): Boolean = type == TYPE_SYMLINK

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is SbaTarEntryInfo) return false
        return name == other.name &&
            type == other.type &&
            linkName == other.linkName &&
            mode == other.mode &&
            size == other.size &&
            realSize == other.realSize &&
            mtimeMs == other.mtimeMs &&
            sparse == other.sparse &&
            Arrays.equals(xattrs, other.xattrs)
    }

    override fun hashCode(): Int {
        var result = name.hashCode()
        result = result * 31 + type
        result = result * 31 + (linkName?.hashCode() ?: 0)
        result = result * 31 + mode
        result = result * 31 + size.hashCode()
        result = result * 31 + realSize.hashCode()
        result = result * 31 + mtimeMs.hashCode()
        result = result * 31 + if (sparse) 1231 else 1237
        return result + Arrays.hashCode(xattrs)
    }

    override fun toString(): String =
        "SbaTarEntryInfo(name=$name, type=$type, entryType=${getEntryType()}, " +
            "linkName=$linkName, mode=$mode, size=$size, realSize=$realSize, " +
            "mtimeMs=$mtimeMs, sparse=$sparse, xattrNames=${Arrays.toString(xattrs)})"

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
