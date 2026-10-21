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

/** Home dashboard uses the existing reference XML and real category-specific icons. */
class DashboardFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.dash_fragment, container, false)

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        view.findViewById<TextView>(R.id.tvUsage)?.setText(R.string.storage_info_not_provided)
        view.findViewById<View>(R.id.progressBarStorage)?.visibility = View.GONE
        view.findViewById<View>(R.id.tvUsedPercent)?.visibility = View.GONE

        view.findViewById<TextView>(R.id.tvRootAccess)?.setText(R.string.not_available)
        view.findViewById<TextView>(R.id.tvRootProvider)?.setText(R.string.root_access_needed)
        view.findViewById<ImageView>(R.id.iv_refresh_root_access)?.visibility = View.INVISIBLE

        // The BΛR☰ reference uses direct action rows, not the unrelated horizontal shortcut chips.
        view.findViewById<QuickRecyclerView>(R.id.rvDashShortcutsDefault)?.visibility = View.GONE
        view.findViewById<View>(R.id.rvDashShortcutsCompact)?.visibility = View.GONE

        bindQuickAction(view, R.id.dash_card_quick_actions_apps, R.string.apps,
            PreviewAction(R.string.backup_all_apps, R.string.backup_all_apps_summary, R.drawable.ic_home_selector))
        bindQuickAction(view, R.id.dash_card_quick_actions_messages, R.string.backup_messages,
            PreviewAction(R.string.backup_messages, R.string.backup_messages_summary, R.drawable.ic_home_selector))
        bindQuickAction(view, R.id.dash_card_quick_actions_calls, R.string.backup_call_logs,
            PreviewAction(R.string.backup_call_logs, R.string.backup_call_logs_summary, R.drawable.ic_home_selector))
        bindQuickAction(view, R.id.dash_card_quick_actions_folders, R.string.backup_folders,
            PreviewAction(R.string.backup_folders, R.string.backup_folders_summary, R.drawable.ic_home_selector))
    }

    private fun bindQuickAction(root: View, cardId: Int, titleRes: Int, action: PreviewAction) {
        val card = root.findViewById<View>(cardId) ?: return
        card.findViewById<TextView>(R.id.tv_card_title).setText(titleRes)
        card.findViewById<View>(R.id.tv_root_needed).visibility = View.GONE
        card.findViewById<ImageView>(R.id.iv_icon).visibility = View.GONE
        card.findViewById<QuickRecyclerView>(R.id.rv_quick_actions).apply {
            layoutManager = LinearLayoutManager(context, RecyclerView.VERTICAL, false)
            adapter = QuickActionPreviewAdapter(listOf(action))
        }
    }
}
