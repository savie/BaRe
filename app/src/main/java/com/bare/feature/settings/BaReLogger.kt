package com.bare.feature.settings

import android.content.Context
import org.json.JSONArray
import org.json.JSONObject
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

data class BaReLogEntry(val timestamp: Long, val message: String)

class BaReLogger(context: Context) {
    private val preferences = context.applicationContext.getSharedPreferences("bare_logger", Context.MODE_PRIVATE)

    fun append(message: String) {
        val entries = load().toMutableList()
        entries += BaReLogEntry(System.currentTimeMillis(), message)
        val array = JSONArray()
        entries.takeLast(500).forEach {
            array.put(JSONObject().put("timestamp", it.timestamp).put("message", it.message))
        }
        preferences.edit().putString("entries", array.toString()).apply()
    }

    fun load(): List<BaReLogEntry> {
        val raw = preferences.getString("entries", null) ?: return emptyList()
        return runCatching {
            val array = JSONArray(raw)
            buildList(array.length()) {
                for (index in 0 until array.length()) {
                    val item = array.getJSONObject(index)
                    add(BaReLogEntry(item.getLong("timestamp"), item.getString("message")))
                }
            }
        }.getOrDefault(emptyList())
    }

    fun clear() { preferences.edit().remove("entries").apply() }

    fun format(entry: BaReLogEntry): String =
        SimpleDateFormat("dd/MM/yy HH:mm:ss.SSS", Locale.getDefault()).format(Date(entry.timestamp)) +
            "  " + entry.message
}
