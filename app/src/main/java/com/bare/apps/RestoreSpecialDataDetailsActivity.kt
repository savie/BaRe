package com.bare.apps

import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.bare.apps.domain.AppDiscovery

class RestoreSpecialDataDetailsActivity : AppCompatActivity() {
    override fun onCreate(state: Bundle?) {
        super.onCreate(state)
        setContentView(com.bare.R.layout.restore_special_data_details_activity)

        val pkg = intent.getStringExtra("package_name") ?: return finish()
        val app = AppDiscovery.installed(this, true)
            .firstOrNull { it.packageName == pkg } ?: return finish()
        val special = app.localMetadata?.specialData

        val text = if (special == null) {
            getString(com.bare.R.string.apps_special_data_not_available)
        } else {
            buildString {
                append(getString(com.bare.R.string.apps_special_data_package, app.packageName))
                append("\n")
                append(getString(com.bare.R.string.apps_special_data_restore_permissions, true))
                append("\n")
                append(getString(com.bare.R.string.apps_special_data_restore_ssaid, false))
                append("\n")
                append(getString(
                    com.bare.R.string.apps_special_data_notification_access,
                    special.ntfAccessComponent ?: getString(com.bare.R.string.apps_special_data_not_saved)
                ))
                append("\n")
                append(getString(
                    com.bare.R.string.apps_special_data_accessibility,
                    special.accessibilityComponent ?: getString(com.bare.R.string.apps_special_data_not_saved)
                ))
                append("\n")
                append(getString(
                    com.bare.R.string.apps_special_data_ssaid,
                    special.ssaid ?: getString(com.bare.R.string.apps_special_data_not_saved)
                ))
                append("\n")
                append(getString(
                    com.bare.R.string.apps_special_data_notification_policy,
                    if (special.notificationPolicyXml.isNullOrBlank()) {
                        getString(com.bare.R.string.apps_special_data_not_saved)
                    } else {
                        getString(com.bare.R.string.apps_special_data_saved)
                    }
                ))
            }
        }

        (findViewById<android.view.ViewGroup>(android.R.id.content)).addView(
            TextView(this).apply {
                this.text = text
                setPadding(24, 24, 24, 24)
            }
        )
    }
}
