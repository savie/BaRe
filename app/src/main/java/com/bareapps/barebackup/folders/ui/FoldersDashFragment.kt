package com.bareapps.barebackup.folders.ui

import android.os.Bundle
import android.text.format.Formatter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.PopupMenu
import android.widget.TextView
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.bareapps.barebackup.common.CloudStorageDestination
import com.bareapps.barebackup.home.HomeActivity
import com.bareapps.barebackup.views.QuickRecyclerView
import com.google.android.material.button.MaterialButton
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.text.DateFormat
import java.util.Date

/** Kotlin port of the reference defpackage.kp3 folder-backup tab fragment. */
class FoldersDashFragment : Fragment() {
    private val isCloud: Boolean by lazy { requireArguments().getBoolean(ARG_CLOUD) }
    private lateinit var listAdapter: FolderBackupsAdapter
    private lateinit var rootView: View

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.folders_dash_fragment, container, false).also { rootView = it }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        val recycler = view.findViewById<RecyclerView>(R.id.recycler_view)
        recycler.layoutManager = LinearLayoutManager(requireContext())
        listAdapter = FolderBackupsAdapter(
            onRestore = { entry -> (activity as? FoldersDashActivity)?.restoreBackup(entry) },
            onDelete = { entry -> (activity as? FoldersDashActivity)?.deleteBackup(entry) }
        )
        recycler.adapter = listAdapter
        view.findViewById<androidx.swiperefreshlayout.widget.SwipeRefreshLayout>(R.id.swipe_layout)
            .setOnRefreshListener { refresh() }
        view.findViewById<ExtendedFloatingActionButton>(R.id.btn_action).apply {
            setText(R.string.quick_actions)
            setOnClickListener {
                val popup = PopupMenu(requireContext(), this)
                popup.menu.add(getString(R.string.backup_folders)).setOnMenuItemClickListener {
                    (activity as? FoldersDashActivity)?.beginBackup(isCloud)
                    true
                }
                popup.menu.add(getString(R.string.restore_folders)).setOnMenuItemClickListener {
                    (activity as? FoldersDashActivity)?.beginRestoreFromFile()
                    true
                }
                popup.show()
            }
        }
        refresh()
    }

    fun refresh() {
        if (!isAdded || !::listAdapter.isInitialized) return
        rootView.findViewById<androidx.swiperefreshlayout.widget.SwipeRefreshLayout>(R.id.swipe_layout)
            .isRefreshing = true
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    if (isCloud) {
                        val tree = CloudStorageDestination.tree(requireContext())
                            ?: throw IllegalStateException("Choose a cloud storage folder in the Cloud tab first")
                        tree.listFiles()
                            .filter { it.isFile && it.name.orEmpty().endsWith(".zip", true) }
                            .map { file ->
                                FolderBackupEntry(
                                    name = file.name.orEmpty().removeSuffix(".zip"),
                                    modified = file.lastModified(),
                                    size = file.length(),
                                    cloudFile = file
                                )
                            }
                            .sortedByDescending { it.modified }
                    } else {
                        val directory = File(requireContext().filesDir, LOCAL_BACKUP_DIR)
                        directory.mkdirs()
                        directory.listFiles().orEmpty()
                            .filter { it.isFile && it.extension.equals("zip", true) }
                            .map { file ->
                                FolderBackupEntry(
                                    name = file.nameWithoutExtension,
                                    modified = file.lastModified(),
                                    size = file.length(),
                                    localFile = file
                                )
                            }
                            .sortedByDescending { it.modified }
                    }
                }
            }
            if (!isAdded) return@launch
            rootView.findViewById<androidx.swiperefreshlayout.widget.SwipeRefreshLayout>(R.id.swipe_layout)
                .isRefreshing = false
            result.onSuccess { entries -> showEntries(entries) }
                .onFailure { error ->
                    if (isCloud) showEmptyState(
                        error.message ?: "Cloud storage is not configured.",
                        cloudStorageMissing = true
                    ) else showEmptyState(error.message ?: "Could not load local folder backups.")
                }
        }
    }

    private fun showEntries(entries: List<FolderBackupEntry>) {
        listAdapter.submit(entries)
        val empty = entries.isEmpty()
        rootView.findViewById<RecyclerView>(R.id.recycler_view).visibility = if (empty) View.GONE else View.VISIBLE
        rootView.findViewById<View>(R.id.error_layout).visibility = if (empty) View.VISIBLE else View.GONE
        if (empty) {
            val error = rootView.findViewById<View>(R.id.error_layout)
            error.findViewById<TextView>(R.id.el_tv).text =
                if (isCloud) "No cloud folder backups yet." else "No local folder backups yet."
            error.findViewById<ImageView>(R.id.el_iv).setImageResource(R.drawable.ic_folder_full)
            val button = error.findViewById<MaterialButton>(R.id.el_btn)
            button.visibility = View.VISIBLE
            button.setText(R.string.backup_folders)
            button.setOnClickListener { (activity as? FoldersDashActivity)?.beginBackup(isCloud) }
        }
    }

    private fun showEmptyState(message: String, cloudStorageMissing: Boolean = false) {
        listAdapter.submit(emptyList())
        rootView.findViewById<RecyclerView>(R.id.recycler_view).visibility = View.GONE
        val error = rootView.findViewById<View>(R.id.error_layout)
        error.visibility = View.VISIBLE
        error.findViewById<TextView>(R.id.el_tv).text = message
        error.findViewById<ImageView>(R.id.el_iv).setImageResource(R.drawable.ic_folder_full)
        val button = error.findViewById<MaterialButton>(R.id.el_btn)
        button.visibility = View.VISIBLE
        if (cloudStorageMissing) {
            button.setText(R.string.backup_storage_location)
            button.setOnClickListener {
                startActivity(android.content.Intent(requireContext(), HomeActivity::class.java)
                    .addFlags(android.content.Intent.FLAG_ACTIVITY_CLEAR_TOP or android.content.Intent.FLAG_ACTIVITY_SINGLE_TOP)
                    .putExtra(HomeActivity.EXTRA_OPEN_CLOUD_TAB, true))
            }
        } else {
            button.setText(R.string.backup_folders)
            button.setOnClickListener { (activity as? FoldersDashActivity)?.beginBackup(isCloud) }
        }
    }

    private class FolderBackupsAdapter(
        private val onRestore: (FolderBackupEntry) -> Unit,
        private val onDelete: (FolderBackupEntry) -> Unit
    ) : RecyclerView.Adapter<FolderBackupsAdapter.Holder>() {
        private var entries: List<FolderBackupEntry> = emptyList()

        fun submit(newEntries: List<FolderBackupEntry>) {
            entries = newEntries
            notifyDataSetChanged()
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder =
            Holder(LayoutInflater.from(parent.context).inflate(R.layout.folders_dash_item, parent, false))

        override fun getItemCount(): Int = entries.size

        override fun onBindViewHolder(holder: Holder, position: Int) {
            val entry = entries[position]
            holder.title.text = entry.name
            holder.subtitle1.text = "Folder backup"
            holder.subtitle2.text = Formatter.formatFileSize(holder.itemView.context, entry.size)
            holder.subtitle3.text = DateFormat.getDateTimeInstance(DateFormat.MEDIUM, DateFormat.SHORT)
                .format(Date(entry.modified))
            holder.subtitle3.visibility = View.VISIBLE
            holder.icon.setImageResource(R.drawable.ic_folder_full)
            holder.checkbox.visibility = View.GONE
            holder.menu.visibility = View.VISIBLE
            holder.menuClick.visibility = View.VISIBLE
            holder.clickTarget.setOnClickListener { onRestore(entry) }
            holder.itemView.setOnClickListener { onRestore(entry) }
            holder.menuClick.setOnClickListener { anchor ->
                val popup = PopupMenu(anchor.context, anchor)
                popup.menu.add(anchor.context.getString(R.string.restore_folders)).setOnMenuItemClickListener {
                    onRestore(entry)
                    true
                }
                popup.menu.add(anchor.context.getString(R.string.delete)).setOnMenuItemClickListener {
                    onDelete(entry)
                    true
                }
                popup.show()
            }
        }

        class Holder(view: View) : RecyclerView.ViewHolder(view) {
            val title: TextView = view.findViewById(R.id.tv_title)
            val subtitle1: TextView = view.findViewById(R.id.tv_subtitle1)
            val subtitle2: TextView = view.findViewById(R.id.tv_subtitle2)
            val subtitle3: TextView = view.findViewById(R.id.tv_subtitle3)
            val icon: ImageView = view.findViewById(R.id.image_icon)
            val checkbox: View = view.findViewById(R.id.cb)
            val menu: ImageView = view.findViewById(R.id.iv_menu)
            val menuClick: View = view.findViewById(R.id.iv_menu_click_listener)
            val clickTarget: View = view.findViewById(R.id.click_listener)
        }
    }

    companion object {
        private const val ARG_CLOUD = "is_cloud"
        private const val LOCAL_BACKUP_DIR = "folder-backups"

        fun newInstance(isCloud: Boolean) = FoldersDashFragment().apply {
            arguments = Bundle().apply { putBoolean(ARG_CLOUD, isCloud) }
        }
    }
}

internal data class FolderBackupEntry(
    val name: String,
    val modified: Long,
    val size: Long,
    val localFile: File? = null,
    val cloudFile: DocumentFile? = null
)
