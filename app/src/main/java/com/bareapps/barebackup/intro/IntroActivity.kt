package com.bareapps.barebackup.intro

import android.app.Activity
import android.os.Bundle
import android.view.View
import android.widget.Toast
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
            R.id.btn_root_permissions,
            R.id.iv_menu
        ).forEach { viewId ->
            findViewById<View>(viewId)?.setOnClickListener(notAvailableYet)
        }
    }
}
