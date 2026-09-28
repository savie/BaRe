package com.bare.settings

import android.os.Bundle
import android.view.LayoutInflater
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.widget.RadioButton
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.app.AppCompatDelegate
import androidx.appcompat.widget.Toolbar
import androidx.core.os.LocaleListCompat
import androidx.recyclerview.widget.RecyclerView
import com.bare.R
import java.util.Locale

class LanguageActivity : AppCompatActivity() {
    private val locales = listOf(
        LocaleSpec("en", "US", "English"),
        LocaleSpec("zh", "CN", "Chinese Simplified"),
        LocaleSpec("zh", "TW", "Chinese Traditional"),
        LocaleSpec("fr", "FR", "French"),
        LocaleSpec("de", "DE", "German"),
        LocaleSpec("in", "ID", "Indonesian"),
        LocaleSpec("it", "IT", "Italian"),
        LocaleSpec("ja", "JP", "Japanese"),
        LocaleSpec("pl", "PL", "Polish"),
        LocaleSpec("pt", "BR", "Portuguese"),
        LocaleSpec("ru", "RU", "Russian"),
        LocaleSpec("es", "ES", "Spanish"),
        LocaleSpec("tr", "TR", "Turkish"),
        LocaleSpec("uk", "UA", "Ukrainian"),
        LocaleSpec("vi", "VN", "Vietnamese")
    )

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.locale_activity)
        val toolbar = findViewById<Toolbar>(R.id.toolbar)
        setSupportActionBar(toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        findViewById<RecyclerView>(R.id.rv_locale).adapter = LocaleAdapter(locales) { spec ->
            val tag = spec.language + "-" + spec.country
            getSharedPreferences("bare_preferences", MODE_PRIVATE).edit()
                .putString("app_locale", spec.language + "_" + spec.country).apply()
            AppCompatDelegate.setApplicationLocales(LocaleListCompat.forLanguageTags(tag))
        }
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.menu_locale_activity, menu)
        menu.findItem(R.id.action_show_wip_languages).isVisible = false
        return true
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == R.id.action_credits) {
            androidx.appcompat.app.AlertDialog.Builder(this)
                .setTitle(R.string.credits)
                .setMessage(R.string.locale_credits_unavailable)
                .setPositiveButton(android.R.string.ok, null)
                .show()
            return true
        }
        return super.onOptionsItemSelected(item)
    }

    override fun onSupportNavigateUp(): Boolean { finish(); return true }

    private data class LocaleSpec(val language: String, val country: String, val englishName: String)

    private class LocaleAdapter(
        private val items: List<LocaleSpec>,
        private val onSelected: (LocaleSpec) -> Unit
    ) : RecyclerView.Adapter<LocaleAdapter.Holder>() {
        override fun onCreateViewHolder(parent: android.view.ViewGroup, viewType: Int): Holder =
            Holder(LayoutInflater.from(parent.context).inflate(R.layout.locale_item, parent, false))

        override fun onBindViewHolder(holder: Holder, position: Int) {
            val item = items[position]
            val locale = Locale.Builder().setLanguage(item.language).setRegion(item.country).build()
            val selected = AppCompatDelegate.getApplicationLocales().toLanguageTags()
            holder.radio.isChecked = selected.equals(item.language + "-" + item.country, ignoreCase = true) ||
                (item.language == "en" && selected.isEmpty())
            holder.title.text = locale.getDisplayLanguage(locale)
            holder.subtitle.text = item.englishName
            holder.itemView.setOnClickListener { onSelected(item) }
            holder.radio.setOnClickListener { onSelected(item) }
        }

        override fun getItemCount(): Int = items.size

        private class Holder(view: View) : RecyclerView.ViewHolder(view) {
            val radio: RadioButton = view.findViewById(R.id.rb)
            val title: TextView = view.findViewById(R.id.tv_title)
            val subtitle: TextView = view.findViewById(R.id.tv_subtitle)
        }
    }
}
