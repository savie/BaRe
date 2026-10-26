package com.bareapps.barebackup.common

import android.content.Context
import android.net.Uri
import androidx.documentfile.provider.DocumentFile

/** Resolves the storage tree selected by the user in BΛR☰. */
object CloudStorageDestination {
    const val PREFS_NAME = "bare_cloud_storage"
    const val KEY_TREE_URI = "storage_tree_uri"

    fun tree(context: Context): DocumentFile? {
        val uri = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            .getString(KEY_TREE_URI, null)?.let { Uri.parse(it) } ?: return null
        return runCatching { DocumentFile.fromTreeUri(context, uri) }.getOrNull()?.takeIf { it.isDirectory }
    }

    fun createFile(context: Context, mimeType: String, displayName: String): Uri? {
        val root = tree(context) ?: return null
        val existing = root.findFile(displayName)
        val finalName = if (existing == null) displayName else {
            val dot = displayName.lastIndexOf('.')
            if (dot > 0) {
                displayName.substring(0, dot) + "-" + System.currentTimeMillis() + displayName.substring(dot)
            } else {
                displayName + "-" + System.currentTimeMillis()
            }
        }
        return runCatching { root.createFile(mimeType, finalName)?.uri }.getOrNull()
    }

    fun displayName(context: Context): String? = tree(context)?.name
}
