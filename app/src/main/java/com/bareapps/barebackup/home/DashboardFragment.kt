package com.bareapps.barebackup.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.bareapps.barebackup.views.QuickRecyclerView

/** Home dashboard. The reference layouts and resource strings remain the source of truth for presentation. */
class DashboardFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.dash_fragment, container, false)

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        view.findViewById<TextView>(R.id.tvUsage)?.setText(R.string.storage_info_not_provided)
        view.findViewById<View>(R.id.progressBarStorage)?.visibility = View.GONE
        view.findViewById<View>(R.id.tvUsedPercent)?.visibility = View.GONE

        // Do not imply elevated access is available before root/Shizuku detection is implemented.
        view.findViewById<TextView>(R.id.tvRootAccess)?.setText(R.string.not_available)
        view.findViewById<TextView>(R.id.tvRootProvider)?.setText(R.string.root_access_needed)
        view.findViewById<ImageView>(R.id.iv_refresh_root_access)?.visibility = View.INVISIBLE

        val shortcuts = view.findViewById<QuickRecyclerView>(R.id.rvDashShortcutsDefault)
        shortcuts.layoutManager = LinearLayoutManager(requireContext(), RecyclerView.HORIZONTAL, false)
        shortcuts.adapter = HomeShortcutPreviewAdapter(
            listOf(
                PreviewShortcut(R.string.apps, R.drawable.ic_home_selector),
                PreviewShortcut(R.string.backup_messages, R.drawable.ic_cloud_selector),
                PreviewShortcut(R.string.backup_call_logs, R.drawable.ic_clock_selector),
                PreviewShortcut(R.string.backup_folders, R.drawable.ic_person_selector)
            )
        )
        shortcuts.visibility = View.VISIBLE
        view.findViewById<View>(R.id.rvDashShortcutsCompact)?.visibility = View.GONE

        bindQuickAction(
            view, R.id.dash_card_quick_actions_apps, R.string.apps,
            listOf(PreviewAction(R.string.backup_all_apps, R.string.backup_all_apps_summary))
        )
        bindQuickAction(
            view, R.id.dash_card_quick_actions_messages, R.string.backup_messages,
            listOf(PreviewAction(R.string.backup_messages, R.string.backup_messages_summary))
        )
        bindQuickAction(
            view, R.id.dash_card_quick_actions_calls, R.string.backup_call_logs,
            listOf(PreviewAction(R.string.backup_call_logs, R.string.backup_call_logs_summary))
        )
        bindQuickAction(
            view, R.id.dash_card_quick_actions_folders, R.string.backup_folders,
            listOf(PreviewAction(R.string.backup_folders, R.string.backup_folders_summary))
        )
    }

    private fun bindQuickAction(
        root: View,
        cardId: Int,
        titleRes: Int,
        actions: List<PreviewAction>
    ) {
        val card = root.findViewById<View>(cardId) ?: return
        card.findViewById<TextView>(R.id.tv_card_title).setText(titleRes)
        card.findViewById<View>(R.id.tv_root_needed).visibility = View.GONE
        card.findViewById<ImageView>(R.id.iv_icon).visibility = View.GONE
        card.findViewById<QuickRecyclerView>(R.id.rv_quick_actions).apply {
            layoutManager = LinearLayoutManager(context, RecyclerView.VERTICAL, false)
            adapter = QuickActionPreviewAdapter(actions)
        }
    }
}
