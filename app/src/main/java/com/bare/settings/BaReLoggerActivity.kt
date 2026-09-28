package com.bare.settings

import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.Toolbar
import androidx.recyclerview.widget.RecyclerView
import com.bare.R
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class BaReLoggerActivity : AppCompatActivity() {
    private lateinit var adapter: LogAdapter
    private val entries = mutableListOf<Pair<String, String>>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.slog_activity)
        val toolbar = findViewById<Toolbar>(R.id.toolbar)
        setSupportActionBar(toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)

        val info = findViewById<TextView>(R.id.tv_slog_empty)
        adapter = LogAdapter(entries)
        findViewById<RecyclerView>(R.id.rv_slog).adapter = adapter
        info.visibility = if (entries.isEmpty()) android.view.View.VISIBLE else android.view.View.GONE

        findViewById<com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton>(R.id.btn_send_slogs)
            .setOnClickListener { shareLogs() }
    }

    override fun onCreateOptionsMenu(menu: android.view.Menu): Boolean {
        menuInflater.inflate(R.menu.menu_slog, menu)
        menu.findItem(R.id.action_show_unfiltered).isVisible = false
        return true
    }

    override fun onOptionsItemSelected(item: android.view.MenuItem): Boolean {
        if (item.itemId == R.id.action_clear_slog) {
            AlertDialog.Builder(this)
                .setTitle(R.string.clear_logs)
                .setMessage(R.string.sure_to_proceed)
                .setPositiveButton(R.string.yes) { _, _ ->
                    entries.clear()
                    adapter.notifyDataSetChanged()
                    findViewById<TextView>(R.id.tv_slog_empty).visibility = android.view.View.VISIBLE
                }
                .setNegativeButton(R.string.cancel, null)
                .show()
            return true
        }
        return super.onOptionsItemSelected(item)
    }

    private fun shareLogs() {
        if (entries.isEmpty()) {
            android.widget.Toast.makeText(this, R.string.barelogger_empty, android.widget.Toast.LENGTH_SHORT).show()
            return
        }
        val text = entries.joinToString("\n") { it.first + " " + it.second }
        val intent = Intent(Intent.ACTION_SEND).apply {
            type = "text/plain"
            putExtra(Intent.EXTRA_TEXT, text)
            putExtra(Intent.EXTRA_SUBJECT, getString(R.string.barelogger_share_subject))
        }
        startActivity(Intent.createChooser(intent, getString(R.string.share_logs)))
    }

    override fun onSupportNavigateUp(): Boolean { finish(); return true }

    private class LogAdapter(private val items: List<Pair<String, String>>) :
        RecyclerView.Adapter<LogAdapter.Holder>() {
        override fun onCreateViewHolder(parent: android.view.ViewGroup, viewType: Int): Holder =
            Holder(android.view.LayoutInflater.from(parent.context).inflate(R.layout.slog_item, parent, false))
        override fun onBindViewHolder(holder: Holder, position: Int) {
            holder.time.text = items[position].first
            holder.message.text = items[position].second
        }
        override fun getItemCount(): Int = items.size
        private class Holder(view: android.view.View) : RecyclerView.ViewHolder(view) {
            val time: TextView = view.findViewById(R.id.tv_time)
            val message: TextView = view.findViewById(R.id.tv_message)
        }
    }
}
