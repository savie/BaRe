package com.bare.storage

import android.content.Context
import android.content.SharedPreferences
import android.net.Uri

class StorageConfigurationStore(context: Context) {
    private val preferences: SharedPreferences =
        context.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun saveTreeUri(uri: Uri) {
        preferences.edit()
            .putString(KEY_TREE_URI, uri.toString())
            .apply()
    }

    fun loadTreeUri(): Uri? =
        preferences.getString(KEY_TREE_URI, null)?.let(Uri::parse)

    companion object {
        private const val PREFERENCES_NAME = "bare_storage"
        private const val KEY_TREE_URI = "tree_uri"
    }
}
