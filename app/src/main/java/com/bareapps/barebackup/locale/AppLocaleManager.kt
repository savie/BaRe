package com.bareapps.barebackup.locale

import android.content.Context
import android.content.SharedPreferences
import android.content.res.Configuration
import android.os.Build
import android.os.LocaleList
import android.util.Log
import androidx.appcompat.app.AppCompatDelegate
import androidx.core.os.LocaleListCompat
import java.util.Locale

/**
 * Owns BΛR☰'s supported app-locale preference and keeps it aligned with Android's
 * application locale configuration, following the responsibilities of SwiftBackup's
 * locale initializer without depending on its obfuscated helper classes.
 */
object AppLocaleManager {
    private const val TAG = "LocaleManager"
    private const val KEY_APP_LOCALE = "app_locale"

    private val supportedLanguages = setOf(
        "en", "in", "de", "es", "fr", "it", "ja", "pl",
        "pt", "ru", "tr", "uk", "vi", "zh"
    )

    @JvmStatic
    fun initialize(context: Context, preferences: SharedPreferences) {
        val currentAppLocale = AppCompatDelegate.getApplicationLocales()
            .get(0)
        val savedTag = preferences.getString(KEY_APP_LOCALE, null)
        val systemLocale = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            context.resources.configuration.locales.get(0)
        } else {
            @Suppress("DEPRECATION")
            context.resources.configuration.locale
        }

        val selected = savedTag?.let(::parseSupportedTag)
            ?: currentAppLocale?.let(::supportedTag)
            ?: supportedTag(systemLocale)
            ?: Locale.ENGLISH

        persist(preferences, selected)
        val currentTag = currentAppLocale?.let(::languageTag)
        if (currentTag != languageTag(selected)) {
            AppCompatDelegate.setApplicationLocales(
                LocaleListCompat.forLanguageTags(languageTag(selected))
            )
        }
        Log.i(TAG, "Application locale initialized to ${languageTag(selected)}")
    }

    /**
     * Called from Application.onConfigurationChanged. Only supported languages
     * are persisted; unsupported system locales do not overwrite the last choice.
     */
    @JvmStatic
    fun onConfigurationChanged(
        configuration: Configuration,
        preferences: SharedPreferences
    ) {
        val locales = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            configuration.locales
        } else {
            @Suppress("DEPRECATION")
            LocaleList(configuration.locale)
        }
        val supported = (0 until locales.size())
            .asSequence()
            .mapNotNull { locales[it] }
            .mapNotNull(::supportedTag)
            .firstOrNull() ?: return

        val saved = preferences.getString(KEY_APP_LOCALE, null)
        if (saved != languageTag(supported)) {
            persist(preferences, supported)
            Log.i(TAG, "Application locale synchronized to ${languageTag(supported)}")
        }
    }

    private fun persist(preferences: SharedPreferences, locale: Locale) {
        preferences.edit().putString(KEY_APP_LOCALE, languageTag(locale)).apply()
    }

    private fun parseSupportedTag(tag: String): Locale? {
        val locale = Locale.forLanguageTag(tag.replace('_', '-'))
        return supportedTag(locale)
    }

    private fun supportedTag(locale: Locale): Locale? {
        val language = when (locale.language.lowercase(Locale.ROOT)) {
            "id", "in" -> "in"
            else -> locale.language.lowercase(Locale.ROOT)
        }
        if (language !in supportedLanguages) return null
        val country = locale.country.uppercase(Locale.ROOT)
        return Locale.Builder()
            .setLanguage(if (language == "in") "in" else language)
            .apply { if (country.isNotEmpty()) setRegion(country) }
            .build()
    }

    private fun languageTag(locale: Locale): String {
        val language = if (locale.language == "id" || locale.language == "in") "in" else locale.language
        return if (locale.country.isEmpty()) language else "${language}_${locale.country}"
    }
}
