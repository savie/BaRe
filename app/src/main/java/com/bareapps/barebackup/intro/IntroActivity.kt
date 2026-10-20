package com.bareapps.barebackup.intro

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.Settings
import android.text.Html
import android.text.method.LinkMovementMethod
import android.view.Menu
import android.view.View
import android.widget.ImageView
import android.widget.PopupMenu
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import com.bareapps.barebackup.R
import com.bareapps.barebackup.home.HomeActivity
import com.google.android.material.button.MaterialButton

class IntroActivity : AppCompatActivity() {
    private var navigatingHome = false

    private val notificationPermission = registerForActivityResult(
        ActivityResultContracts.RequestPermission()
    ) {
        refreshPermissionCards()
    }

    private val legacyStoragePermissions = registerForActivityResult(
        ActivityResultContracts.RequestMultiplePermissions()
    ) {
        refreshPermissionCards()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val preferences = getSharedPreferences("${packageName}_preferences", MODE_PRIVATE)
        if (!preferences.getBoolean(KEY_FIRST_START, true)) {
            openHome()
            return
        }

        setContentView(R.layout.intro_activity)

        findViewById<TextView>(R.id.tv_sign_in_subtitle)
            .setText(R.string.signin_intro_subtitle)

        findViewById<TextView>(R.id.tv_privacy_policy).apply {
            text = Html.fromHtml(
                getString(R.string.tos_privacy_agreement),
                Html.FROM_HTML_MODE_LEGACY
            )
            movementMethod = LinkMovementMethod.getInstance()
        }

        findViewById<ImageView>(R.id.iv_menu).setOnClickListener(::showIntroMenu)

        findViewById<MaterialButton>(R.id.btn_google).setOnClickListener {
            AlertDialog.Builder(this)
                .setTitle(R.string.signin_title)
                .setMessage(R.string.intro_account_sign_in_unavailable)
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(R.string.skip_for_now) { _, _ -> continueToHome() }
                .show()
        }

        findViewById<MaterialButton>(R.id.btn_anonymous)
            .setOnClickListener { continueToHome() }

        findViewById<IntroPermissionCardView>(R.id.container_storage_perm)
            .getActionButton().setOnClickListener { requestStorageAccess() }

        findViewById<IntroPermissionCardView>(R.id.container_notifications_perm)
            .getActionButton().setOnClickListener { requestNotificationAccess() }

        findViewById<IntroPermissionCardView>(R.id.container_xiaomi_installed_apps_perm)
            .getActionButton().setOnClickListener { openInstalledAppsSettings() }

        findViewById<MaterialButton>(R.id.btn_root_permissions).setOnClickListener {
            AlertDialog.Builder(this)
                .setTitle(R.string.root_grant_permissions_dialog_title)
                .setMessage(R.string.intro_root_permission_explanation)
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(R.string.skip_for_now) { _, _ -> continueToHome() }
                .show()
        }

        updateDeviceSpecificCards()
        refreshPermissionCards()
    }

    override fun onResume() {
        super.onResume()
        if (findViewById<View>(R.id.container_permissions) != null) {
            updateDeviceSpecificCards()
            refreshPermissionCards()
        }
    }

    private fun showIntroMenu(anchor: View) {
        PopupMenu(this, anchor).apply {
            menu.add(Menu.NONE, MENU_CONTINUE, Menu.NONE, R.string.skip_for_now)
            menu.add(Menu.NONE, MENU_REFRESH, Menu.NONE, R.string.refresh_permissions)
            setOnMenuItemClickListener { item ->
                when (item.itemId) {
                    MENU_CONTINUE -> {
                        continueToHome()
                        true
                    }
                    MENU_REFRESH -> {
                        refreshPermissionCards()
                        Toast.makeText(
                            this@IntroActivity,
                            R.string.permissions_status_refreshed,
                            Toast.LENGTH_SHORT
                        ).show()
                        true
                    }
                    else -> false
                }
            }
            show()
        }
    }

    private fun updateDeviceSpecificCards() {
        val manufacturer = Build.MANUFACTURER.orEmpty().lowercase()
        val isXiaomiFamily = manufacturer.contains("xiaomi") ||
            manufacturer.contains("redmi") ||
            manufacturer.contains("poco")
        findViewById<View>(R.id.container_xiaomi_installed_apps_perm)?.visibility =
            if (isXiaomiFamily) View.VISIBLE else View.GONE
    }

    private fun requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            val appSpecificIntent = Intent(
                Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                Uri.parse("package:$packageName")
            )
            try {
                startActivity(appSpecificIntent)
            } catch (_: Exception) {
                try {
                    startActivity(Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION))
                } catch (_: Exception) {
                    openAppSettings()
                }
            }
        } else {
            legacyStoragePermissions.launch(
                arrayOf(
                    Manifest.permission.READ_EXTERNAL_STORAGE,
                    Manifest.permission.WRITE_EXTERNAL_STORAGE
                )
            )
        }
    }

    private fun requestNotificationAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            notificationPermission.launch(Manifest.permission.POST_NOTIFICATIONS)
        } else {
            refreshPermissionCards()
        }
    }

    private fun openInstalledAppsSettings() {
        val manufacturerIntent = Intent("miui.intent.action.APP_PERM_EDITOR")
            .putExtra("extra_pkgname", packageName)
        try {
            startActivity(manufacturerIntent)
        } catch (_: Exception) {
            openAppSettings()
        }
    }

    private fun openAppSettings() {
        try {
            startActivity(
                Intent(
                    Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                    Uri.parse("package:$packageName")
                )
            )
        } catch (_: Exception) {
            Toast.makeText(this, R.string.intro_settings_unavailable, Toast.LENGTH_SHORT).show()
        }
    }

    private fun refreshPermissionCards() {
        val storageGranted = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            EnvironmentCompat.hasAllFilesAccess()
        } else {
            checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) ==
                PackageManager.PERMISSION_GRANTED &&
                checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) ==
                PackageManager.PERMISSION_GRANTED
        }

        findViewById<IntroPermissionCardView>(R.id.container_storage_perm)
            ?.getActionButton()?.isEnabled = !storageGranted

        val notificationsGranted = Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU ||
            checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) ==
            PackageManager.PERMISSION_GRANTED

        findViewById<IntroPermissionCardView>(R.id.container_notifications_perm)
            ?.getActionButton()?.isEnabled = !notificationsGranted
    }

    private fun continueToHome() {
        if (navigatingHome) return
        navigatingHome = true

        getSharedPreferences("${packageName}_preferences", MODE_PRIVATE).edit()
            .putBoolean(KEY_FIRST_START, false)
            .apply()

        openHome()
    }

    private fun openHome() {
        startActivity(Intent(this, HomeActivity::class.java))
        finish()
    }

    companion object {
        private const val KEY_FIRST_START = "KEY_FIRST_START"
        private const val MENU_CONTINUE = 1
        private const val MENU_REFRESH = 2
    }
}
