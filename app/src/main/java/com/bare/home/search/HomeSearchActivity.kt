package com.bare.home.search

import android.os.Bundle
import android.view.View
import android.widget.EditText
import androidx.appcompat.app.AppCompatActivity
import androidx.core.widget.doAfterTextChanged
import com.bare.R

class HomeSearchActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.home_search_activity)

        val toolbar = findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.search_toolbar)
        setSupportActionBar(toolbar)
        supportActionBar?.setDisplayShowTitleEnabled(false)
        toolbar.setNavigationOnClickListener { finish() }

        val input = findViewById<EditText>(R.id.et_search)
        val clear = findViewById<View>(R.id.btn_clear)
        clear.setOnClickListener { input.text.clear() }
        input.doAfterTextChanged {
            clear.visibility = if (it.isNullOrEmpty()) View.GONE else View.VISIBLE
        }
        input.requestFocus()
        window.setSoftInputMode(android.view.WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE)
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return true
    }
}