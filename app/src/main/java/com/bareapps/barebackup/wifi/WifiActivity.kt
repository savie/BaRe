package com.bareapps.barebackup.wifi

import android.os.Bundle
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.bareapps.barebackup.R
import com.bareapps.barebackup.intro.IntroPermissionGrantCoordinator
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.button.MaterialButton
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

/**
 * Wi-Fi backup capability screen. Modern Android intentionally restricts third-party access to
 * saved network credentials; this screen reports the platform gate rather than fabricating data.
 */
class WifiActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), 0, dp(16), dp(16))
        }
        root.addView(MaterialToolbar(this).apply {
            title = getString(R.string.wifi)
            navigationIcon = getDrawable(R.drawable.ic_arrow_back)
            setNavigationOnClickListener { finish() }
        })
        val status = TextView(this).apply {
            text = "Checking available system access…"
            setPadding(0, dp(12), 0, dp(16))
        }
        root.addView(status)
        root.addView(MaterialButton(this).apply {
            text = "Refresh access status"
            setOnClickListener { refreshStatus(status) }
        })
        setContentView(root)
        refreshStatus(status)
    }

    private fun refreshStatus(status: TextView) {
        lifecycleScope.launch(Dispatchers.IO) {
            val rootAvailable = IntroPermissionGrantCoordinator.isRootAvailable()
            runOnUiThread {
                status.text = if (rootAvailable) {
                    "Root access is available. Saved Wi-Fi credentials still require a device-specific, explicitly authorized implementation; no credentials have been read or changed by this screen."
                } else {
                    "Android restricts access to saved Wi-Fi credentials for ordinary apps. On recent Android versions, Wi-Fi backup/restore may require root/Shizuku or system-level privileges. This build does not claim to back up credentials without that access."
                }
            }
        }
    }

    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()
}
