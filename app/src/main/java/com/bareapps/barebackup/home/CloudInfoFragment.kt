package com.bareapps.barebackup.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.fragment.app.Fragment
import com.bareapps.barebackup.R

/** Cloud overview surface, rendered with the existing reference layouts and immutable resource strings. */
class CloudInfoFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.cloud_info_fragment, container, false)

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        // A disconnected placeholder is honest until BΛR☰ cloud integration is wired up.
        view.findViewById<TextView>(R.id.tv_account_id)?.setText(R.string.not_connected)
        view.findViewById<TextView>(R.id.tvUsage)?.setText(R.string.not_connected)
        view.findViewById<View>(R.id.btn_disconnect)?.visibility = View.GONE
        view.findViewById<View>(R.id.tv_cloud_folder_label)?.visibility = View.GONE
        view.findViewById<View>(R.id.tv_cloud_folder_name)?.visibility = View.GONE
        view.findViewById<View>(R.id.cloud_actions_segment)?.visibility = View.GONE
        view.findViewById<View>(R.id.cloud_fragment_progress_bar)?.visibility = View.GONE
        view.findViewById<View>(R.id.error_layout)?.visibility = View.GONE

        view.findViewById<View>(R.id.backup_info_empty_state)?.visibility = View.VISIBLE
        view.findViewById<View>(R.id.backup_info_container)?.visibility = View.GONE
        view.findViewById<View>(R.id.btn_delete_active_tag)?.visibility = View.GONE

        view.findViewById<View>(R.id.btn_i_understand)?.setOnClickListener {
            view.findViewById<View>(R.id.cloud_info_card_warning)?.visibility = View.GONE
        }
    }
}
