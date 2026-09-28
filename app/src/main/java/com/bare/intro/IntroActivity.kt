package com.bare.intro

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.Environment
import android.provider.Settings
import android.text.Html
import android.text.method.LinkMovementMethod
import android.view.View
import android.widget.Toast
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import com.bare.R
import rikka.shizuku.Shizuku
import com.bare.auth.SupabaseAuth
import com.bare.premium.PremiumEntitlement
import com.google.android.material.button.MaterialButton
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import com.google.android.material.popupmenu.PopupMenu

class IntroActivity : AppCompatActivity() {
    private lateinit var state: IntroStateStore
    private lateinit var auth: SupabaseAuth

    private val shizukuPermissionListener =
        Shizuku.OnRequestPermissionResultListener { requestCode, grantResult ->
            if (requestCode == RootPermissionManager.SHIZUKU_REQUEST_CODE &&
                grantResult == PackageManager.PERMISSION_GRANTED
            ) {
                executeRootGrant()
            } else if (requestCode == RootPermissionManager.SHIZUKU_REQUEST_CODE) {
                Toast.makeText(this, R.string.root_provider_unavailable, Toast.LENGTH_LONG).show()
            }
        }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        state = IntroStateStore(this)
        auth = SupabaseAuth(this)
        Shizuku.addRequestPermissionResultListener(shizukuPermissionListener)

        if (!state.firstStart && auth.currentSession() != null) {
            openHome()
            return
        }

