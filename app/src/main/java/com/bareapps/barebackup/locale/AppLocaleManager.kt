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
 * BΛR☰ locale orchestration mapped from SwiftBackup's j05/xx3 responsibilities.
 *
 * The Android locale-config resource is a separate, broader system-settings inventory.
 * SwiftBackup's xx3.m() defines the in-app choices, including its dynamic xx3.h()
 * default and region-specific variants; those are represented here explicitly.
 */
object AppLocaleManager {
    private const val TAG = "LocaleManager"
    private const val KEY_APP_LOCALE = "app_locale"
    private const val KEY_FOLLOW_SYSTEM_LOCALE = "follow_system_locale_key"

    /**
     * Mirrors xx3.m(): dynamic default first, followed by the fixed in-app locales.
     * The reference uses legacy Java language code "in" for Indonesian.
     */
    @JvmStatic
    fun supportedLocales(context: Context): List<Locale> {
        val locales = mutableListOf(defaultLocaleFromSystem())
        locales += listOf(
            Locale("zh", "CN"),
            Locale("zh", "TW"),
            Locale("fr", "FR"),
            Locale("de", "DE"),
            Locale("in", "ID"),
            Locale("it", "IT"),
            Locale("ja", "JP"),
            Locale("pl", "PL"),
            Locale("pt", "BR"),
            Locale("ru", "RU"),
            Locale("es", "ES"),
            Locale("tr", "TR"),
            Locale("uk", "UA"),
            Locale("vi", "VN")
        )
        return locales.distinctBy { localeTag(it).lowercase(Locale.ROOT) }
    }

    @JvmStatic
    fun initialize(context: Context, preferences: SharedPreferences) {
        val supported = supportedLocales(context)
        if (supported.isEmpty()) {
            Log.w(TAG, "No supported locales available from the reference locale inventory")
            return
        }

        val currentAppLocale = AppCompatDelegate.getApplicationLocales().get(0)
        val saved = preferences.getString(KEY_APP_LOCALE, null)
            ?.let { findSupportedLocale(it, supported) }
        val current = currentAppLocale?.let { findSupportedLocale(localeTag(it), supported) }
        val selected = saved ?: current ?: defaultLocale(supported)

        persist(preferences, selected)
        val selectedTag = localeTag(selected)
        val followSystem = Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU &&
            preferences.getBoolean(KEY_FOLLOW_SYSTEM_LOCALE, false)
        if (followSystem) {
            // kv4.a() delegates to Lingver's system-locale behavior on pre-33 Android.
            AppCompatDelegate.setApplicationLocales(LocaleListCompat.getEmptyLocaleList())
        } else if (currentAppLocale == null || localeTag(currentAppLocale) != selectedTag) {
            AppCompatDelegate.setApplicationLocales(
                LocaleListCompat.forLanguageTags(toLanguageTag(selected))
            )
        }
        Log.i(TAG, "Application locale initialized to $selectedTag; followSystem=$followSystem")
    }

    /** Mirrors j05.c: match incoming configuration locales and persist the match. */
    @JvmStatic
    fun onConfigurationChanged(
        configuration: Configuration,
        preferences: SharedPreferences,
        context: Context
    ) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU) return
        val supported = supportedLocales(context)
        val configurationLocales = configuration.locales
        val matched = (0 until configurationLocales.size())
            .asSequence()
            .mapNotNull { configurationLocales[it] }
            .firstNotNullOfOrNull { incoming ->
                supported.firstOrNull { candidate ->
                    canonicalLanguage(candidate.language) == canonicalLanguage(incoming.language) &&
                        (candidate.country.isEmpty() ||
                            candidate.country.equals(incoming.country, ignoreCase = true))
                }
            } ?: return

        val matchedTag = localeTag(matched)
        if (preferences.getString(KEY_APP_LOCALE, null) != matchedTag) {
            persist(preferences, matched)
            Log.i(TAG, "Application locale synchronized from configuration to $matchedTag")
        }
    }

    @JvmStatic
    fun selectLocale(context: Context, preferences: SharedPreferences, tag: String): Boolean {
        val selected = findSupportedLocale(tag, supportedLocales(context)) ?: return false
        persist(preferences, selected)
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU) {
            // kv4.b() disables follow-system mode when a locale is explicitly selected.
            preferences.edit().putBoolean(KEY_FOLLOW_SYSTEM_LOCALE, false).apply()
        }
        AppCompatDelegate.setApplicationLocales(
            LocaleListCompat.forLanguageTags(toLanguageTag(selected))
        )
        Log.i(TAG, "Application locale selected: " + localeTag(selected))
        return true
    }

    /** Stored preference format mirrors j05.e(): language_COUNTRY. */
    @JvmStatic
    fun localeTag(locale: Locale): String {
        val language = if (locale.language == "id") "in" else locale.language
        return if (locale.country.isEmpty()) language else language + "_" + locale.country
    }

    private fun toLanguageTag(locale: Locale): String {
        val language = if (canonicalLanguage(locale.language) == "in") "id" else locale.language
        return if (locale.country.isEmpty()) language else "$language-${locale.country}"
    }

    private fun persist(preferences: SharedPreferences, locale: Locale) {
        preferences.edit().putString(KEY_APP_LOCALE, localeTag(locale)).apply()
    }

    private fun findSupportedLocale(tag: String, supported: List<Locale>): Locale? {
        val parsed = parseLocaleTag(tag) ?: return null
        return supported.firstOrNull { candidate ->
            canonicalLanguage(candidate.language) == canonicalLanguage(parsed.language) &&
                (parsed.country.isEmpty() || candidate.country.equals(parsed.country, ignoreCase = true))
        }
    }

    private fun parseLocaleTag(tag: String): Locale? {
        if (tag.isBlank()) return null
        val parsed = Locale.forLanguageTag(tag.replace('_', '-'))
        if (parsed.language.isBlank() || parsed.language == "und") return null
        val language = if (parsed.language.equals("id", ignoreCase = true)) "in" else parsed.language
        return Locale.Builder()
            .setLanguage(language)
            .apply { if (parsed.country.isNotEmpty()) setRegion(parsed.country) }
            .build()
    }

    private fun canonicalLanguage(language: String): String =
        if (language.equals("id", ignoreCase = true) || language.equals("in", ignoreCase = true)) {
            "in"
        } else {
            language.lowercase(Locale.ROOT)
        }

    /** Mirrors xx3.h(): first system English locale including region, otherwise en_US. */
    private fun defaultLocaleFromSystem(): Locale {
        val systemLocales = LocaleList.getDefault()
        for (index in 0 until systemLocales.size()) {
            val systemLocale = systemLocales[index]
            if (systemLocale.language.equals("en", ignoreCase = true)) {
                return Locale("en", systemLocale.country)
            }
        }
        return Locale("en", "US")
    }

    private fun defaultLocale(supported: List<Locale>): Locale =
        supported.firstOrNull { it.language.equals("en", ignoreCase = true) }
            ?: Locale("en", "US")
}
