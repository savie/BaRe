package com.bare.feature.apps

import android.content.Context

/**
 * Persists the locally selected Apps list/filter state.
 *
 * This stores presentation/filter preferences only. It does not store
 * backup/cloud capability state or invent unavailable Reference data.
 */
class AppFilterStateStore(context: Context) {
    private val preferences = context.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun load(): SavedState {
        return SavedState(
            sort = preferences.getString(KEY_SORT, "NAME") ?: "NAME",
            descending = preferences.getBoolean(KEY_DESCENDING, false),
            appType = preferences.getString(KEY_APP_TYPE, "ALL") ?: "ALL",
            enabled = preferences.getString(KEY_ENABLED, "ALL") ?: "ALL",
            googlePlay = preferences.getString(KEY_GOOGLE_PLAY, "ALL") ?: "ALL",
            systemAppFilter = preferences.getString(KEY_SYSTEM_APP_FILTER, "ALL") ?: "ALL",
            backupStatus = preferences.getString(KEY_BACKUP_STATUS, "ALL") ?: "ALL",
            favorite = preferences.getString(KEY_FAVORITE, "ALL") ?: "ALL",
            label = preferences.getString(KEY_LABEL, "ALL") ?: "ALL",
            selectedLabels = preferences.getStringSet(KEY_LABELS, emptySet()).orEmpty(),
        )
    }

    fun save(state: SavedState) {
        preferences.edit()
            .putString(KEY_SORT, state.sort)
            .putBoolean(KEY_DESCENDING, state.descending)
            .putString(KEY_APP_TYPE, state.appType)
            .putString(KEY_ENABLED, state.enabled)
            .putString(KEY_GOOGLE_PLAY, state.googlePlay)
            .putString(KEY_SYSTEM_APP_FILTER, state.systemAppFilter)
            .putString(KEY_BACKUP_STATUS, state.backupStatus)
            .putString(KEY_FAVORITE, state.favorite)
            .putString(KEY_LABEL, state.label)
            .putStringSet(KEY_LABELS, state.selectedLabels)
            .apply()
    }

    fun clear() {
        preferences.edit().clear().apply()
    }

    data class SavedState(
        val sort: String,
        val descending: Boolean,
        val appType: String,
        val enabled: String,
        val googlePlay: String,
        val systemAppFilter: String,
        val backupStatus: String,
        val favorite: String,
        val label: String,
        val selectedLabels: Set<String>,
    )

    private companion object {
        const val PREFERENCES_NAME = "apps_filter_state"
        const val KEY_SORT = "sort"
        const val KEY_DESCENDING = "descending"
        const val KEY_APP_TYPE = "app_type"
        const val KEY_ENABLED = "enabled"
        const val KEY_GOOGLE_PLAY = "google_play"
        const val KEY_SYSTEM_APP_FILTER = "system_app_filter"
        const val KEY_BACKUP_STATUS = "backup_status"
        const val KEY_FAVORITE = "favorite"
        const val KEY_LABEL = "label"
        const val KEY_LABELS = "selected_labels"
    }
}