        setContentView(R.layout.intro_activity)
        bindUi()
        refreshState()
        handleIntent(intent)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        handleIntent(intent)
    }

    private fun bindUi() {
        findViewById<ImageView>(R.id.iv_menu).setOnClickListener { showIntroMenu(it) }

        val privacy = findViewById<android.widget.TextView>(R.id.tv_privacy_policy)
        privacy.text = Html.fromHtml(getString(R.string.tos_privacy_agreement), Html.FROM_HTML_MODE_LEGACY)
        privacy.movementMethod = LinkMovementMethod.getInstance()

        findViewById<MaterialButton>(R.id.btn_google).setOnClickListener {
            auth.signInWithGoogle()
        }

        findViewById<MaterialButton>(R.id.btn_anonymous).setOnClickListener {
            setBusy(true)
            auth.signInAnonymously { result ->
                setBusy(false)
                result.onSuccess {
                    refreshState()
                    maybeCompleteFirstRun()
                }.onFailure {
                    MaterialAlertDialogBuilder(this)
                        .setTitle("Account setup")
                        .setMessage(it.message ?: "Unable to create the BaRe account.")
                        .setPositiveButton(android.R.string.ok, null)
                        .show()
                }
            }
        }

        findViewById<MaterialButton>(R.id.btn_storage_perm).setOnClickListener {
            requestStorage()
        }
        findViewById<MaterialButton>(R.id.btn_notifications_perm).setOnClickListener {
            requestNotifications()
        }
        findViewById<MaterialButton>(R.id.btn_xiaomi_installed_apps_perm).setOnClickListener {
            requestXiaomiInstalledAppsPermission()
        }
        findViewById<MaterialButton>(R.id.btn_root_permissions).setOnClickListener {
            showRootPermissionDialog()
        }
    }

    private fun refreshState() {
        if (!::state.isInitialized || isFinishing) return
        val storageGranted = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            Environment.isExternalStorageManager()
        } else {
            ContextCompat.checkSelfPermission(this, Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED
        }
        val notificationsGranted = Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU ||
            ContextCompat.checkSelfPermission(this, Manifest.permission.POST_NOTIFICATIONS) == PackageManager.PERMISSION_GRANTED

        findViewById<MaterialButton>(R.id.btn_storage_perm).isEnabled = !storageGranted
        findViewById<View>(R.id.container_storage_perm).visibility =
            if (storageGranted) View.GONE else View.VISIBLE

        val notificationCard = findViewById<View>(R.id.container_notifications_perm)
        notificationCard.visibility =
            if (notificationsGranted) View.GONE else View.VISIBLE
        findViewById<MaterialButton>(R.id.btn_notifications_perm).isEnabled = !notificationsGranted

        val installedAppsSupported = isInstalledAppsPermissionSupported()
        val installedAppsGranted = isInstalledAppsPermissionGranted()
        val xiaomiCard = findViewById<View>(R.id.container_xiaomi_installed_apps_perm)
        xiaomiCard.visibility = if (installedAppsSupported) View.VISIBLE else View.GONE
        findViewById<MaterialButton>(R.id.btn_xiaomi_installed_apps_perm).isEnabled =
            installedAppsSupported && !installedAppsGranted

        val root = findViewById<View>(R.id.container_root_permissions)
        root.visibility = if (statePrefsShowRoot()) View.VISIBLE else View.GONE

        findViewById<View>(R.id.intro_activity_permissions).visibility =
            if (!storageGranted || !notificationsGranted || (installedAppsSupported && !installedAppsGranted) || statePrefsShowRoot())
                View.VISIBLE else View.GONE
    }

    private fun statePrefsShowRoot(): Boolean =
        getSharedPreferences(IntroStateStore.PREFS_NAME, MODE_PRIVATE)
            .getBoolean(IntroStateStore.KEY_SHOW_ROOT_GRANT_PERMISSIONS_BUTTON, true)

    private fun requestStorage() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            runCatching {
                startActivity(Intent(Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                    Uri.parse("package:$packageName")))
            }.onFailure {
                startActivity(Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION))
            }
        } else {
            ActivityCompat.requestPermissions(
                this,
                arrayOf(Manifest.permission.READ_EXTERNAL_STORAGE, Manifest.permission.WRITE_EXTERNAL_STORAGE),
                REQUEST_STORAGE
            )
        }
    }

    private fun requestNotifications() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            ActivityCompat.requestPermissions(this, arrayOf(Manifest.permission.POST_NOTIFICATIONS), REQUEST_NOTIFICATIONS)
        }
    }

    private fun requestXiaomiInstalledAppsPermission() {
        if (!isInstalledAppsPermissionSupported()) return
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                ActivityCompat.requestPermissions(
                    this,
                    arrayOf(XIAOMI_INSTALLED_APPS_PERMISSION),
                    REQUEST_XIAOMI_INSTALLED_APPS
                )
            }
        } catch (_: SecurityException) {
            Toast.makeText(
                this,
                R.string.xiaomi_installed_apps_permission_not_supported,
                Toast.LENGTH_LONG
            ).show()
        }
    }

    private fun isInstalledAppsPermissionSupported(): Boolean {
        val info = runCatching {
            packageManager.getPermissionInfo(XIAOMI_INSTALLED_APPS_PERMISSION, 0)
        }.getOrNull() ?: return false
        if (info.packageName == "com.lbe.security.miui") return true
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            (info.protectionLevel and PackageManager.PROTECTION_MASK_BASE) ==
                PackageManager.PROTECTION_NORMAL
        } else {
            true
        }
    }

    private fun isInstalledAppsPermissionGranted(): Boolean =
        ContextCompat.checkSelfPermission(this, XIAOMI_INSTALLED_APPS_PERMISSION) ==
            PackageManager.PERMISSION_GRANTED

    private fun executeRootGrant() {
        Toast.makeText(this, R.string.root_grant_in_progress, Toast.LENGTH_SHORT).show()
        RootPermissionManager.grantAll(this) { result ->
            runOnUiThread {
                if (result.success) {
                    getSharedPreferences(IntroStateStore.PREFS_NAME, MODE_PRIVATE)
                        .edit()
                        .putBoolean(IntroStateStore.KEY_SHOW_ROOT_GRANT_PERMISSIONS_BUTTON, false)
                        .apply()
                    Toast.makeText(this, R.string.root_grant_success, Toast.LENGTH_LONG).show()
                    refreshState()
                    maybeCompleteFirstRun()
                } else {
                    Toast.makeText(this, R.string.root_provider_unavailable, Toast.LENGTH_LONG).show()
                }
            }
        }
    }

    private fun startRootOrShizukuGrant() {
        if (RootPermissionManager.shizukuAvailable() && RootPermissionManager.shizukuPermissionGranted()) {
            executeRootGrant()
            return
        }
        if (RootPermissionManager.shizukuAvailable()) {
            runCatching {
                RootPermissionManager.requestShizukuPermission()
            }.onFailure {
                Toast.makeText(this, R.string.root_provider_unavailable, Toast.LENGTH_LONG).show()
            }
            return
        }
        executeRootGrant()
    }

    private fun showRootPermissionDialog {
        val permissions = buildString {
            append(getString(R.string.root_grant_permissions_dialog_msg_prefix))
            append("\n\n    • ").append(getString(R.string.android_permission_name_storage))
            append("\n    • ").append(getString(R.string.android_permission_name_sms))
            append("\n    • ").append(getString(R.string.android_permission_name_call_logs))
            append("\n    • ").append(getString(R.string.android_permission_name_contacts))
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                append("\n    • ").append(getString(R.string.notifications))
            }
            if (isInstalledAppsPermissionSupported()) {
                append("\n    • ").append(getString(R.string.android_permission_name_installed_apps))
            }
        }
        MaterialAlertDialogBuilder(this)
            .setTitle(R.string.root_grant_permissions_dialog_title)
            .setMessage(permissions)
            .setPositiveButton(R.string.grant_permissions) { _, _ ->
                startRootOrShizukuGrant()
            }
            .setNegativeButton(R.string.cancel, null)
            .show()
    }

    private fun handleIntent(intent: Intent?) {
        intent?.data?.let { uri ->
            if (auth.consumeCallback(uri) != null) {
                refreshState()
                maybeCompleteFirstRun()
            }
        }
    }

    private fun maybeCompleteFirstRun() {
        if (auth.currentSession() == null) return
        val storageGranted = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) Environment.isExternalStorageManager()
        else ContextCompat.checkSelfPermission(this, Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED
        val notificationsGranted = Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU ||
            ContextCompat.checkSelfPermission(this, Manifest.permission.POST_NOTIFICATIONS) == PackageManager.PERMISSION_GRANTED

        if (storageGranted && notificationsGranted && PremiumEntitlement.isGranted()) {
            state.markCloudRestoreCompleted()
            openHome()
        }
    }

    private fun setBusy(busy: Boolean) {
        findViewById<MaterialButton>(R.id.btn_google).isEnabled = !busy
        findViewById<MaterialButton>(R.id.btn_anonymous).isEnabled = !busy
    }

    private fun openHome() {
        startActivity(Intent(this, com.bare.home.HomeActivity::class.java))
        finish()
    }

    private fun showIntroMenu(anchor: View) {
        PopupMenu(this, anchor).apply {
            menuInflater.inflate(R.menu.menu_intro, menu)
            setOnMenuItemClickListener {
                when (it.itemId) {
                    R.id.action_language -> {
                        startActivity(Intent(this@IntroActivity, com.bare.settings.LanguageActivity::class.java))
                        true
                    }
                    R.id.action_swiftlogger -> {
                        startActivity(Intent(this@IntroActivity, com.bare.settings.BaReLoggerActivity::class.java))
                        true
                    }
                    R.id.action_restart -> {
                        val launchIntent = packageManager.getLaunchIntentForPackage(packageName)
                        if (launchIntent != null) {
                            launchIntent.addFlags(
                                Intent.FLAG_ACTIVITY_NEW_TASK or
                                    Intent.FLAG_ACTIVITY_CLEAR_TASK or
                                    Intent.FLAG_ACTIVITY_CLEAR_TOP
                            )
                            startActivity(launchIntent)
                            finish()
                        } else {
                            recreate()
                        }
                        true
                    }
                    else -> false
                }
            }
            show()
        }
    }

    override fun onDestroy() {
        Shizuku.removeRequestPermissionResultListener(shizukuPermissionListener)
        super.onDestroy()
    }

    override fun onResume() {
        super.onResume()
        if (::state.isInitialized && !isFinishing) {
            refreshState()
            maybeCompleteFirstRun()
        }
    }

    companion object {
        private const val REQUEST_STORAGE = 4101
        private const val REQUEST_NOTIFICATIONS = 4102
        private const val REQUEST_XIAOMI_INSTALLED_APPS = 4103
        private const val XIAOMI_INSTALLED_APPS_PERMISSION = "com.android.permission.GET_INSTALLED_APPS"
    }
}
