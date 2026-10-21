package com.bareapps.barebackup.locale

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.app.AppCompatDelegate
import androidx.appcompat.app.AlertDialog
import androidx.core.os.LocaleListCompat
import com.bareapps.barebackup.R
import com.google.android.material.appbar.MaterialToolbar
import android.widget.LinearLayout
import android.view.ViewGroup

/** App-local language selector using AndroidX per-app language support. */
class LocaleActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val root = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL }
        root.addView(MaterialToolbar(this).apply {
            title = getString(R.string.language)
            navigationIcon = getDrawable(R.drawable.ic_arrow_back)
            setNavigationOnClickListener { finish() }
        }, LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT))
        setContentView(root)
        AlertDialog.Builder(this)
            .setTitle(R.string.language)
            .setSingleChoiceItems(arrayOf("System default", "English", "Bahasa Indonesia"), selectedIndex()) { dialog, which ->
                val tags = when (which) {
                    1 -> "en"
                    2 -> "id"
                    else -> ""
                }
                AppCompatDelegate.setApplicationLocales(LocaleListCompat.forLanguageTags(tags))
                dialog.dismiss()
                finish()
            }
            .setOnCancelListener { finish() }
            .show()
    }

    private fun selectedIndex(): Int {
        val tags = AppCompatDelegate.getApplicationLocales().toLanguageTags()
        return when {
            tags.startsWith("en") -> 1
            tags.startsWith("id") -> 2
            else -> 0
        }
    }
}
