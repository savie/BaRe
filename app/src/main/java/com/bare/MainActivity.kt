package com.bare

import android.content.Intent
import android.os.Bundle
import android.view.MenuItem
import android.view.View
import android.widget.PopupMenu
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.intro_activity)
        findViewById<View>(R.id.btn_google).setOnClickListener {
            Toast.makeText(this, R.string.google_signin_pending, Toast.LENGTH_SHORT).show()
        }
        findViewById<View>(R.id.btn_anonymous).setOnClickListener {
            startActivity(Intent(this, HomeActivity::class.java))
            finish()
        }
        findViewById<View>(R.id.card_premium).setOnClickListener {
            startActivity(Intent(this, PremiumActivity::class.java))
        }
        findViewById<View>(R.id.iv_menu).setOnClickListener { anchor ->
            PopupMenu(this, anchor).apply {
                menuInflater.inflate(R.menu.menu_intro, menu)
                setOnMenuItemClickListener { item: MenuItem ->
                    when (item.itemId) {
                        R.id.action_language -> { Toast.makeText(this@MainActivity,R.string.language_pending,Toast.LENGTH_SHORT).show(); true }
                        R.id.action_barelogger -> { Toast.makeText(this@MainActivity,R.string.bare_logger,Toast.LENGTH_SHORT).show(); true }
                        R.id.action_restart -> { recreate(); true }
                        else -> false
                    }
                }
                show()
            }
        }
    }
}
