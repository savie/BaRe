package com.bareapps.barebackup.home

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
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.bareapps.barebackup.views.QuickRecyclerView

/**
 * Dashboard port based on the decompiled SwiftBackup dashboard structure:
 * summary card + four category sections, each with backup and restore rows.
 * Feature operations are not yet ported; the UI reports that rather than silently no-op.
 */
class DashboardFragment : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.dash_fragment, container, false)

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        bindStorageSummary(view)
        view.findViewById<TextView>(R.id.tvRootAccess)?.setText(R.string.not_available)
        view.findViewById<TextView>(R.id.tvRootProvider)?.setText(R.string.root_access_needed)
        view.findViewById<View>(R.id.iv_refresh_root_access)?.visibility = View.INVISIBLE

        view.findViewById<QuickRecyclerView>(R.id.rvDashShortcutsDefault)?.apply {
            visibility = View.VISIBLE
            layoutManager = GridLayoutManager(context, 3)
            isNestedScrollingEnabled = false
            adapter = HomeShortcutPreviewAdapter(
                listOf(
                    PreviewShortcut(R.string.apps, R.drawable.ic_app),
                    PreviewShortcut(R.string.messages, R.drawable.ic_message_full),
                    PreviewShortcut(R.string.call_logs, R.drawable.ic_call_log),
                    PreviewShortcut(R.string.folders, R.drawable.ic_folder_full),
                    PreviewShortcut(R.string.wallpapers, R.drawable.ic_folder_full),
                    PreviewShortcut(R.string.wifi, R.drawable.ic_wifi_raster)
                )
            )
        }
        view.findViewById<View>(R.id.rvDashShortcutsCompact)?.visibility = View.GONE

        view.findViewById<View>(R.id.storage_space_view)?.setOnClickListener { showNotReady() }
        view.findViewById<View>(R.id.iv_switch)?.setOnClickListener { showNotReady() }
        view.findViewById<View>(R.id.iv_refresh_root_access)?.setOnClickListener { showNotReady() }

        bindCategory(
            view, R.id.dash_card_quick_actions_apps, R.string.quick_actions_apps, R.drawable.ic_app_tinted,
            PreviewAction(R.string.backup_all_apps, R.string.backup_all_apps_summary, R.drawable.ic_home_selector),
            PreviewAction(R.string.restore_all_apps, R.string.restore_all_apps_summary, R.drawable.ic_home_selector, true)
        )
        bindCategory(
            view, R.id.dash_card_quick_actions_messages, R.string.quick_actions_messages, R.drawable.ic_message_full,
            PreviewAction(R.string.backup_messages, R.string.backup_messages_summary, R.drawable.ic_home_selector),
            PreviewAction(R.string.restore_messages, R.string.restore_messages_summary, R.drawable.ic_home_selector, true)
        )
        bindCategory(
            view, R.id.dash_card_quick_actions_calls, R.string.quick_actions_calls, R.drawable.ic_call_log,
            PreviewAction(R.string.backup_call_logs, R.string.backup_call_logs_summary, R.drawable.ic_home_selector),
            PreviewAction(R.string.restore_call_logs, R.string.restore_call_logs_summary, R.drawable.ic_home_selector, true)
        )
        bindCategory(
            view, R.id.dash_card_quick_actions_folders, R.string.quick_actions_folders, R.drawable.ic_folder_full,
            PreviewAction(R.string.backup_folders, R.string.backup_folders_summary, R.drawable.ic_home_selector),
            PreviewAction(R.string.restore_folders, R.string.restore_folders_summary, R.drawable.ic_home_selector, true)
        )
    }

    private fun bindStorageSummary(root: View) {
        try {
            val stat = StatFs(Environment.getDataDirectory().absolutePath)
            val total = stat.totalBytes
            val available = stat.availableBytes
            val used = (total - available).coerceAtLeast(0L)
            val usage = root.findViewById<TextView>(R.id.tvUsage)
            usage?.text = getString(
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

    private fun bindCategory(
        root: View,
        cardId: Int,
        titleRes: Int,
        headerIconRes: Int,
        backup: PreviewAction,
        restore: PreviewAction
    ) {
        val card = root.findViewById<View>(cardId) ?: return
        card.findViewById<TextView>(R.id.tv_card_title).setText(titleRes)
        card.findViewById<ImageView>(R.id.iv_icon).apply {
            setImageResource(headerIconRes)
            visibility = View.VISIBLE
        }
        card.findViewById<View>(R.id.tv_root_needed).visibility = View.GONE
        card.findViewById<QuickRecyclerView>(R.id.rv_quick_actions).apply {
            layoutManager = LinearLayoutManager(context, RecyclerView.VERTICAL, false)
            isNestedScrollingEnabled = false
            adapter = QuickActionPreviewAdapter(listOf(backup, restore))
        }
    }

    private fun showNotReady() {
        Toast.makeText(requireContext(), R.string.intro_feature_not_available_yet, Toast.LENGTH_SHORT).show()
    }
}
