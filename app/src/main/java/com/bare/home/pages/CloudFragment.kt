package com.bare.home.pages

import android.os.Bundle
import android.os.Environment
import android.os.StatFs
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.bare.R
import com.bare.auth.SupabaseAuth
import com.google.android.material.button.MaterialButton
import java.util.Locale

class CloudFragment : Fragment() {
    private lateinit var auth: SupabaseAuth

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        auth = SupabaseAuth(requireContext())
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, state: Bundle?): View =
        inflater.inflate(R.layout.cloud_info_fragment, container, false)

    override fun onViewCreated(view: View, state: Bundle?) {
        super.onViewCreated(view, state)
        view.findViewById<TextView>(R.id.tv_account_id).text =
            auth.currentSession()?.userId ?: getString(R.string.not_signed_in)

        val usage = view.findViewById<TextView>(R.id.tvUsage)
        val storage = StatFs(Environment.getDataDirectory().path)
        val total = storage.totalBytes.coerceAtLeast(1L)
        val free = storage.availableBytes.coerceIn(0L, total)
        val used = total - free
        usage.text = formatBytes(used) + " / " + formatBytes(total)

        view.findViewById<MaterialButton>(R.id.btn_disconnect).apply {
            isEnabled = false
            alpha = 0.55f
        }
        view.findViewById<View>(R.id.iv_save_settings).setOnClickListener {
            Toast.makeText(requireContext(), getString(R.string.cloud_settings_local_only), Toast.LENGTH_SHORT).show()
        }

        view.findViewById<View>(R.id.cloud_info_card_warning).visibility = View.VISIBLE
        view.findViewById<View>(R.id.cloud_info_card_active_tag).visibility = View.GONE
        view.findViewById<View>(R.id.cloud_fragment_progress_bar).visibility = View.GONE
    }

    private fun formatBytes(bytes: Long): String {
        if (bytes < 1024L) return bytes.toString() + " B"
        val units = arrayOf("KB", "MB", "GB", "TB")
        var value = bytes.toDouble()
        var index = -1
        while (value >= 1024.0 && index < units.lastIndex) {
            value /= 1024.0
            index++
        }
        return String.format(Locale.ENGLISH, "%.1f %s", value, units[index])
    }
}