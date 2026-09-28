package com.bare.home.pages

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.ImageView
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

        bindQuickCard(
            view.findViewById(R.id.dash_card_quick_actions_apps),
            R.string.quick_actions_apps,
            listOf(
                QuickAction(R.string.quick_backup_apps, R.string.backup_all_apps_summary, true),
                QuickAction(R.string.quick_restore_apps, R.string.restore_all_apps_summary, true)
            )
        )
        bindQuickCard(
            view.findViewById(R.id.dash_card_quick_actions_messages),
            R.string.quick_actions_messages,
            listOf(
                QuickAction(R.string.backup_messages, R.string.backup_messages_summary),
                QuickAction(R.string.restore_messages, R.string.restore_messages_summary)
            )
        )
        bindQuickCard(
            view.findViewById(R.id.dash_card_quick_actions_calls),
            R.string.quick_actions_calls,
            listOf(
                QuickAction(R.string.call_logs_backup, R.string.call_logs_backups_settings_summary),
                QuickAction(R.string.call_logs_backups, R.string.call_logs_backups_settings_summary)
            )
        )
        bindQuickCard(
            view.findViewById(R.id.dash_card_quick_actions_folders),
            R.string.quick_actions_folders,
            listOf(
                QuickAction(R.string.backup_folders, R.string.backup_folders_summary),
                QuickAction(R.string.restore_folders, R.string.restore_folders_summary)
            )
        )
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
