package com.bareapps.barebackup.intro

import android.Manifest
import android.app.Activity
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.Settings
import android.text.SpannableStringBuilder
import android.text.TextPaint
import android.text.method.LinkMovementMethod
import android.text.style.URLSpan
import android.view.View
import android.widget.PopupMenu
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatDelegate
import androidx.core.app.ActivityCompat
import androidx.core.app.NotificationManagerCompat
import androidx.core.os.LocaleListCompat
import androidx.core.text.HtmlCompat
import com.bareapps.barebackup.R
import rikka.shizuku.Shizuku

/**
 * Intro screen backed by the project's existing reference layout/resources.
 * Authentication is intentionally not reported as successful until wired to
 * the independent BΛR☰ authentication flow.
 */
class IntroActivity : Activity() {

    private val shizukuPermissionListener =
        Shizuku.OnRequestPermissionResultListener { requestCode, grantResult ->
            if (requestCode != REQUEST_SHIZUKU) return@OnRequestPermissionResultListener
            if (grantResult == android.content.pm.PackageManager.PERMISSION_GRANTED) {
                showMessage(getString(R.string.all_permissions_granted))
            } else {
                showMessage(getString(R.string.root_grant_permissions))
            }
            refreshPermissionCardState()
        }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.intro_activity)
        Shizuku.addRequestPermissionResultListener(shizukuPermissionListener)

        renderLegalAgreement()

        findViewById<View>(R.id.btn_google)?.setOnClickListener {
            showNotAvailableYet()
        }
        findViewById<View>(R.id.btn_anonymous)?.setOnClickListener {
            showNotAvailableYet()
        }
        findViewById<View>(R.id.btn_storage_perm)?.setOnClickListener {
            requestStorageAccess()
        }
        findViewById<View>(R.id.btn_notifications_perm)?.setOnClickListener {
            requestNotificationPermission()
        }
        findViewById<View>(R.id.btn_xiaomi_installed_apps_perm)?.setOnClickListener {
            openInstalledAppsAccessHelp()
        }
        findViewById<View>(R.id.btn_root_permissions)?.setOnClickListener {
            requestElevatedAccess()
        }

        findViewById<View>(R.id.iv_menu)?.setOnClickListener(::showLanguageMenu)
        refreshPermissionCardState()
    }

    override fun onResume() {
        super.onResume()
        refreshPermissionCardState()
    }

    override fun onDestroy() {
        Shizuku.removeRequestPermissionResultListener(shizukuPermissionListener)
        super.onDestroy()
    }

    /** Mirrors the reference: parse HTML, replace URLSpan handlers, enable links. */
    private fun renderLegalAgreement() {
        val legalText = findViewById<TextView>(R.id.tv_privacy_policy) ?: return
        val parsed = HtmlCompat.fromHtml(
            getString(R.string.tos_privacy_agreement),
            HtmlCompat.FROM_HTML_MODE_LEGACY
        )
        val styled = SpannableStringBuilder(parsed)
        styled.getSpans(0, styled.length, URLSpan::class.java).forEach { oldSpan ->
            val url = oldSpan.url
            val start = styled.getSpanStart(oldSpan)
            val end = styled.getSpanEnd(oldSpan)
            val flags = styled.getSpanFlags(oldSpan)
            styled.removeSpan(oldSpan)
            styled.setSpan(object : URLSpan(url) {
                override fun onClick(widget: View) {
                    val safeUri = runCatching { Uri.parse(url) }.getOrNull() ?: return
                    if (safeUri.scheme != "https") return
                    runCatching {
                        startActivity(Intent(Intent.ACTION_VIEW, safeUri))
                    }.onFailure {
                        showMessage(getString(R.string.unknown_error_occured))
                    }
                }

                override fun updateDrawState(ds: TextPaint) {
                    super.updateDrawState(ds)
                    ds.isUnderlineText = true
                }
            }, start, end, flags)
        }
        legalText.text = styled
        legalText.movementMethod = LinkMovementMethod.getInstance()
    }

    private fun requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            if (EnvironmentCompat.hasAllFilesAccess()) {
                showMessage(getString(R.string.all_permissions_granted))
                return
            }
            try {
                startActivity(
                    Intent(
                        Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                        Uri.parse("package:$packageName")
                    )
                )
            } catch (_: Exception) {
                runCatching {
                    startActivity(Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION))
                }.onFailure {
                    showMessage(getString(R.string.storage_perm_subtitle))
                }
            }
        } else {
            ActivityCompat.requestPermissions(
                this,
                arrayOf(
                    Manifest.permission.READ_EXTERNAL_STORAGE,
                    Manifest.permission.WRITE_EXTERNAL_STORAGE
                ),
                REQUEST_STORAGE
            )
        }
    }

    private fun requestNotificationPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            if (checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) ==
                android.content.pm.PackageManager.PERMISSION_GRANTED
            ) {
                showMessage(getString(R.string.all_permissions_granted))
                return
            }
            requestPermissions(
                arrayOf(Manifest.permission.POST_NOTIFICATIONS),
                REQUEST_NOTIFICATIONS
            )
        } else {
            val enabled = NotificationManagerCompat.from(this).areNotificationsEnabled()
            if (enabled) {
                showMessage(getString(R.string.all_permissions_granted))
            } else {
                runCatching {
                    startActivity(
                        Intent(Settings.ACTION_APP_NOTIFICATION_SETTINGS)
                            .putExtra(Settings.EXTRA_APP_PACKAGE, packageName)
                    )
                }.onFailure {
                    showMessage(getString(R.string.notifications_perm_subtitle))
                }
            }
        }
    }

    private fun openInstalledAppsAccessHelp() {
        // OEM installed-app gates are not a universal Android runtime permission.
        showMessage(getString(R.string.xiaomi_installed_apps_permission_not_supported))
        runCatching {
            startActivity(
                Intent(
                    Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                    Uri.parse("package:$packageName")
                )
            )
        }
    }

    private fun requestElevatedAccess() {
        if (!Shizuku.pingBinder()) {
            showMessage(getString(R.string.root_grant_permissions))
            return
        }
        when (Shizuku.checkSelfPermission()) {
            android.content.pm.PackageManager.PERMISSION_GRANTED ->
                showMessage(getString(R.string.all_permissions_granted))
            else -> Shizuku.requestPermission(REQUEST_SHIZUKU)
        }
    }

    private fun refreshPermissionCardState() {
        val storageGranted = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            EnvironmentCompat.hasAllFilesAccess()
        } else {
            checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) ==
                android.content.pm.PackageManager.PERMISSION_GRANTED
        }
        val notificationsGranted = Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU ||
            checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) ==
            android.content.pm.PackageManager.PERMISSION_GRANTED

        updatePermissionButton(R.id.btn_storage_perm, storageGranted)
        updatePermissionButton(R.id.btn_notifications_perm, notificationsGranted)
    }

    private fun updatePermissionButton(viewId: Int, granted: Boolean) {
        val button = findViewById<View>(viewId) ?: return
        if (button is com.google.android.material.button.MaterialButton) {
            button.isEnabled = !granted
            if (granted) button.text = getString(R.string.all_permissions_granted)
        }
    }

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

    private fun showNotAvailableYet() {
        showMessage(getString(R.string.intro_feature_not_available_yet))
    }

    private fun showMessage(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
    }

    companion object {
        private const val REQUEST_STORAGE = 4101
        private const val REQUEST_NOTIFICATIONS = 4102
        private const val REQUEST_SHIZUKU = 4103
    }
}

private object EnvironmentCompat {
    fun hasAllFilesAccess(): Boolean =
        Build.VERSION.SDK_INT >= Build.VERSION_CODES.R &&
            android.os.Environment.isExternalStorageManager()
}
