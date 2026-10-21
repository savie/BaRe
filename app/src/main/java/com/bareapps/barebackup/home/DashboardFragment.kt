package com.bareapps.barebackup.home

import android.app.WallpaperManager
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Bundle
import android.os.Environment
import android.os.StatFs
import android.text.format.Formatter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.bareapps.barebackup.common.CloudStorageDestination
import com.bareapps.barebackup.appslist.ui.list.AppListActivity
import com.bareapps.barebackup.folders.ui.FoldersDashActivity
import com.bareapps.barebackup.intro.IntroPermissionGrantCoordinator
import com.bareapps.barebackup.messagescalls.dash.CallsDashActivity
import com.bareapps.barebackup.messagescalls.dash.MessagesDashActivity
import com.bareapps.barebackup.walls.WallsDashActivity
import com.bareapps.barebackup.wifi.WifiActivity
import com.bareapps.barebackup.views.QuickRecyclerView
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/** Dashboard fragment mapped to reference defpackage.x92 and its quick-action model/adapters. */
class DashboardFragment : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.dash_fragment, container, false)

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        bindStorageSummary(view)
        bindRootStatus(view)

        view.findViewById<QuickRecyclerView>(R.id.rvDashShortcutsDefault)?.apply {
            visibility = View.VISIBLE
            layoutManager = GridLayoutManager(context, 3)
            isNestedScrollingEnabled = false
            adapter = DashboardShortcutAdapter(buildShortcutItems(), onShortcutClick = ::openShortcut)
        }
        view.findViewById<View>(R.id.rvDashShortcutsCompact)?.visibility = View.GONE

        bindCategory(
            view, R.id.dash_card_quick_actions_apps, R.string.quick_actions_apps, R.drawable.ic_app_tinted,
            listOf(
                DashboardQuickAction("ID_BACKUP_ALL_APPS", R.string.backup_all_apps, R.string.backup_all_apps_summary, false, DashboardQuickAction.APPS),
                DashboardQuickAction("ID_BACKUP_PENDING_APPS", R.string.backup_missing_apps, R.string.backup_missing_apps_summary, false, DashboardQuickAction.APPS),
                DashboardQuickAction("ID_BACKUP_UPDATED_APPS", R.string.backup_updated_apps, R.string.backup_updated_apps_summary, false, DashboardQuickAction.APPS),
                DashboardQuickAction("ID_BACKUP_REDO_APPS", R.string.redo_backups, R.string.redo_backups_message, false, DashboardQuickAction.APPS),
                DashboardQuickAction("ID_BACKUP_SYNC_APPS", R.string.sync_device_backups_to_cloud, R.string.sync_device_backups_to_cloud_message, false, DashboardQuickAction.APPS, cloudOnly = true),
                DashboardQuickAction("ID_RESTORE_ALL_APPS", R.string.restore_all_apps, R.string.restore_all_apps_summary, true, DashboardQuickAction.APPS),
                DashboardQuickAction("ID_RESTORE_MISSING_APPS", R.string.restore_missing_apps, R.string.restore_missing_apps_summary, true, DashboardQuickAction.APPS),
                DashboardQuickAction("ID_RESTORE_NEW_VERSIONS_APPS", R.string.restore_newer_versions, R.string.restore_newer_versions_summary, true, DashboardQuickAction.APPS)
            )
        )
        val hasTelephony = requireContext().packageManager.hasSystemFeature(PackageManager.FEATURE_TELEPHONY)
        bindCategory(
            view, R.id.dash_card_quick_actions_messages, R.string.quick_actions_messages, R.drawable.ic_message_full,
            if (hasTelephony) listOf(
                DashboardQuickAction("ID_BACKUP_MESSAGES", R.string.backup_messages, R.string.backup_messages_summary, false, DashboardQuickAction.MESSAGES),
                DashboardQuickAction("ID_RESTORE_MESSAGES", R.string.restore_messages, R.string.restore_messages_summary, true, DashboardQuickAction.MESSAGES)
            ) else emptyList()
        )
        bindCategory(
            view, R.id.dash_card_quick_actions_calls, R.string.quick_actions_calls, R.drawable.ic_call_log,
            if (hasTelephony) listOf(
                DashboardQuickAction("ID_BACKUP_CALLS", R.string.backup_call_logs, R.string.backup_call_logs_summary, false, DashboardQuickAction.CALLS),
                DashboardQuickAction("ID_RESTORE_CALLS", R.string.restore_call_logs, R.string.restore_call_logs_summary, true, DashboardQuickAction.CALLS)
            ) else emptyList()
        )
        bindCategory(
            view, R.id.dash_card_quick_actions_folders, R.string.quick_actions_folders, R.drawable.ic_folder_full,
            listOf(
                DashboardQuickAction("ID_BACKUP_FOLDERS", R.string.backup_folders, R.string.backup_folders_summary, false, DashboardQuickAction.FOLDERS),
                DashboardQuickAction("ID_RESTORE_FOLDERS", R.string.restore_folders, R.string.restore_folders_summary, true, DashboardQuickAction.FOLDERS)
            )
        )
    }

    private fun buildShortcutItems(): List<DashboardShortcut> {
        val context = requireContext()
        val items = mutableListOf(
            DashboardShortcut(1, getString(R.string.apps), R.drawable.ic_app, R.color.apps)
        )
        val hasTelephony = context.packageManager.hasSystemFeature(PackageManager.FEATURE_TELEPHONY)
        if (hasTelephony) {
            items += DashboardShortcut(2, getString(R.string.messages), R.drawable.ic_message_full, R.color.messages)
            items += DashboardShortcut(3, getString(R.string.call_logs), R.drawable.ic_call_log, R.color.calls)
        }
        val wallpaperSupported = try {
            WallpaperManager.getInstance(context).isWallpaperSupported
        } catch (_: Exception) {
            false
        }
        items += DashboardShortcut(6, getString(R.string.folders), R.drawable.ic_folder_full, R.color.folders)
        if (wallpaperSupported) {
            items += DashboardShortcut(4, getString(R.string.wallpapers), R.drawable.ic_photo_full, R.color.walls)
        }
        items += DashboardShortcut(5, getString(R.string.wifi), R.drawable.ic_wifi_full, R.color.wifi)
        return items
    }
    private fun openShortcut(item: DashboardShortcut) {
        val intent = when (item.actionId) {
            1 -> Intent(requireContext(), AppListActivity::class.java)
            2 -> Intent(requireContext(), MessagesDashActivity::class.java)
            3 -> Intent(requireContext(), CallsDashActivity::class.java)
            4 -> Intent(requireContext(), WallsDashActivity::class.java)
            5 -> Intent(requireContext(), WifiActivity::class.java)
            6 -> Intent(requireContext(), FoldersDashActivity::class.java)
            else -> return
        }
        startActivity(intent)
    }

    private fun bindCategory(
        root: View,
        cardId: Int,
        titleRes: Int,
        headerIconRes: Int,
        actions: List<DashboardQuickAction>
    ) {
        val card = root.findViewById<View>(cardId) ?: return
        card.findViewById<TextView>(R.id.tv_card_title).setText(titleRes)
        card.findViewById<ImageView>(R.id.iv_icon).setImageResource(headerIconRes)
        card.findViewById<QuickRecyclerView>(R.id.rv_quick_actions).apply {
            layoutManager = LinearLayoutManager(context, RecyclerView.VERTICAL, false)
            isNestedScrollingEnabled = false
            adapter = DashboardQuickActionAdapter(actions) { action, cloud ->
                if (cloud && !action.restores && CloudStorageDestination.displayName(requireContext()).isNullOrBlank()) {
                    (activity as? HomeActivity)?.selectCloudTab()
                } else {
                    openQuickAction(action, cloud)
                }
            }
        }
        card.visibility = if (actions.isEmpty()) View.GONE else View.VISIBLE
    }

    private fun openQuickAction(action: DashboardQuickAction, useCloud: Boolean) {
        val intent = when (action.category) {
            DashboardQuickAction.APPS -> Intent(requireContext(), AppListActivity::class.java)
            DashboardQuickAction.MESSAGES -> Intent(requireContext(), MessagesDashActivity::class.java)
            DashboardQuickAction.CALLS -> Intent(requireContext(), CallsDashActivity::class.java)
            DashboardQuickAction.FOLDERS -> Intent(requireContext(), FoldersDashActivity::class.java)
            else -> return
        }.putExtra(EXTRA_OPERATION, if (action.restores) OP_RESTORE else OP_BACKUP)
            .putExtra(EXTRA_ACTION_ID, action.referenceId)
            .putExtra(EXTRA_USE_CLOUD, useCloud)
        startActivity(intent)
    }

    private fun bindRootStatus(root: View) {
        root.findViewById<View>(R.id.iv_refresh_root_access)?.setOnClickListener { checkRootStatus(root) }
        checkRootStatus(root)
    }

    private fun checkRootStatus(root: View) {
        viewLifecycleOwner.lifecycleScope.launch {
            val hasRoot = withContext(Dispatchers.IO) { IntroPermissionGrantCoordinator.isRootAvailable() }
            if (!isAdded || view !== root) return@launch
            root.findViewById<TextView>(R.id.tvRootAccess)?.setText(
                if (hasRoot) R.string.granted else R.string.not_available
            )
            root.findViewById<TextView>(R.id.tvRootProvider)?.text =
                if (hasRoot) "su" else getString(R.string.root_access_needed)
            root.findViewById<View>(R.id.iv_refresh_root_access)?.isSelected = hasRoot
        }
    }

    private fun bindStorageSummary(root: View) {
        try {
            val stat = StatFs(Environment.getDataDirectory().absolutePath)
            val total = stat.totalBytes
            val available = stat.availableBytes
            val used = (total - available).coerceAtLeast(0L)
            root.findViewById<TextView>(R.id.tvUsage)?.text = getString(
                R.string.free_storage_of_total_text,
                Formatter.formatFileSize(requireContext(), available),
                Formatter.formatFileSize(requireContext(), total)
            )
            root.findViewById<View>(R.id.progressBarStorage)?.let { progress ->
                if (progress is com.google.android.material.progressindicator.LinearProgressIndicator) {
                    progress.max = 100
                    progress.setProgressCompat(if (total > 0) ((used * 100) / total).toInt() else 0, false)
                }
                progress.visibility = View.VISIBLE
            }
            root.findViewById<TextView>(R.id.tvUsedPercent)?.apply {
                text = "${if (total > 0) ((used * 100) / total).toInt() else 0}% used"
                visibility = View.VISIBLE
            }
        } catch (_: Exception) {
            root.findViewById<TextView>(R.id.tvUsage)?.setText(R.string.storage_info_not_provided)
            root.findViewById<View>(R.id.progressBarStorage)?.visibility = View.GONE
            root.findViewById<View>(R.id.tvUsedPercent)?.visibility = View.GONE
        }
    }

    companion object {
        const val EXTRA_OPERATION = "com.bareapps.barebackup.extra.OPERATION"
        const val EXTRA_ACTION_ID = "com.bareapps.barebackup.extra.ACTION_ID"
        const val EXTRA_USE_CLOUD = "com.bareapps.barebackup.extra.USE_CLOUD"
        const val OP_BACKUP = "backup"
        const val OP_RESTORE = "restore"
    }
}
