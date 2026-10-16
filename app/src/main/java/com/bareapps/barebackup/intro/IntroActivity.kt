package com.bareapps.barebackup.intro

import android.app.Activity
import android.os.Bundle
import android.view.View
import android.widget.PopupMenu
import android.widget.Toast
import androidx.appcompat.app.AppCompatDelegate
import androidx.core.os.LocaleListCompat
import com.bareapps.barebackup.R

/**
 * Minimal launchable onboarding surface based on SwiftBackup 5.1.0 (620).
 *
 * This intentionally reuses the reference layout. Authentication and permission
 * workflows are not wired yet; action taps explain that instead of pretending
 * the underlying operation succeeded.
 */
class IntroActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.intro_activity)

        val notAvailableYet = View.OnClickListener {
            Toast.makeText(
                this,
                R.string.intro_feature_not_available_yet,
                Toast.LENGTH_SHORT
            ).show()
        }

        listOf(
            R.id.btn_google,
            R.id.btn_anonymous,
            R.id.btn_storage_perm,
            R.id.btn_notifications_perm,
            R.id.btn_xiaomi_installed_apps_perm,
            R.id.btn_root_permissions
        ).forEach { viewId ->
            findViewById<View>(viewId)?.setOnClickListener(notAvailableYet)
        }

        findViewById<View>(R.id.iv_menu)?.setOnClickListener { anchor ->
            showLanguageMenu(anchor)
        }
    }

    /** Minimal app-language selector for the intro overflow menu. */
    private fun showLanguageMenu(anchor: View) {
        val languages = listOf(
            "en" to "English",
            "in" to "Bahasa Indonesia",
            "de" to "Deutsch",
            "es" to "Español",
            "fr" to "Français",
            "it" to "Italiano",
            "ja" to "日本語",
            "pl" to "Polski",
            "pt" to "Português",
            "ru" to "Русский",
            "tr" to "Türkçe",
            "uk" to "Українська",
            "vi" to "Tiếng Việt",
            "zh" to "中文"
        )
        val popup = PopupMenu(this, anchor)
        languages.forEachIndexed { index, language ->
            popup.menu.add(0, index, index, language.second)
        }
        popup.setOnMenuItemClickListener { item ->
            val tag = languages.getOrNull(item.itemId)?.first
                ?: return@setOnMenuItemClickListener false
            AppCompatDelegate.setApplicationLocales(LocaleListCompat.forLanguageTags(tag))
            true
        }
        popup.show()
    }
}
