package com.bare.storage

import android.content.Context
import android.content.SharedPreferences

class StorageConfigurationStore(context: Context) {
    private val preferences: SharedPreferences =
        context.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun saveKind(kind: BackupStorage.Kind) {
        require(kind == BackupStorage.Kind.INTERNAL || kind == BackupStorage.Kind.EXTERNAL)
        preferences.edit()
            .putString(KEY_STORAGE_KIND, kind.name)
            .apply()
    }

    fun loadKind(): BackupStorage.Kind? =
        preferences.getString(KEY_STORAGE_KIND, null)
            ?.let { value -> runCatching { BackupStorage.Kind.valueOf(value) }.getOrNull() }
            ?.takeIf { it == BackupStorage.Kind.INTERNAL || it == BackupStorage.Kind.EXTERNAL }

    companion object {
        private const val PREFERENCES_NAME = "bare_storage"
        private const val KEY_STORAGE_KIND = "storage_kind"
    }
}
