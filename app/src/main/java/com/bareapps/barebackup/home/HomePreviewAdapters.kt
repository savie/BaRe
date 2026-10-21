package com.bareapps.barebackup.home

import android.graphics.Typeface
import android.util.TypedValue
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.google.android.material.button.MaterialButton

/** Static presentation models for the reference home surfaces. Actions intentionally do not start work yet. */
internal data class PreviewAction(val titleRes: Int, val summaryRes: Int, val iconRes: Int)

internal class QuickActionPreviewAdapter(
    private val actions: List<PreviewAction>
) : RecyclerView.Adapter<QuickActionPreviewAdapter.ActionHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ActionHolder =
        ActionHolder(LayoutInflater.from(parent.context)
            .inflate(R.layout.home_search_quick_action_item, parent, false))

    override fun onBindViewHolder(holder: ActionHolder, position: Int) {
        val action = actions[position]
        holder.title.setText(action.titleRes)
        holder.summary.setText(action.summaryRes)
        holder.icon.setImageResource(action.iconRes)
        holder.icon.visibility = View.VISIBLE
        holder.fromDevice.visibility = View.GONE
        holder.fromCloud.visibility = View.GONE
    }

    override fun getItemCount(): Int = actions.size

    internal class ActionHolder(view: View) : RecyclerView.ViewHolder(view) {
        val title: TextView = view.findViewById(R.id.tv_title)
        val summary: TextView = view.findViewById(R.id.tv_subtitle)
        val icon: ImageView = view.findViewById(R.id.iv_icon)
        val fromDevice: MaterialButton = view.findViewById(R.id.btn_local)
        val fromCloud: MaterialButton = view.findViewById(R.id.btn_cloud)
    }
}

internal data class PreviewShortcut(val titleRes: Int, val iconRes: Int)

internal class HomeShortcutPreviewAdapter(
    private val shortcuts: List<PreviewShortcut>
) : RecyclerView.Adapter<HomeShortcutPreviewAdapter.ShortcutHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ShortcutHolder =
        ShortcutHolder(LayoutInflater.from(parent.context)
            .inflate(R.layout.dash_shortcut_item_normal, parent, false))

    override fun onBindViewHolder(holder: ShortcutHolder, position: Int) {
        val shortcut = shortcuts[position]
        holder.button.setText(shortcut.titleRes)
        holder.icon.setImageResource(shortcut.iconRes)
        holder.button.setOnClickListener { }
    }

    override fun getItemCount(): Int = shortcuts.size

    internal class ShortcutHolder(view: View) : RecyclerView.ViewHolder(view) {
        val button: MaterialButton = view.findViewById(R.id.btn)
        val icon: ImageView = view.findViewById(R.id.image_icon)
    }
}

/** Settings rows are built in Kotlin to avoid inflating a missing decompiled custom view. */
internal data class PreviewSetting(val titleRes: Int, val iconRes: Int)

internal class AccountSettingsPreviewAdapter(
    private val settings: List<PreviewSetting>
) : RecyclerView.Adapter<AccountSettingsPreviewAdapter.SettingHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): SettingHolder {
        val context = parent.context
        val density = context.resources.displayMetrics.density
        val row = LinearLayout(context).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            layoutParams = RecyclerView.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT)
            minimumHeight = (56 * density).toInt()
            setPadding((16 * density).toInt(), (8 * density).toInt(),
                (16 * density).toInt(), (8 * density).toInt())
            isClickable = true
            isFocusable = true
            val value = TypedValue()
            context.theme.resolveAttribute(android.R.attr.selectableItemBackground, value, true)
            setBackgroundResource(value.resourceId)
        }
        val leading = ImageView(context).apply {
            setImageResource(R.drawable.ic_chevron_right)
            val size = (24 * density).toInt()
            layoutParams = LinearLayout.LayoutParams(size, size).apply {
                marginEnd = (24 * density).toInt()
            }
            imageTintList = android.content.res.ColorStateList.valueOf(
                android.graphics.Color.parseColor("#202124"))
        }
        val title = TextView(context).apply {
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            setTextColor(android.graphics.Color.parseColor("#494949"))
            typeface = Typeface.create("sans-serif", Typeface.NORMAL)
            layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
        }
        val trailing = ImageView(context).apply {
            setImageResource(R.drawable.ic_chevron_right)
            val size = (24 * density).toInt()
            layoutParams = LinearLayout.LayoutParams(size, size)
            imageTintList = android.content.res.ColorStateList.valueOf(
                android.graphics.Color.parseColor("#202124"))
        }
        row.addView(leading)
        row.addView(title)
        row.addView(trailing)
        return SettingHolder(row, title)
    }

    override fun onBindViewHolder(holder: SettingHolder, position: Int) {
        holder.title.setText(settings[position].titleRes)
    }

    override fun getItemCount(): Int = settings.size

    internal class SettingHolder(view: View, val title: TextView) : RecyclerView.ViewHolder(view)
}
