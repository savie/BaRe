package com.bare.home.pages

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.bare.R
import com.google.android.material.button.MaterialButton

class CloudFragment : Fragment() {
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

}