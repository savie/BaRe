package com.bareapps.barebackup.home.cloud

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import androidx.activity.result.contract.ActivityResultContracts
import androidx.fragment.app.Fragment
import com.bareapps.barebackup.R
import com.bareapps.barebackup.common.CloudStorageDestination
import com.google.android.material.button.MaterialButton

/** Cloud tab UI for the user-selected backup folder; provider-specific auth stays in the cloud package. */
class CloudInfoFragment : Fragment(R.layout.cloud_info_fragment) {

    private val chooseTree = registerForActivityResult(ActivityResultContracts.OpenDocumentTree()) { uri ->
        if (uri != null && isAdded) {
            try {
                requireContext().contentResolver.takePersistableUriPermission(
                    uri,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION
                )
            } catch (_: Exception) {
                // The current URI can still be used if a provider does not support persisted access.
            }
            requireContext().getSharedPreferences(
                CloudStorageDestination.PREFS_NAME,
                android.content.Context.MODE_PRIVATE
            ).edit().putString(CloudStorageDestination.KEY_TREE_URI, uri.toString()).apply()
            view?.let(::renderStorageState)
        }
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        view.findViewById<View>(R.id.btn_disconnect)?.setOnClickListener {
            requireContext().getSharedPreferences(
                CloudStorageDestination.PREFS_NAME,
                android.content.Context.MODE_PRIVATE
            ).edit().remove(CloudStorageDestination.KEY_TREE_URI).apply()
            renderStorageState(view)
        }
        view.findViewById<View>(R.id.iv_save_settings)?.setOnClickListener { chooseTree.launch(null) }
        view.findViewById<View>(R.id.btn_i_understand)?.setOnClickListener {
            view.findViewById<View>(R.id.cloud_info_card_warning).visibility = View.GONE
        }
        renderStorageState(view)
    }

    private fun renderStorageState(root: View) {
        val tree = CloudStorageDestination.tree(requireContext())
        val scroll = root.findViewById<View>(R.id.cloud_fragment_scroll_view)
        val error = root.findViewById<View>(R.id.error_layout)
        root.findViewById<View>(R.id.cloud_fragment_progress_bar).visibility = View.GONE
        root.findViewById<View>(R.id.cloud_info_card_active_folder).visibility = View.GONE

        if (tree == null) {
            scroll.visibility = View.GONE
            error.visibility = View.VISIBLE
            error.findViewById<ImageView>(R.id.iv_error_image).setImageResource(R.drawable.ic_cloud_upload)
            error.findViewById<TextView>(R.id.tv_error_title).text = "No backup folder selected"
            error.findViewById<TextView>(R.id.tv_error_subtitle).text =
                "Choose a folder on this device or in a cloud-storage provider. BΛR☰ will use it for backup archives."
            error.findViewById<MaterialButton>(R.id.btn_error).apply {
                setText(R.string.backup_storage_location)
                setOnClickListener { chooseTree.launch(null) }
            }
            return
        }

        error.visibility = View.GONE
        scroll.visibility = View.VISIBLE
        root.findViewById<View>(R.id.cloud_info_card_storage).visibility = View.VISIBLE
        root.findViewById<TextView>(R.id.tv_account_id_label).text = "Selected storage folder"
        root.findViewById<TextView>(R.id.tv_account_id).text = tree.name ?: "Storage folder"
        root.findViewById<View>(R.id.tv_cloud_folder_label).visibility = View.GONE
        root.findViewById<View>(R.id.tv_cloud_folder_name).visibility = View.GONE
        root.findViewById<View>(R.id.cloud_actions_segment).visibility = View.VISIBLE
        root.findViewById<TextView>(R.id.tvUsage).setText(R.string.storage_info_not_provided)
        root.findViewById<View>(R.id.progressBarStorage).visibility = View.GONE
        root.findViewById<View>(R.id.tvUsedPercent).visibility = View.GONE

        root.findViewById<View>(R.id.cloud_info_card_warning).visibility = View.VISIBLE
        root.findViewById<TextView>(R.id.tv_title).text = "Backup storage note"
        root.findViewById<TextView>(R.id.tv_message).text =
            "Backup archives may contain private app files and Wi-Fi passwords. Store them only in a folder you trust."
    }
}
