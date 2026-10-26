package com.bareapps.barebackup.home

import android.content.res.ColorStateList
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import androidx.core.graphics.ColorUtils
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.google.android.material.button.MaterialButton
import com.google.android.material.color.MaterialColors
import kotlin.math.abs
import kotlin.math.min
import kotlin.math.sign

/** Kotlin port of reference defpackage.ba2 and its d71 item contract. */
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
        val rawColor = context.getColor(item.colorRes)
        val color = adjustedColor(rawColor, MaterialColors.getColor(context, R.attr.colorPrimary, rawColor))
        val button = holder.button
        button.setBackgroundColor(withAlpha(color, 5))
        button.strokeColor = ColorStateList.valueOf(withAlpha(color, 20))
        button.text = item.label
        button.rippleColor = ColorStateList.valueOf(withAlpha(color, 77))
        holder.icon.setImageResource(item.iconRes)
        holder.icon.imageTintList = ColorStateList.valueOf(color)
        holder.icon.backgroundTintList = ColorStateList.valueOf(withAlpha(color, 75))
        button.setOnClickListener { onShortcutClick(item) }
    }

    private fun adjustedColor(color: Int, primary: Int): Int {
        val itemHsl = FloatArray(3)
        val primaryHsl = FloatArray(3)
        ColorUtils.colorToHSL(color, itemHsl)
        ColorUtils.colorToHSL(primary, primaryHsl)
        val delta = ((primaryHsl[0] - itemHsl[0] + 540f) % 360f) - 180f
        val adjustment = min(abs(delta) * 0.5f, 15f) * sign(delta)
        itemHsl[0] = (itemHsl[0] + adjustment + 360f) % 360f
        return ColorUtils.HSLToColor(itemHsl)
    }

    private fun withAlpha(color: Int, percent: Int): Int =
        (color and 0x00ffffff) or ((android.graphics.Color.alpha(color) * percent / 100) shl 24)

    internal class Holder(view: View) : RecyclerView.ViewHolder(view) {
        val button: MaterialButton = view.findViewById(R.id.btn)
        val icon: ImageView = view.findViewById(R.id.image_icon)
    }
}
