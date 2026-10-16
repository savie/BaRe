package com.bareapps.barebackup.intro

import android.app.Activity
import android.os.Bundle
import android.text.method.LinkMovementMethod
import android.view.View
import android.widget.PopupMenu
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatDelegate
import androidx.core.os.LocaleListCompat
import androidx.core.text.HtmlCompat
import com.bareapps.barebackup.R

/**
 * Intro screen using the existing reference layout and resource IDs.
 *
 * Authentication and permission actions are still pending implementation;
 * this class must not report success for workflows that are not wired yet.
 */
class IntroActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.intro_activity)

        renderLegalAgreement()

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

        findViewById<View>(R.id.iv_menu)?.setOnClickListener(::showLanguageMenu)
    }

    /**
     * The reference string stores HTML markup as escaped XML text.
     * Parse it as HTML and enable link movement instead of displaying the tags.
     */
    private fun renderLegalAgreement() {
        val legalText = findViewById<TextView>(R.id.tv_privacy_policy) ?: return
        legalText.text = HtmlCompat.fromHtml(
            getString(R.string.tos_privacy_agreement),
            HtmlCompat.FROM_HTML_MODE_LEGACY
        )
        legalText.movementMethod = LinkMovementMethod.getInstance()
    }

    /** Keep language labels aligned with the locales declared by the project. */
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
            AppCompatDelegate.setApplicationLocales(
                LocaleListCompat.forLanguageTags(tag)
            )
            true
        }
        popup.show()
    }
}
