package com.bare.recovery

import android.content.Context
import android.os.Build
import android.os.Environment
import android.os.storage.StorageManager
import java.io.File

/**
 * Discovers user-owned canonical recovery artifacts after local app state is unavailable.
 *
 * Discovery is intentionally limited to shared/removable storage roots and the canonical
 * recovery filename. Authentication happens later through RecoveryPackageCodec.
 */
class RecoveryArtifactDiscovery(context: Context) {
    private val appContext = context.applicationContext

    fun findCandidates(maxCandidates: Int = MAX_CANDIDATES): List<File> {
        val roots = storageRoots()
        val result = LinkedHashMap<String, File>()

        roots.forEach { root ->
            scan(root, depth = 0, maxCandidates = maxCandidates, result = result)
            if (result.size >= maxCandidates) return@forEach
        }

        return result.values.toList()
    }

    private fun scan(
        directory: File,
        depth: Int,
        maxCandidates: Int,
        result: LinkedHashMap<String, File>,
    ) {
        if (result.size >= maxCandidates || depth > MAX_DEPTH) return
        if (!directory.isDirectory || !directory.canRead()) return

        val name = directory.name
        if (depth > 0 && (name == "Android" || name.startsWith("."))) return

        directory.listFiles()?.forEach { file ->
            if (result.size >= maxCandidates) return@forEach
            if (file.isFile && file.name == CANONICAL_FILENAME && file.canRead()) {
                result[file.absolutePath] = file
            } else if (file.isDirectory && file.canRead()) {
                scan(file, depth + 1, maxCandidates, result)
            }
        }
    }

    private fun storageRoots(): List<File> = buildList {
        add(Environment.getExternalStorageDirectory())
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            val storageManager = appContext.getSystemService(StorageManager::class.java)
            storageManager?.storageVolumes
                ?.filter { it.isRemovable && it.state == Environment.MEDIA_MOUNTED }
                ?.mapNotNull { volume ->
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) volume.directory else null
                }
                ?.forEach { root ->
                    if (root.absolutePath != Environment.getExternalStorageDirectory().absolutePath) {
                        add(root)
                    }
                }
        }
    }.distinctBy { it.absolutePath }

    companion object {
        const val CANONICAL_FILENAME = "bare-recovery.bare"
        private const val MAX_DEPTH = 10
        private const val MAX_CANDIDATES = 100
    }
}
