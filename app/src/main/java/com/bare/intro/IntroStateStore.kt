package com.bare.intro

import android.content.Context

class IntroStateStore(context: Context) {
    private val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
    val firstStart get() = prefs.getBoolean(KEY_FIRST_START, true)
    val firstRunCloudRestoreCompleted get() = prefs.getBoolean(KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED, false)
    val savedPasswordMode get() = prefs.getInt(KEY_SAVED_PASSWORD_MODE, PASSWORD_MODE_STANDARD)

    fun markCloudRestoreCompleted() {
        prefs.edit().putBoolean(KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED, true)
            .putBoolean(KEY_FIRST_START, false).apply()
    }
    fun setFirstStart(value: Boolean) = prefs.edit().putBoolean(KEY_FIRST_START, value).apply()
    fun setSavedPasswordMode(mode: Int) = prefs.edit().putInt(KEY_SAVED_PASSWORD_MODE, mode).apply()

    companion object {
        const val PREFS_NAME = "bare_preferences"
        const val KEY_FIRST_START = "KEY_FIRST_START"
        const val KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED = "KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED"
        const val KEY_SAVED_PASSWORD_MODE = "saved_password_mode"
        const val KEY_SHOW_ROOT_GRANT_PERMISSIONS_BUTTON = "show_root_grant_permissions_button"
        const val PASSWORD_MODE_STANDARD = 0
        const val PASSWORD_MODE_USER = 1
    }
}