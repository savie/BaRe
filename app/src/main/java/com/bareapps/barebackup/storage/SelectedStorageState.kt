package com.bareapps.barebackup.storage

import android.content.Context
import com.bareapps.barebackup.BareApp
import android.os.Build
import android.os.Environment
import android.os.storage.StorageManager
import android.os.storage.StorageVolume
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

    /** Mirrors yn7's API-aware volume-root lookup: getDirectory on Android 11+, mPath earlier. */
    private fun storageVolumeDirectory(volume: StorageVolume): File? {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            return try {
                volume.directory
            } catch (_: Exception) {
                null
            }
        }

        return try {
            val pathField = StorageVolume::class.java.getDeclaredField("mPath")
            pathField.isAccessible = true
            pathField.get(volume) as? File
        } catch (_: Exception) {
            null
        }
    }

    fun isSelectedStorageRemovable(context: Context): Boolean? {
        return try {
            // Use the application-owned preference store initialized by BareApp, rather than
            // reconstructing a preference filename here. SwiftBackup reads cz4.f, its initialized
            // shared-preferences instance; BareApp.appPreferences() is the corresponding BΛR☰ source.
            val preferences = BareApp.appPreferences() ?: return null
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

                // yn7.d() accepts a saved preference only when it matches a discovered storage
                // root. Do not let getStorageVolume() classify an arbitrary/stale subdirectory as
                // the selected root: zn7 is constructed from a discovered root and q63 path.
                val selectedVolume = try {
                    storageManager.storageVolumes.firstOrNull { volume ->
                        storageVolumeDirectory(volume)?.path == selectedDirectory.path
                    }
                } catch (_: Exception) {
                    null
                }

                if (selectedVolume != null) {
                    // zn7.v() first resolves the q63 path with getStorageVolumeForFile, then
                    // falls back to discovered volume roots. Since this crash-only helper has no
                    // zn7/q63 model, the exact discovered-root match is the safe parity boundary.
                    val resolvedVolume = try {
                        storageManager.getStorageVolume(selectedDirectory) ?: selectedVolume
                    } catch (_: Exception) {
                        selectedVolume
                    }
                    return resolvedVolume.isRemovable
                }

                // If the saved root is not discovered, yn7.d() selects the default storage.
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
