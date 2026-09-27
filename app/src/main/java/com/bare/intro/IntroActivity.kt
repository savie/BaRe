package com.bare.intro

import android.content.Intent
import android.os.Bundle
import android.text.Html
import android.text.method.LinkMovementMethod
import android.view.View
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity
import com.bare.R
import com.google.android.material.button.MaterialButton
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import com.google.android.material.popupmenu.PopupMenu

class IntroActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.intro_activity)

        val menu = findViewById<ImageView>(R.id.iv_menu)
        menu.setOnClickListener { showIntroMenu(menu) }

        val privacy = findViewById<android.widget.TextView>(R.id.tv_privacy_policy)
        privacy.text = Html.fromHtml(getString(R.string.tos_privacy_agreement), Html.FROM_HTML_MODE_LEGACY)
        privacy.movementMethod = LinkMovementMethod.getInstance()

        findViewById<MaterialButton>(R.id.btn_google).setOnClickListener {
            MaterialAlertDialogBuilder(this)
                .setTitle("Google sign-in")
                .setMessage("Account authentication is not connected yet.")
                .setPositiveButton(android.R.string.ok, null)
                .show()
        }

        findViewById<MaterialButton>(R.id.btn_anonymous).setOnClickListener {
            // Reference continues into the application after the anonymous/skip path.
            // Home flow is intentionally not fabricated until that Reference activity is reconstructed.
        }
    }

    private fun showIntroMenu(anchor: View) {
        PopupMenu(this, anchor).apply {
            menuInflater.inflate(R.menu.menu_intro, menu)
            setOnMenuItemClickListener {
                when (it.itemId) {
                    R.id.action_language -> {
                        MaterialAlertDialogBuilder(this@IntroActivity)
                            .setTitle(R.string.language)
                            .setItems(arrayOf("English")) { _, _ -> }
                            .show()
                        true
                    }
                    R.id.action_swiftlogger -> {
                        MaterialAlertDialogBuilder(this@IntroActivity)
                            .setTitle(R.string.swiftlogger)
                            .setMessage("BaReLogger is not reconstructed yet.")
                            .setPositiveButton(android.R.string.ok, null)
                            .show()
                        true
                    }
                    R.id.action_restart -> {
                        recreate()
                        true
                    }
                    else -> false
                }
            }
            show()
        }
    }
}