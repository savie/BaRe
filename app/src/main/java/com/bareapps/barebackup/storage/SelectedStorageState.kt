package com.bareapps.barebackup.storage

import android.content.Context
import android.os.Environment
import android.os.storage.StorageManager
import java.io.File

/**
 * Resolves the selected local-backup volume for the reference crash filter.
 *
 * SwiftBackup stores the selected storage root in `preferred_storage_dir`. Its storage model
 * derives the removable flag from StorageVolume.isRemovable(), with
 * Environment.isExternalStorageRemovable(File) used by its legacy volume-discovery path.
 *
 * A missing preference follows the reference's default-storage behavior: the primary shared
 * storage root is used. If Android cannot determine the volume's removability, return null so
 * callers do not misclassify an unknown target as removable.
 */
internal object SelectedStorageState {
    private const val PREFERRED_STORAGE_DIRECTORY = "preferred_storage_dir"

    fun isSelectedStorageRemovable(context: Context): Boolean? {
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

        val selectedDirectory = selectedPath?.let(::File)
            ?: Environment.getExternalStorageDirectory()

        val storageManager = context.getSystemService(StorageManager::class.java)
        if (storageManager != null) {
            try {
                storageManager.getStorageVolume(selectedDirectory)?.let { volume ->
                    return volume.isRemovable
                }
            } catch (_: Exception) {
                // Match the reference's legacy fallback when volume lookup fails.
            }
        }

        return try {
            Environment.isExternalStorageRemovable(selectedDirectory)
        } catch (_: Exception) {
            null
        }
    }
}
