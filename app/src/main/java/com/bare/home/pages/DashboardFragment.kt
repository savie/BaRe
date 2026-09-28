package com.bare.home.pages

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.ImageView
import android.os.Environment
import android.os.StatFs
import java.util.Locale
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.RecyclerView
import com.bare.R
import com.bare.views.QuickRecyclerView

class DashboardFragment : Fragment() {
    private data class QuickAction(val title: Int, val summary: Int, val root: Boolean = false)

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, state: Bundle?): View =
        inflater.inflate(R.layout.dash_fragment, container, false)

    override fun onViewCreated(view: View, state: Bundle?) {
        super.onViewCreated(view, state)

        val storage = StatFs(Environment.getDataDirectory().path)
        val total = storage.totalBytes.coerceAtLeast(1L)
        val free = storage.availableBytes.coerceIn(0L, total)
        val used = total - free
        view.findViewById<TextView>(R.id.tvUsage).text =
            formatBytes(used) + " / " + formatBytes(total)
        view.findViewById<TextView>(R.id.tvUsedPercent).apply {
            visibility = View.VISIBLE
            text = String.format(Locale.ENGLISH, "%.0f%% used", used.toDouble() * 100.0 / total.toDouble())
        }
        view.findViewById<TextView>(R.id.tvRootAccess).text = getString(R.string.root_access_not_available)
        view.findViewById<TextView>(R.id.tvRootProvider).text = getString(R.string.root_status)

        bindQuickCard(
            view.findViewById(R.id.dash_card_quick_actions_apps),
            R.string.quick_actions_apps,
            listOf(
                QuickAction(R.string.backup_all_apps, R.string.backup_all_apps_summary),
                QuickAction(R.string.backup_missing_apps, R.string.backup_missing_apps_summary, true),
                QuickAction(R.string.backup_updated_apps, R.string.backup_updated_apps_summary, true),
                QuickAction(R.string.redo_backups, R.string.redo_backups_message, true),
                QuickAction(R.string.sync_device_backups_to_cloud, R.string.sync_device_backups_to_cloud_message),
                QuickAction(R.string.restore_all_apps, R.string.restore_all_apps_summary, true),
                QuickAction(R.string.restore_missing_apps, R.string.restore_missing_apps_summary, true),
                QuickAction(R.string.restore_newer_versions, R.string.restore_newer_versions_summary, true)
            )
        )
        bindQuickCard(
            view.findViewById(R.id.dash_card_quick_actions_messages),
            R.string.quick_actions_messages,
            listOf(
                QuickAction(R.string.backup_messages, R.string.backup_messages_summary),
                QuickAction(R.string.restore_messages, R.string.restore_messages_summary, true)
            )
        )
        bindQuickCard(
            view.findViewById(R.id.dash_card_quick_actions_calls),
            R.string.quick_actions_calls,
            listOf(
                QuickAction(R.string.backup_call_logs, R.string.backup_call_logs_summary),
                QuickAction(R.string.restore_call_logs, R.string.restore_call_logs_summary, true)
            )
        )
        bindQuickCard(
            view.findViewById(R.id.dash_card_quick_actions_folders),
            R.string.quick_actions_folders,
            listOf(
                QuickAction(R.string.backup_folders, R.string.backup_folders_summary),
                QuickAction(R.string.restore_folders, R.string.restore_folders_summary, true)
            )
        )
    }

    private fun formatBytes(bytes: Long): String {
        if (bytes < 1024L) return bytes.toString() + " B"
        val units = arrayOf("KB", "MB", "GB", "TB")
        var value = bytes.toDouble()
        var index = -1
        while (value >= 1024.0 && index < units.lastIndex) {
            value /= 1024.0
            index++
        }
        return String.format(Locale.ENGLISH, "%.1f %s", value, units[index])
    }

    private fun bindQuickCard(card: View, title: Int, actions: List<QuickAction>) {
        card.findViewById<TextView>(R.id.tv_card_title).setText(title)
        val recycler = card.findViewById<QuickRecyclerView>(R.id.rv_quick_actions)
        recycler.setLinearLayoutManager(RecyclerView.VERTICAL)
        recycler.adapter = QuickActionAdapter(actions)
    }

    private class QuickActionAdapter(
        private val items: List<QuickAction>
    ) : RecyclerView.Adapter<QuickActionViewHolder>() {
        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): QuickActionViewHolder {
            val view = LayoutInflater.from(parent.context).inflate(R.layout.quick_action_item, parent, false)
            return QuickActionViewHolder(view)
        }

        override fun onBindViewHolder(holder: QuickActionViewHolder, position: Int) {
            val item = items[position]
            holder.itemView.findViewById<TextView>(R.id.tv_title).setText(item.title)
            holder.itemView.findViewById<TextView>(R.id.tv_subtitle1).setText(item.summary)
            holder.itemView.findViewById<View>(R.id.iv_root_needed).visibility =
                if (item.root) View.VISIBLE else View.GONE
            holder.itemView.findViewById<ImageView>(R.id.iv_pin).setImageResource(R.drawable.ic_pin)
            holder.itemView.setOnClickListener(null)
            holder.itemView.findViewById<View>(R.id.btn_from_local).setOnClickListener(null)
            holder.itemView.findViewById<View>(R.id.btn_from_cloud).setOnClickListener(null)
        }

        override fun getItemCount(): Int = items.size
    }

    private class QuickActionViewHolder(view: View) : RecyclerView.ViewHolder(view)
}
