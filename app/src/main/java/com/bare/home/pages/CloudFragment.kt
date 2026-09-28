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
        val scroll = view.findViewById<View>(R.id.cloud_fragment_scroll_view)
        val error = view.findViewById<View>(R.id.error_layout)

        // Reference shows the disconnected-cloud state when no cloud provider is connected.
        // BaRe has no cloud-provider integration in this phase, so do not present local
        // storage as if it were remote cloud state.
        scroll.visibility = View.GONE
        error.visibility = View.VISIBLE
        view.findViewById<View>(R.id.cloud_fragment_progress_bar).visibility = View.GONE
        view.findViewById<MaterialButton>(R.id.btn_error).setOnClickListener {
            Toast.makeText(
                requireContext(),
                getString(R.string.cloud_settings_local_only),
                Toast.LENGTH_SHORT
            ).show()
        }
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