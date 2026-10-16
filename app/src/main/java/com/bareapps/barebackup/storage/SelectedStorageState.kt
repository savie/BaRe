package com.bareapps.barebackup.storage

import android.content.Context
import android.os.Environment
import android.os.storage.StorageManager
import java.io.File

/**
 * Resolves the selected local-backup volume for the reference crash filter.
 *
 * SwiftBackup stores the selected root in `preferred_storage_dir`; yn7.e() reads that path and
 * yn7.d() matches it against discovered storage roots. If no matching root exists, the reference
 * reverts to the default storage instead of treating a stale path as the selected removable drive.
 * The removable property comes from StorageVolume.isRemovable(), with
 * Environment.isExternalStorageRemovable(File) used by the reference's legacy discovery path.
 *
 * Returns null when Android cannot reliably determine the target. Crash diagnostics must not
 * misclassify an unknown storage target as removable.
 */
internal object SelectedStorageState {
    private const val PREFERRED_STORAGE_DIRECTORY = "preferred_storage_dir"

    fun isSelectedStorageRemovable(context: Context): Boolean? {
        return try {
            val preferences = context.getSharedPreferences(
                "${context.packageName}_preferences",
                Context.MODE_PRIVATE
            )
            val selectedPath = try {
                preferences.getString(PREFERRED_STORAGE_DIRECTORY, null)
                    ?.takeIf { it.isNotBlank() }
            } catch (_: ClassCastException) {
                null
            }

            val storageManager = context.getSystemService(StorageManager::class.java)
            val defaultDirectory = Environment.getExternalStorageDirectory()

            if (selectedPath != null && storageManager != null) {
                val selectedDirectory = File(selectedPath)
                var selectedVolume = try {
                    storageManager.getStorageVolume(selectedDirectory)
                } catch (_: Exception) {
                    null
                }

                // The reference's zn7.v() also falls back to discovered StorageVolume
                // directories, comparing against zn7.n().v() rather than the saved l() path.
                // This crash-only resolver has no zn7 model, so it performs a conservative direct
                // path match; this is a fallback heuristic, not a full port of zn7.v().
                if (selectedVolume == null) {
                    selectedVolume = try {
                        storageManager.storageVolumes.firstOrNull { volume ->
                            volume.directory?.path == selectedDirectory.path
                        }
                    } catch (_: Exception) {
                        null
                    }
                }

                // yn7.d() reverts to default storage only when the saved root is not discovered.
                if (selectedVolume != null) return selectedVolume.isRemovable
            }

            if (storageManager != null) {
                try {
                    storageManager.getStorageVolume(defaultDirectory)?.let { volume ->
                        return volume.isRemovable
                    }
                } catch (_: Exception) {
                    // Use the reference's legacy removability check below.
                }
            }

            Environment.isExternalStorageRemovable(defaultDirectory)
        } catch (_: Exception) {
            null
        }
    }
}
