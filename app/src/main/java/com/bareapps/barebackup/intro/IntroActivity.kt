package com.bareapps.barebackup.intro

import android.Manifest
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.Settings
import android.text.Html
import android.text.method.LinkMovementMethod
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import com.bareapps.barebackup.R
import com.bareapps.barebackup.home.HomeActivity
import com.google.android.material.button.MaterialButton

class IntroActivity : AppCompatActivity() {
    private val notificationPermission = registerForActivityResult(
        ActivityResultContracts.RequestPermission()
    ) { refreshPermissionCards() }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.intro_activity)

        findViewById<TextView>(R.id.tv_sign_in_subtitle).setText(R.string.signin_intro_subtitle)
        findViewById<TextView>(R.id.tv_privacy_policy).apply {
            text = Html.fromHtml(getString(R.string.tos_privacy_agreement), Html.FROM_HTML_MODE_LEGACY)
            movementMethod = LinkMovementMethod.getInstance()
        }

        findViewById<ImageView>(R.id.iv_menu).setOnClickListener {
            Toast.makeText(this, R.string.intro_feature_not_available_yet, Toast.LENGTH_SHORT).show()
        }
        findViewById<MaterialButton>(R.id.btn_google).setOnClickListener {
            Toast.makeText(this, R.string.intro_feature_not_available_yet, Toast.LENGTH_SHORT).show()
        }
        findViewById<MaterialButton>(R.id.btn_anonymous).setOnClickListener { continueToHome() }

        findViewById<IntroPermissionCardView>(R.id.container_storage_perm)
            .getActionButton().setOnClickListener { requestStorageAccess() }
        findViewById<IntroPermissionCardView>(R.id.container_notifications_perm)
            .getActionButton().setOnClickListener { requestNotificationAccess() }
        findViewById<IntroPermissionCardView>(R.id.container_xiaomi_installed_apps_perm)
            .getActionButton().setOnClickListener { openAppDetails() }
        findViewById<MaterialButton>(R.id.btn_root_permissions).setOnClickListener {
            Toast.makeText(this, R.string.intro_feature_not_available_yet, Toast.LENGTH_SHORT).show()
        }
        refreshPermissionCards()
    }

    override fun onResume() {
        super.onResume()
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && ::class.java != null) refreshPermissionCards()
    }

    private fun requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            try {
                startActivity(Intent(Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                    Uri.parse("package:$packageName")))
            } catch (_: Exception) {
                startActivity(Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION))
            }
        } else {
            requestPermissions(arrayOf(Manifest.permission.READ_EXTERNAL_STORAGE,
                Manifest.permission.WRITE_EXTERNAL_STORAGE), REQUEST_STORAGE)
        }
    }

    private fun requestNotificationAccess() {
        if (Build.VERSION.SDK_INT >= 33) {
            notificationPermission.launch(Manifest.permission.POST_NOTIFICATIONS)
        } else {
            Toast.makeText(this, R.string.notifications_perm_subtitle, Toast.LENGTH_SHORT).show()
        }
    }

    private fun openAppDetails() {
        startActivity(Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS, Uri.parse("package:$packageName")))
    }

    private fun refreshPermissionCards() {
        val storageGranted = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            EnvironmentCompat.hasAllFilesAccess()
        } else {
            checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) ==
                android.content.pm.PackageManager.PERMISSION_GRANTED
        }
        findViewById<IntroPermissionCardView>(R.id.container_storage_perm)
            .getActionButton().isEnabled = !storageGranted

        val notificationsGranted = Build.VERSION.SDK_INT < 33 ||
            checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) ==
                android.content.pm.PackageManager.PERMISSION_GRANTED
        findViewById<IntroPermissionCardView>(R.id.container_notifications_perm)
            .getActionButton().isEnabled = !notificationsGranted
    }

    private fun continueToHome() {
        getSharedPreferences("barebackup", MODE_PRIVATE).edit()
            .putBoolean("KEY_FIRST_START", false).apply()
        startActivity(Intent(this, HomeActivity::class.java))
        finish()
    }

    companion object {
        private const val REQUEST_STORAGE = 4201
    }
}
