package com.bareapps.barebackup.slog

import android.content.Intent
import android.os.Build
import android.os.Bundle
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.bareapps.barebackup.R
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.button.MaterialButton

/** Lightweight, privacy-conscious device diagnostics screen for BΛR☰. */
class SLogActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(12), 0, dp(12), dp(12))
        }
        root.addView(MaterialToolbar(this).apply {
            title = getString(R.string.barelogger)
            navigationIcon = getDrawable(R.drawable.ic_arrow_back)
            setNavigationOnClickListener { finish() }
        })
        val report = buildString {
            appendLine("BΛR☰ diagnostics")
            appendLine("Package: $packageName")
            appendLine("Version: ${packageManager.getPackageInfo(packageName, 0).versionName}")
            appendLine("Android: ${Build.VERSION.RELEASE} (API ${Build.VERSION.SDK_INT})")
            appendLine("Manufacturer: ${Build.MANUFACTURER}")
            appendLine("Model: ${Build.MODEL}")
            appendLine("ABI: ${Build.SUPPORTED_ABIS.joinToString()}")
        }
        root.addView(ScrollView(this).apply {
            addView(TextView(this@SLogActivity).apply {
                text = report
                textSize = 14f
                setTextIsSelectable(true)
                setPadding(dp(8), dp(12), dp(8), dp(12))
            })
        }, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f))
        root.addView(MaterialButton(this).apply {
            text = getString(R.string.share_logs)
            setOnClickListener {
                startActivity(Intent.createChooser(Intent(Intent.ACTION_SEND).apply {
                    type = "text/plain"
                    putExtra(Intent.EXTRA_SUBJECT, "BΛR☰ diagnostics")
                    putExtra(Intent.EXTRA_TEXT, report)
                }, getString(R.string.share_logs)))
            }
        })
        setContentView(root)
    }

    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()
}
