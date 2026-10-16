package com.bareapps.barebackup.locale

import android.content.Context
import android.content.SharedPreferences
import android.content.res.Configuration
import android.os.Build
import android.os.LocaleList
import android.util.Log
import androidx.appcompat.app.AppCompatDelegate
import androidx.core.os.LocaleListCompat
import com.bareapps.barebackup.R
import org.xmlpull.v1.XmlPullParser
import java.util.Locale

/**
 * BΛR☰ locale orchestration aligned with SwiftBackup's j05/xx3 responsibilities.
 * Supported locales come from res/xml/locales_config.xml rather than a duplicate list.
 */
object AppLocaleManager {
    private const val TAG = "LocaleManager"
    private const val KEY_APP_LOCALE = "app_locale"

    @Volatile
    private var cachedSupportedLocales: List<Locale>? = null

    @JvmStatic
    fun supportedLocales(context: Context): List<Locale> {
        cachedSupportedLocales?.let { return it }
        val locales = mutableListOf<Locale>()
        val parser = context.resources.getXml(R.xml.locales_config)
        try {
            var event = parser.eventType
            while (event != XmlPullParser.END_DOCUMENT) {
                if (event == XmlPullParser.START_TAG && parser.name == "locale") {
                    val tag = parser.getAttributeValue(
                        "http://schemas.android.com/apk/res/android", "name"
                    ) ?: parser.getAttributeValue(null, "name")
                    if (!tag.isNullOrBlank()) {
                        parseLocaleTag(tag)?.let { locale ->
                            if (locales.none { localeTag(it) == localeTag(locale) }) {
                                locales += locale
                            }
                        }
                    }
                }
                event = parser.next()
            }
        } finally {
            parser.close()
        }
        return locales.toList().also { cachedSupportedLocales = it }
    }

    @JvmStatic
    fun initialize(context: Context, preferences: SharedPreferences) {
        val supported = supportedLocales(context)
        if (supported.isEmpty()) {
            Log.w(TAG, "No supported locales declared in locales_config.xml")
            return
        }

        val currentAppLocale = AppCompatDelegate.getApplicationLocales().get(0)
        val saved = preferences.getString(KEY_APP_LOCALE, null)
            ?.let { findSupportedLocale(it, supported) }
        val current = currentAppLocale?.let { findSupportedLocale(localeTag(it), supported) }
        val selected = saved ?: current ?: defaultLocale(supported)

        persist(preferences, selected)
        val selectedTag = localeTag(selected)
        if (currentAppLocale == null || localeTag(currentAppLocale) != selectedTag) {
            AppCompatDelegate.setApplicationLocales(
                LocaleListCompat.forLanguageTags(selectedTag)
            )
        }
        Log.i(TAG, "Application locale initialized to $selectedTag")
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
        if (supported.isEmpty()) return

        val configurationLocales = configuration.locales
        val matched = (0 until configurationLocales.size())
            .asSequence()
            .mapNotNull { configurationLocales[it] }
            .firstNotNullOfOrNull { incoming ->
                supported.firstOrNull { candidate ->
                    candidate.language.equals(incoming.language, ignoreCase = true) &&
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
        AppCompatDelegate.setApplicationLocales(
            LocaleListCompat.forLanguageTags(localeTag(selected))
        )
        Log.i(TAG, "Application locale selected: " + localeTag(selected))
        return true
    }

    @JvmStatic
    fun localeTag(locale: Locale): String {
        val language = if (locale.language == "id") "in" else locale.language
        return if (locale.country.isEmpty()) language else language + "_" + locale.country
    }

    private fun persist(preferences: SharedPreferences, locale: Locale) {
        preferences.edit().putString(KEY_APP_LOCALE, localeTag(locale)).apply()
    }

    private fun findSupportedLocale(tag: String, supported: List<Locale>): Locale? {
        val parsed = parseLocaleTag(tag) ?: return null
        return supported.firstOrNull { candidate ->
            candidate.language.equals(parsed.language, ignoreCase = true) &&
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

    private fun defaultLocale(supported: List<Locale>): Locale {
        val systemLocales = LocaleList.getDefault()
        for (index in 0 until systemLocales.size()) {
            val systemLocale = systemLocales[index]
            if (systemLocale.language.equals("en", ignoreCase = true)) {
                return supported.firstOrNull { candidate ->
                    candidate.language == "en" &&
                        (candidate.country == systemLocale.country || candidate.country.isEmpty())
                } ?: supported.firstOrNull { it.language == "en" }
                    ?: Locale("en", "US")
            }
        }
        return supported.firstOrNull { it.language == "en" } ?: Locale("en", "US")
    }
}
