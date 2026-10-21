package com.bareapps.barebackup.home.cloud

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.documentfile.provider.DocumentFile
import androidx.fragment.app.Fragment
import com.bareapps.barebackup.R
import com.bareapps.barebackup.common.CloudStorageDestination

/**
 * Independent storage destination setup using Android's Storage Access Framework.
 * This does not reuse SwiftBackup credentials or its private cloud backend.
 */
class CloudInfoFragment : Fragment() {
    private val preferences by lazy {
        requireContext().getSharedPreferences(CloudStorageDestination.PREFS_NAME, android.content.Context.MODE_PRIVATE)
    }

    private val chooseStorage = registerForActivityResult(ActivityResultContracts.OpenDocumentTree()) { uri ->
        if (uri != null) {
            val flags = Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION
            try {
                requireContext().contentResolver.takePersistableUriPermission(uri, flags)
            } catch (_: Exception) {
                // Some document providers return only transient grants; keep the current session usable.
            }
            preferences.edit().putString(CloudStorageDestination.KEY_TREE_URI, uri.toString()).apply()
            view?.let(::bindStorageState)
        }
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.cloud_info_fragment, container, false)

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        view.findViewById<View>(R.id.cloud_fragment_progress_bar)?.visibility = View.GONE
        view.findViewById<View>(R.id.error_layout)?.visibility = View.GONE
        view.findViewById<View>(R.id.cloud_info_card_active_folder)?.visibility = View.GONE
        view.findViewById<View>(R.id.btn_i_understand)?.setOnClickListener {
            view.findViewById<View>(R.id.cloud_info_card_warning)?.visibility = View.GONE
        }
        view.findViewById<View>(R.id.dropdown_active_tag)?.setOnClickListener {
            chooseStorage.launch(savedTreeUri())
        }
        view.findViewById<View>(R.id.iv_save_settings)?.setOnClickListener {
            chooseStorage.launch(savedTreeUri())
        }
        view.findViewById<View>(R.id.btn_disconnect)?.setOnClickListener {
            val saved = savedTreeUri()
            if (saved != null) {
                try {
                    requireContext().contentResolver.releasePersistableUriPermission(
                        saved,
                        Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION
                    )
                } catch (_: Exception) { }
            }
            preferences.edit().remove(CloudStorageDestination.KEY_TREE_URI).apply()
            bindStorageState(view)
            Toast.makeText(requireContext(), "Storage destination disconnected", Toast.LENGTH_SHORT).show()
        }
        bindStorageState(view)
    }

    private fun bindStorageState(root: View) {
        val uri = savedTreeUri()
        val document = uri?.let { runCatching { DocumentFile.fromTreeUri(requireContext(), it) }.getOrNull() }
        val connected = document?.isDirectory == true
        val name = document?.name?.takeIf { it.isNotBlank() } ?: "Selected storage"

        root.findViewById<TextView>(R.id.tv_account_id_label)?.text =
            if (connected) "Storage destination" else "Connection status"
        root.findViewById<TextView>(R.id.tv_account_id)?.text =
            if (connected) name else getString(R.string.not_connected)
        root.findViewById<TextView>(R.id.tvUsage)?.text =
            if (connected) "Destination selected. Free space is managed by the document provider."
            else "Choose a storage destination such as a supported cloud drive or a folder on this device."
        root.findViewById<View>(R.id.btn_disconnect)?.apply {
            visibility = if (connected) View.VISIBLE else View.GONE
            isEnabled = connected
        }
        root.findViewById<View>(R.id.tv_cloud_folder_label)?.visibility =
            if (connected) View.VISIBLE else View.GONE
        root.findViewById<TextView>(R.id.tv_cloud_folder_name)?.apply {
            text = name
            visibility = if (connected) View.VISIBLE else View.GONE
        }
        root.findViewById<View>(R.id.cloud_actions_segment)?.visibility = View.GONE
        root.findViewById<View>(R.id.dropdown_active_tag)?.let { dropdown ->
            dropdown.findViewById<TextView>(R.id.tv_header)?.text = "Storage destination"
            dropdown.findViewById<TextView>(R.id.tv_value)?.text =
                if (connected) name else "Choose a destination"
            dropdown.findViewById<ImageView>(R.id.iv_icon)?.setImageResource(R.drawable.ic_cloud)
        }
    }

    private fun savedTreeUri(): Uri? = preferences.getString(CloudStorageDestination.KEY_TREE_URI, null)?.let {
        runCatching { Uri.parse(it) }.getOrNull()
    }

}
