package com.bareapps.barebackup.settings

import android.content.Intent
import android.os.Bundle
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.bareapps.barebackup.R
import com.bareapps.barebackup.locale.LocaleActivity
import com.bareapps.barebackup.slog.SLogActivity
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.button.MaterialButton

/** BΛR☰ settings entry point. Settings shown here are app-owned, not copied account settings. */
class SettingsActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(8), dp(16), dp(24))
        }
        root.addView(MaterialToolbar(this).apply {
            title = getString(R.string.settings)
            navigationIcon = getDrawable(R.drawable.ic_arrow_back)
            setNavigationOnClickListener { finish() }
        }, matchWrap())
        root.addView(TextView(this).apply {
            text = "BΛR☰ settings"
            textSize = 20f
            setPadding(0, dp(16), 0, dp(8))
        }, matchWrap())
        root.addView(TextView(this).apply {
            text = "Premium capabilities are available without payment. Android permissions and device restrictions still apply."
            textSize = 14f
            setPadding(0, 0, 0, dp(16))
        }, matchWrap())
        root.addView(action(R.string.language, R.drawable.ic_language) {
            startActivity(Intent(this, LocaleActivity::class.java))
        }, matchWrap())
        root.addView(action(R.string.barelogger, R.drawable.ic_bug) {
            startActivity(Intent(this, SLogActivity::class.java))
        }, matchWrap())
        root.addView(action(R.string.about, R.drawable.ic_information) {
            val version = packageManager.getPackageInfo(packageName, 0).versionName ?: getString(R.string.not_available)
            androidx.appcompat.app.AlertDialog.Builder(this)
                .setTitle("BΛR☰")
                .setMessage("Version $version\n\nLocal backup and restore operate independently of a cloud account.")
                .setPositiveButton(android.R.string.ok, null)
                .show()
        }, matchWrap())
        setContentView(root)
    }

    private fun action(title: Int, icon: Int, onClick: () -> Unit) =
        MaterialButton(this).apply {
            text = getString(title)
            setIconResource(icon)
            isAllCaps = false
            setOnClickListener { onClick() }
        }

    private fun matchWrap() = LinearLayout.LayoutParams(
        ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
    )
    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()
}
