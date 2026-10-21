package com.bareapps.barebackup.home

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.google.android.material.button.MaterialButton

internal data class DashboardAction(
    val titleRes: Int,
    val summaryRes: Int,
    val iconRes: Int,
    val showRestoreSources: Boolean = false
)

/**
 * Reference-compatible dashboard rows. Backup/restore execution is not wired in this port yet;
 * taps report that explicitly instead of silently doing nothing.
 */
internal class DashboardActionAdapter(
    private val actions: List<DashboardAction>
) : RecyclerView.Adapter<DashboardActionAdapter.ActionHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ActionHolder =
        ActionHolder(LayoutInflater.from(parent.context)
            .inflate(R.layout.quick_action_item, parent, false))

    override fun onBindViewHolder(holder: ActionHolder, position: Int) {
        val action = actions[position]
        holder.title.setText(action.titleRes)
        holder.summary.setText(action.summaryRes)
        holder.icon.visibility = View.GONE
        holder.actionContainer.visibility = if (action.showRestoreSources) View.VISIBLE else View.GONE
        val notReady = View.OnClickListener {
            Toast.makeText(holder.itemView.context,
                R.string.intro_feature_not_available_yet, Toast.LENGTH_SHORT).show()
        }
        holder.itemView.setOnClickListener(notReady)
        holder.fromDevice.setOnClickListener(notReady)
        holder.fromCloud.setOnClickListener(notReady)
    }

    override fun getItemCount(): Int = actions.size

    internal class ActionHolder(view: View) : RecyclerView.ViewHolder(view) {
        val title: TextView = view.findViewById(R.id.tv_title)
        val summary: TextView = view.findViewById(R.id.tv_subtitle1)
        val icon: ImageView = view.findViewById(R.id.iv_root_needed)
        val actionContainer: View = view.findViewById(R.id.bottom_view)
        val fromDevice: MaterialButton = view.findViewById(R.id.btn_from_local)
        val fromCloud: MaterialButton = view.findViewById(R.id.btn_from_cloud)
    }
}

internal data class DashboardShortcut(val titleRes: Int, val iconRes: Int)

internal class DashboardShortcutAdapter(
    private val shortcuts: List<DashboardShortcut>
) : RecyclerView.Adapter<DashboardShortcutAdapter.ShortcutHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ShortcutHolder =
        ShortcutHolder(LayoutInflater.from(parent.context)
            .inflate(R.layout.dash_shortcut_item_normal, parent, false))

    override fun onBindViewHolder(holder: ShortcutHolder, position: Int) {
        val shortcut = shortcuts[position]
        holder.button.setText(shortcut.titleRes)
        holder.icon.setImageResource(shortcut.iconRes)
        holder.button.setOnClickListener {
            Toast.makeText(holder.itemView.context,
                R.string.intro_feature_not_available_yet, Toast.LENGTH_SHORT).show()
        }
    }

    override fun getItemCount(): Int = shortcuts.size

    internal class ShortcutHolder(view: View) : RecyclerView.ViewHolder(view) {
        val button: MaterialButton = view.findViewById(R.id.btn)
        val icon: ImageView = view.findViewById(R.id.image_icon)
    }
}

/** Account settings rows use the repository's existing list-item XML. */
internal data class AccountSetting(val titleRes: Int)

internal class AccountSettingsAdapter(
    private val settings: List<AccountSetting>
) : RecyclerView.Adapter<AccountSettingsAdapter.SettingHolder>() {

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
