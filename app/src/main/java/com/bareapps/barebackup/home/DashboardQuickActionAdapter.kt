package com.bareapps.barebackup.home

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.google.android.material.button.MaterialButton

/** Adapter ported from reference defpackage.dd6/ad6 using the existing quick_action_item layout. */
internal class DashboardQuickActionAdapter(
    private val actions: List<DashboardQuickAction>,
    private val onAction: (DashboardQuickAction, Boolean) -> Unit
) : RecyclerView.Adapter<DashboardQuickActionAdapter.Holder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder =
        Holder(LayoutInflater.from(parent.context).inflate(R.layout.quick_action_item, parent, false))

    override fun getItemCount(): Int = actions.size

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val action = actions[position]
        holder.title.setText(action.titleRes)
        if (action.summaryRes != 0) {
            holder.subtitle.visibility = View.VISIBLE
            holder.subtitle.setText(action.summaryRes)
        } else {
            holder.subtitle.visibility = View.GONE
        }
        holder.rootRequired.visibility = if (action.requiresRoot) View.VISIBLE else View.GONE
        holder.pin.visibility = View.GONE
        holder.localButton.visibility = if (action.cloudOnly) View.GONE else View.VISIBLE
        holder.localButton.setText(if (action.restores) R.string.from_device else R.string.to_device)
        holder.cloudButton.setText(if (action.restores) R.string.from_cloud else R.string.to_cloud)
        holder.localButton.setOnClickListener { onAction(action, false) }
        holder.cloudButton.setOnClickListener { onAction(action, true) }
        holder.card.setOnClickListener { onAction(action, action.cloudOnly) }
    }

    internal class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val card: View = view.findViewById(R.id.item_card)
        val title: TextView = view.findViewById(R.id.tv_title)
        val subtitle: TextView = view.findViewById(R.id.tv_subtitle1)
        val rootRequired: ImageView = view.findViewById(R.id.iv_root_needed)
        val pin: ImageView = view.findViewById(R.id.iv_pin)
        val localButton: MaterialButton = view.findViewById(R.id.btn_from_local)
        val cloudButton: MaterialButton = view.findViewById(R.id.btn_from_cloud)
    }
}
