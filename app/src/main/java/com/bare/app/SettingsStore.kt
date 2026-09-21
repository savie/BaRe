package com.bare.app

import android.content.Context

enum class AppThemeMode {
    SYSTEM,
    LIGHT,
    DARK,
}

class SettingsStore(context: Context) {
    private val preferences = context.applicationContext.getSharedPreferences(
        PREFERENCES_NAME,
        Context.MODE_PRIVATE,
    )

    fun loadThemeMode(): AppThemeMode =
        preferences.getString(KEY_THEME_MODE, null)
            ?.let { value -> runCatching { AppThemeMode.valueOf(value) }.getOrNull() }
            ?: AppThemeMode.SYSTEM

    fun saveThemeMode(mode: AppThemeMode) {
        preferences.edit().putString(KEY_THEME_MODE, mode.name).apply()
    }

    fun loadDynamicColors(): Boolean =
        preferences.getBoolean(KEY_DYNAMIC_COLORS, false)

    fun saveDynamicColors(enabled: Boolean) {
        preferences.edit().putBoolean(KEY_DYNAMIC_COLORS, enabled).apply()
    }

    fun loadAmoledBlack(): Boolean =
        preferences.getBoolean(KEY_AMOLED_BLACK, false)

    fun saveAmoledBlack(enabled: Boolean) {
        preferences.edit().putBoolean(KEY_AMOLED_BLACK, enabled).apply()
    }

    companion object {
        private const val PREFERENCES_NAME = "bare_settings"
        private const val KEY_THEME_MODE = "theme_mode"
        private const val KEY_DYNAMIC_COLORS = "dynamic_colors"
        private const val KEY_AMOLED_BLACK = "amoled_black"
    }
}
