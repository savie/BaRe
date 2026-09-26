package com.bare.feature.apps

import com.bare.capability.RootCapabilityProvider
import java.io.File

data class AppBackupPartState(
    val byteSize: Long,
    val modifiedAt: Long,
) {
    fun matches(other: AppBackupPartState?): Boolean =
        other != null &&
            byteSize == other.byteSize &&
            modifiedAt == other.modifiedAt
}

object AppBackupPartStateReader {
    fun local(path: File): AppBackupPartState? {
        if (!path.exists()) return null
        val files = if (path.isFile) listOf(path) else path.walkTopDown().filter { it.isFile }.toList()
        val size = files.sumOf { it.length().coerceAtLeast(0L) }
        val modified = files.maxOfOrNull { it.lastModified() } ?: path.lastModified()
        return AppBackupPartState(size, modified)
    }

    fun root(root: RootCapabilityProvider, path: String): AppBackupPartState? {
        val size = root.directorySize(path) ?: return null
        val modified = root.directoryModifiedTime(path) ?: return null
        return AppBackupPartState(size, modified)
    }
}
