package com.bare.settings

import android.os.Bundle
import android.widget.ArrayAdapter
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.Toolbar
import androidx.recyclerview.widget.RecyclerView
import com.bare.R

class LanguageActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_language)
        val toolbar = findViewById<Toolbar>(R.id.toolbar)
        setSupportActionBar(toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        findViewById<RecyclerView>(R.id.rv_languages).adapter =
            ArrayAdapter(this, android.R.layout.simple_list_item_1, listOf("English"))
    }
    override fun onSupportNavigateUp(): Boolean { finish(); return true }
}
