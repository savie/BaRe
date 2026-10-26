package com.bareapps.barebackup.home

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R

/**
 * Kotlin port of the reference account menu adapter (defpackage.a7).
 * The row contract follows defpackage.q7 and the existing more_list_item layout.
 */
internal class AccountItemsAdapter(
    private val items: List<AccountItem>,
    private val onItemClick: (AccountItem) -> Unit
) : RecyclerView.Adapter<AccountItemsAdapter.Holder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder =
        Holder(LayoutInflater.from(parent.context).inflate(R.layout.more_list_item, parent, false))

    override fun getItemCount(): Int = items.size

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        holder.title.text = holder.itemView.context.getString(item.titleRes)
        holder.icon.setImageResource(item.iconRes)
        holder.itemCard.setOnClickListener { onItemClick(item) }
    }

    internal class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val itemCard: View = view.findViewById(R.id.item_card)
        val title: TextView = view.findViewById(R.id.tv_more_list_item)
        val icon: ImageView = view.findViewById(R.id.iv_more_list_item)
    }
}
