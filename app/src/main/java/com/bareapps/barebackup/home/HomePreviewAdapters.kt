package com.bareapps.barebackup.home

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
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

/** Uses the repository's original list-item XML rather than a hand-built row. */
internal data class PreviewSetting(val titleRes: Int)

internal class AccountSettingsPreviewAdapter(
    private val settings: List<PreviewSetting>
) : RecyclerView.Adapter<AccountSettingsPreviewAdapter.SettingHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): SettingHolder =
        SettingHolder(LayoutInflater.from(parent.context)
            .inflate(R.layout.more_list_item, parent, false))

    override fun onBindViewHolder(holder: SettingHolder, position: Int) {
        holder.title.setText(settings[position].titleRes)
        holder.trailingIcon.setImageResource(R.drawable.ic_chevron_right)
    }

    override fun getItemCount(): Int = settings.size

    internal class SettingHolder(view: View) : RecyclerView.ViewHolder(view) {
        val title: TextView = view.findViewById(R.id.tv_more_list_item)
        val trailingIcon: ImageView = view.findViewById(R.id.iv_more_list_item)
    }
}
