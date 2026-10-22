package com.bareapps.barebackup.home

import android.content.res.ColorStateList
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.google.android.material.button.MaterialButton

/**
 * Kotlin port of BareBackup's defpackage.ba2 shortcut adapter.
 * Its item contract is defpackage.d71: action id, label, icon, and color resource.
 */
internal class DashboardShortcutAdapter(
    private val items: List<DashboardShortcut>,
    private val compact: Boolean = false,
    private val onShortcutClick: (DashboardShortcut) -> Unit
) : RecyclerView.Adapter<DashboardShortcutAdapter.Holder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder {
        val layout = if (compact) R.layout.dash_shortcut_item_compact
        else R.layout.dash_shortcut_item_normal
        return Holder(LayoutInflater.from(parent.context).inflate(layout, parent, false))
    }

    override fun getItemCount(): Int = items.size

    override fun onBindViewHolder(holder: Holder, position: Int) {
        val item = items[position]
        val context = holder.itemView.context
        val color = context.getColor(item.colorRes)
        val tintedColor = colorWithAlpha(color, 5)
        val button = holder.itemView.findViewById<MaterialButton>(R.id.btn)
        val icon = holder.itemView.findViewById<ImageView>(R.id.image_icon)

        button.setBackgroundColor(tintedColor)
        button.strokeColor = ColorStateList.valueOf(colorWithAlpha(color, 20))
        button.setText(item.labelRes)
        button.rippleColor = ColorStateList.valueOf(colorWithAlpha(color, 77))
        icon.setImageResource(item.iconRes)
        icon.imageTintList = ColorStateList.valueOf(color)
        icon.backgroundTintList = ColorStateList.valueOf(colorWithAlpha(color, 75))
        button.setOnClickListener { onShortcutClick(item) }
        holder.itemView.setOnClickListener { onShortcutClick(item) }
    }

    private fun colorWithAlpha(color: Int, alphaPercent: Int): Int {
        val alpha = (android.graphics.Color.alpha(color) * alphaPercent / 100)
        return (color and 0x00ffffff) or (alpha shl 24)
    }

    internal class Holder(view: View) : RecyclerView.ViewHolder(view)
}
