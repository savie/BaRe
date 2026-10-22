package com.bareapps.barebackup.home.search

import android.app.WallpaperManager
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.inputmethod.InputMethodManager
import android.content.Context
import android.widget.EditText
import android.widget.ImageButton
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.getSystemService
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.bareapps.barebackup.appslist.ui.list.AppListActivity
import com.bareapps.barebackup.common.CloudStorageDestination
import com.bareapps.barebackup.folders.ui.FoldersDashActivity
import com.bareapps.barebackup.home.DashboardFragment
import com.bareapps.barebackup.home.DashboardQuickAction
import com.bareapps.barebackup.home.DashboardShortcut
import com.bareapps.barebackup.home.DashboardShortcutAdapter
import com.bareapps.barebackup.home.HomeActivity
import com.bareapps.barebackup.messagescalls.dash.CallsDashActivity
import com.bareapps.barebackup.messagescalls.dash.MessagesDashActivity
import com.bareapps.barebackup.views.QuickRecyclerView
import com.bareapps.barebackup.walls.WallsDashActivity
import com.bareapps.barebackup.wifi.WifiActivity
import com.google.android.material.button.MaterialButton
import com.google.android.material.appbar.MaterialToolbar

/** Search UI mapped to the reference HomeSearchActivity using the existing search layouts. */
class HomeSearchActivity : AppCompatActivity() {
    private lateinit var queryInput: EditText
    private lateinit var clearButton: ImageButton
    private lateinit var appsRecycler: QuickRecyclerView
    private lateinit var actionsRecycler: QuickRecyclerView
    private lateinit var shortcutsRecycler: QuickRecyclerView
    private lateinit var shortcutsCard: View
    private lateinit var actionsCard: View
    private lateinit var appsCard: View
    private lateinit var emptyState: View
    private lateinit var systemAppsToggle: TextView
    private lateinit var actionsToggle: MaterialButton
    private var showSystemApps = false
    private var showAllActions = false
    private var installedApps: List<ApplicationInfo> = emptyList()
    private var filteredApps: List<ApplicationInfo> = emptyList()
    private var filteredActions: List<DashboardQuickAction> = emptyList()
    private val allActions by lazy { createActions() }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.home_search_activity)

        val toolbar = findViewById<MaterialToolbar>(R.id.search_toolbar)
        toolbar.setNavigationOnClickListener { closeSearch() }
        queryInput = findViewById(R.id.et_search)
        clearButton = findViewById(R.id.btn_clear)
        shortcutsCard = findViewById(R.id.shortcuts_card)
        actionsCard = findViewById(R.id.quick_actions_card)
        appsCard = findViewById(R.id.apps_card)
        emptyState = findViewById(R.id.home_search_empty)
        systemAppsToggle = findViewById(R.id.btn_home_search_apps_system_toggle)
        actionsToggle = findViewById(R.id.btn_home_search_quick_actions_toggle)

        shortcutsRecycler = findViewById<QuickRecyclerView>(R.id.rv_home_search_shortcuts_default).apply {
            layoutManager = LinearLayoutManager(this@HomeSearchActivity, RecyclerView.HORIZONTAL, false)
            adapter = DashboardShortcutAdapter(buildShortcuts(), onShortcutClick = ::openShortcut)
        }
        findViewById<View>(R.id.rv_home_search_shortcuts_compact).visibility = View.GONE
        actionsRecycler = findViewById<QuickRecyclerView>(R.id.rv_home_search_quick_actions).apply {
            layoutManager = LinearLayoutManager(this@HomeSearchActivity)
        }
        appsRecycler = findViewById<QuickRecyclerView>(R.id.rv_home_search_apps).apply {
            layoutManager = LinearLayoutManager(this@HomeSearchActivity)
            adapter = AppResultsAdapter()
        }

        shortcutsRecycler.visibility = View.VISIBLE
        findViewById<TextView>(R.id.tv_home_search_shortcuts).visibility = View.VISIBLE
        systemAppsToggle.setOnClickListener {
            showSystemApps = !showSystemApps
            refreshResults()
        }
        actionsToggle.setOnClickListener {
            showAllActions = !showAllActions
            refreshResults()
        }
        clearButton.setOnClickListener { queryInput.text?.clear() }
        queryInput.addTextChangedListener(object : android.text.TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) = Unit
            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) = refreshResults()
            override fun afterTextChanged(s: android.text.Editable?) = Unit
        })

        installedApps = try {
            packageManager.getInstalledApplications(0)
        } catch (_: Exception) {
            emptyList()
        }
        refreshResults()
        queryInput.requestFocus()
        queryInput.post {
            getSystemService<InputMethodManager>()?.showSoftInput(queryInput, InputMethodManager.SHOW_IMPLICIT)
        }
    }

    private fun refreshResults() {
        val query = queryInput.text?.toString()?.trim().orEmpty()
        clearButton.visibility = if (query.isEmpty()) View.GONE else View.VISIBLE
        shortcutsCard.visibility = if (query.isEmpty()) View.VISIBLE else View.GONE

        if (query.isEmpty()) {
            filteredActions = emptyList()
            filteredApps = emptyList()
            actionsCard.visibility = View.GONE
            appsCard.visibility = View.GONE
            emptyState.visibility = View.GONE
            return
        }

        val normalized = query.lowercase()
        filteredActions = allActions.filter { action ->
            getString(action.titleRes).lowercase().contains(normalized) ||
                getString(action.summaryRes).lowercase().contains(normalized)
        }
        val actionLimit = if (showAllActions) filteredActions.size else minOf(filteredActions.size, 4)
        actionsRecycler.adapter = SearchQuickActionsAdapter(filteredActions.take(actionLimit))
        actionsCard.visibility = if (filteredActions.isNotEmpty()) View.VISIBLE else View.GONE
        findViewById<TextView>(R.id.tv_home_search_quick_actions).visibility =
            if (filteredActions.isNotEmpty()) View.VISIBLE else View.GONE
        actionsToggle.visibility = if (filteredActions.size > 4) View.VISIBLE else View.GONE
        actionsToggle.setText(if (showAllActions) R.string.show_less else R.string.see_all)

        filteredApps = installedApps.filter { app ->
            val isSystem = app.flags and ApplicationInfo.FLAG_SYSTEM != 0 &&
                app.flags and ApplicationInfo.FLAG_UPDATED_SYSTEM_APP == 0
            (showSystemApps || !isSystem) &&
                (packageManager.getApplicationLabel(app).toString().lowercase().contains(normalized) ||
                    app.packageName.lowercase().contains(normalized))
        }.sortedBy { packageManager.getApplicationLabel(it).toString().lowercase() }
        appsRecycler.adapter?.notifyDataSetChanged()
        appsCard.visibility = if (filteredApps.isNotEmpty()) View.VISIBLE else View.GONE
        findViewById<TextView>(R.id.tv_home_search_apps).visibility =
            if (filteredApps.isNotEmpty()) View.VISIBLE else View.GONE
        systemAppsToggle.visibility = if (query.isNotEmpty()) View.VISIBLE else View.GONE
        systemAppsToggle.setText(if (showSystemApps) R.string.hide_system_apps else R.string.show_system_apps)
        val noResults = filteredActions.isEmpty() && filteredApps.isEmpty()
        emptyState.visibility = if (noResults) View.VISIBLE else View.GONE
        if (noResults) {
            emptyState.findViewById<TextView>(R.id.el_tv)?.text = "No results found"
            emptyState.findViewById<ImageView>(R.id.el_iv)?.setImageResource(R.drawable.ic_search)
            emptyState.findViewById<View>(R.id.el_btn)?.visibility = View.GONE
        }
    }

    private fun buildShortcuts(): List<DashboardShortcut> {
        val items = mutableListOf(
            DashboardShortcut(1, getString(R.string.apps), R.drawable.ic_app, R.color.apps)
        )
        if (packageManager.hasSystemFeature(PackageManager.FEATURE_TELEPHONY)) {
            items += DashboardShortcut(2, getString(R.string.messages), R.drawable.ic_message_full, R.color.messages)
            items += DashboardShortcut(3, getString(R.string.call_logs), R.drawable.ic_call_log, R.color.calls)
        }
        val wallpaperSupported = try { WallpaperManager.getInstance(this).isWallpaperSupported } catch (_: Exception) { false }
        items += DashboardShortcut(6, getString(R.string.folders), R.drawable.ic_folder_full, R.color.folders)
        if (wallpaperSupported) items += DashboardShortcut(4, getString(R.string.wallpapers), R.drawable.ic_photo_full, R.color.walls)
        items += DashboardShortcut(5, getString(R.string.wifi), R.drawable.ic_wifi_full, R.color.wifi)
        return items
    }

    private fun createActions(): List<DashboardQuickAction> = buildList {
        add(DashboardQuickAction("ID_BACKUP_ALL_APPS", R.string.backup_all_apps, R.string.backup_all_apps_summary, false, DashboardQuickAction.APPS))
        add(DashboardQuickAction("ID_BACKUP_PENDING_APPS", R.string.backup_missing_apps, R.string.backup_missing_apps_summary, false, DashboardQuickAction.APPS))
        add(DashboardQuickAction("ID_BACKUP_UPDATED_APPS", R.string.backup_updated_apps, R.string.backup_updated_apps_summary, false, DashboardQuickAction.APPS))
        add(DashboardQuickAction("ID_BACKUP_REDO_APPS", R.string.redo_backups, R.string.redo_backups_message, false, DashboardQuickAction.APPS))
        add(DashboardQuickAction("ID_BACKUP_SYNC_APPS", R.string.sync_device_backups_to_cloud, R.string.sync_device_backups_to_cloud_message, false, DashboardQuickAction.APPS, cloudOnly = true))
        add(DashboardQuickAction("ID_RESTORE_ALL_APPS", R.string.restore_all_apps, R.string.restore_all_apps_summary, true, DashboardQuickAction.APPS))
        add(DashboardQuickAction("ID_RESTORE_MISSING_APPS", R.string.restore_missing_apps, R.string.restore_missing_apps_summary, true, DashboardQuickAction.APPS))
        add(DashboardQuickAction("ID_RESTORE_NEW_VERSIONS_APPS", R.string.restore_newer_versions, R.string.restore_newer_versions_summary, true, DashboardQuickAction.APPS))
        add(DashboardQuickAction("ID_BACKUP_MESSAGES", R.string.backup_messages, R.string.backup_messages_summary, false, DashboardQuickAction.MESSAGES))
        add(DashboardQuickAction("ID_RESTORE_MESSAGES", R.string.restore_messages, R.string.restore_messages_summary, true, DashboardQuickAction.MESSAGES))
        add(DashboardQuickAction("ID_BACKUP_CALLS", R.string.backup_call_logs, R.string.backup_call_logs_summary, false, DashboardQuickAction.CALLS))
        add(DashboardQuickAction("ID_RESTORE_CALLS", R.string.restore_call_logs, R.string.restore_call_logs_summary, true, DashboardQuickAction.CALLS))
        add(DashboardQuickAction("ID_BACKUP_FOLDERS", R.string.backup_folders, R.string.backup_folders_summary, false, DashboardQuickAction.FOLDERS))
        add(DashboardQuickAction("ID_RESTORE_FOLDERS", R.string.restore_folders, R.string.restore_folders_summary, true, DashboardQuickAction.FOLDERS))
    }

    private fun openShortcut(item: DashboardShortcut) {
        val intent = when (item.actionId) {
            1 -> Intent(this, AppListActivity::class.java)
            2 -> Intent(this, MessagesDashActivity::class.java)
            3 -> Intent(this, CallsDashActivity::class.java)
            4 -> Intent(this, WallsDashActivity::class.java)
            5 -> Intent(this, WifiActivity::class.java)
            6 -> Intent(this, FoldersDashActivity::class.java)
            else -> return
        }
        startActivity(intent)
        closeSearch()
    }

    private fun openAction(action: DashboardQuickAction, useCloud: Boolean) {
        if (useCloud && !action.restores && CloudStorageDestination.displayName(this).isNullOrBlank()) {
            startActivity(Intent(this, HomeActivity::class.java).addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP)
                .putExtra(HomeActivity.EXTRA_OPEN_CLOUD_TAB, true))
            closeSearch()
            return
        }
        val target = when (action.category) {
            DashboardQuickAction.APPS -> AppListActivity::class.java
            DashboardQuickAction.MESSAGES -> MessagesDashActivity::class.java
            DashboardQuickAction.CALLS -> CallsDashActivity::class.java
            DashboardQuickAction.FOLDERS -> FoldersDashActivity::class.java
            else -> return
        }
        startActivity(Intent(this, target)
            .putExtra(DashboardFragment.EXTRA_OPERATION, if (action.restores) DashboardFragment.OP_RESTORE else DashboardFragment.OP_BACKUP)
            .putExtra(DashboardFragment.EXTRA_ACTION_ID, action.referenceId)
            .putExtra(DashboardFragment.EXTRA_USE_CLOUD, useCloud))
        closeSearch()
    }

    private fun closeSearch() {
        getSystemService<InputMethodManager>()?.hideSoftInputFromWindow(queryInput.windowToken, 0)
        finish()
        overridePendingTransition(R.anim.home_search_close_enter, R.anim.home_search_close_exit)
    }

    private inner class AppResultsAdapter : RecyclerView.Adapter<AppResultsAdapter.Holder>() {
        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder =
            Holder(LayoutInflater.from(parent.context).inflate(R.layout.home_search_app_result_item, parent, false))

        override fun getItemCount(): Int = filteredApps.size

        override fun onBindViewHolder(holder: Holder, position: Int) {
            val app = filteredApps[position]
            holder.title.text = packageManager.getApplicationLabel(app)
            holder.subtitle.text = app.packageName
            try { holder.icon.setImageDrawable(packageManager.getApplicationIcon(app)) } catch (_: Exception) { holder.icon.setImageResource(R.drawable.ic_app) }
            holder.itemView.setOnClickListener {
                startActivity(Intent(this@HomeSearchActivity, AppListActivity::class.java)
                    .putExtra(AppListActivity.EXTRA_INITIAL_QUERY, app.packageName))
                closeSearch()
            }
        }

        inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
            val title: TextView = view.findViewById(R.id.tv_title)
            val subtitle: TextView = view.findViewById(R.id.tv_subtitle)
            val icon: ImageView = view.findViewById(R.id.iv_icon)
        }
    }

    private inner class SearchQuickActionsAdapter(
        private val actions: List<DashboardQuickAction>
    ) : RecyclerView.Adapter<SearchQuickActionsAdapter.Holder>() {
        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder =
            Holder(LayoutInflater.from(parent.context).inflate(R.layout.home_search_quick_action_item, parent, false))

        override fun getItemCount(): Int = actions.size

        override fun onBindViewHolder(holder: Holder, position: Int) {
            val action = actions[position]
            holder.title.setText(action.titleRes)
            holder.subtitle.setText(action.summaryRes)
            holder.icon.setImageResource(when (action.category) {
                DashboardQuickAction.APPS -> R.drawable.ic_app
                DashboardQuickAction.MESSAGES -> R.drawable.ic_message_full
                DashboardQuickAction.CALLS -> R.drawable.ic_call_log
                DashboardQuickAction.FOLDERS -> R.drawable.ic_folder_full
                else -> R.drawable.ic_app
            })
            holder.actions.visibility = View.VISIBLE
            holder.localButton.visibility = if (action.cloudOnly) View.GONE else View.VISIBLE
            holder.localButton.setText(if (action.restores) R.string.from_device else R.string.to_device)
            holder.cloudButton.setText(if (action.restores) R.string.from_cloud else R.string.to_cloud)
            holder.localButton.setOnClickListener { openAction(action, false) }
            holder.cloudButton.setOnClickListener { openAction(action, true) }
            holder.itemView.setOnClickListener { openAction(action, action.cloudOnly) }
        }

        inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
            val title: TextView = view.findViewById(R.id.tv_title)
            val subtitle: TextView = view.findViewById(R.id.tv_subtitle)
            val icon: ImageView = view.findViewById(R.id.iv_icon)
            val actions: View = view.findViewById(R.id.container_actions)
            val localButton: MaterialButton = view.findViewById(R.id.btn_local)
            val cloudButton: MaterialButton = view.findViewById(R.id.btn_cloud)
        }
    }
}
