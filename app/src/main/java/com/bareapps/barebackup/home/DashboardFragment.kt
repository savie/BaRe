package com.bareapps.barebackup.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
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

        // Do not fabricate storage/root values. Keep the reference summary layout and use honest
        // unavailable states until the original storage/root ViewModel is ported.
        view.findViewById<TextView>(R.id.tvUsage)?.setText(R.string.storage_info_not_provided)
        view.findViewById<TextView>(R.id.tvRootAccess)?.setText(R.string.not_available)
        view.findViewById<TextView>(R.id.tvRootProvider)?.setText(R.string.root_access_needed)
        view.findViewById<View>(R.id.progressBarStorage)?.visibility = View.GONE
        view.findViewById<View>(R.id.tvUsedPercent)?.visibility = View.GONE

        view.findViewById<View>(R.id.storage_space_view)?.setOnClickListener { showNotReady() }
        view.findViewById<View>(R.id.iv_switch)?.setOnClickListener { showNotReady() }
        view.findViewById<View>(R.id.iv_refresh_root_access)?.setOnClickListener { showNotReady() }

        bindCategory(
            view, R.id.dash_card_quick_actions_apps, R.string.quick_actions_apps, R.drawable.ic_app_tinted,
            PreviewAction(R.string.backup_all_apps, R.string.backup_all_apps_summary, R.drawable.ic_app),
            PreviewAction(R.string.restore_all_apps, R.string.restore_all_apps_summary, R.drawable.ic_app, true)
        )
        bindCategory(
            view, R.id.dash_card_quick_actions_messages, R.string.quick_actions_messages, R.drawable.ic_message_full,
            PreviewAction(R.string.backup_messages, R.string.backup_messages_summary, R.drawable.ic_message_full),
            PreviewAction(R.string.restore_messages, R.string.restore_messages_summary, R.drawable.ic_message_full, true)
        )
        bindCategory(
            view, R.id.dash_card_quick_actions_calls, R.string.quick_actions_calls, R.drawable.ic_call_log,
            PreviewAction(R.string.backup_call_logs, R.string.backup_call_logs_summary, R.drawable.ic_call_log),
            PreviewAction(R.string.restore_call_logs, R.string.restore_call_logs_summary, R.drawable.ic_call_log, true)
        )
        bindCategory(
            view, R.id.dash_card_quick_actions_folders, R.string.quick_actions_folders, R.drawable.ic_folder_full,
            PreviewAction(R.string.backup_folders, R.string.backup_folders_summary, R.drawable.ic_folder_full),
            PreviewAction(R.string.restore_folders, R.string.restore_folders_summary, R.drawable.ic_folder_full, true)
        )
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
