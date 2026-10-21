package com.bareapps.barebackup.home

import android.app.WallpaperManager
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Bundle
import android.os.Environment
import android.os.StatFs
import android.text.format.Formatter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.GridLayoutManager
import com.bareapps.barebackup.R
import com.bareapps.barebackup.appslist.ui.list.AppListActivity
import com.bareapps.barebackup.folders.ui.FoldersDashActivity
import com.bareapps.barebackup.intro.IntroPermissionGrantCoordinator
import com.bareapps.barebackup.messagescalls.dash.CallsDashActivity
import com.bareapps.barebackup.messagescalls.dash.MessagesDashActivity
import com.bareapps.barebackup.walls.WallsDashActivity
import com.bareapps.barebackup.wifi.WifiActivity
import com.bareapps.barebackup.views.QuickRecyclerView
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/** Dashboard fragment mapped to SwiftBackup defpackage.x92. */
class DashboardFragment : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View = inflater.inflate(R.layout.dash_fragment, container, false)

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        bindStorageSummary(view)
        bindRootStatus(view)

        view.findViewById<QuickRecyclerView>(R.id.rvDashShortcutsDefault)?.apply {
            visibility = View.VISIBLE
            layoutManager = GridLayoutManager(context, 3)
            isNestedScrollingEnabled = false
            adapter = DashboardShortcutAdapter(buildShortcutItems(), onShortcutClick = ::openShortcut)
        }
        // The compact list is selected by the original compact-storage preference. Until that
        // preference is ported, keep the reference's default shortcut presentation.
        view.findViewById<View>(R.id.rvDashShortcutsCompact)?.visibility = View.GONE
    }

    private fun buildShortcutItems(): List<DashboardShortcut> {
        val context = requireContext()
        val items = mutableListOf(
            DashboardShortcut(1, R.string.apps, R.drawable.ic_app, R.color.apps)
        )
        val hasTelephony = context.packageManager.hasSystemFeature(PackageManager.FEATURE_TELEPHONY)
        if (hasTelephony) {
            items += DashboardShortcut(2, R.string.messages, R.drawable.ic_message_full, R.color.messages)
            items += DashboardShortcut(3, R.string.call_logs, R.drawable.ic_call_log, R.color.calls)
        }
        val wallpaperSupported = try {
            WallpaperManager.getInstance(context).isWallpaperSupported
        } catch (_: Exception) {
            false
        }
        items += DashboardShortcut(6, R.string.folders, R.drawable.ic_folder_full, R.color.folders)
        if (wallpaperSupported) {
            items += DashboardShortcut(4, R.string.wallpapers, R.drawable.ic_photo_full, R.color.walls)
        }
        items += DashboardShortcut(5, R.string.wifi, R.drawable.ic_wifi_full, R.color.wifi)
        return items
    }

    private fun openShortcut(item: DashboardShortcut) {
        val intent = when (item.actionId) {
            1 -> Intent(requireContext(), AppListActivity::class.java)
            2 -> Intent(requireContext(), MessagesDashActivity::class.java)
            3 -> Intent(requireContext(), CallsDashActivity::class.java)
            4 -> Intent(requireContext(), WallsDashActivity::class.java)
            5 -> Intent(requireContext(), WifiActivity::class.java)
            6 -> Intent(requireContext(), FoldersDashActivity::class.java)
            else -> return
        }
        startActivity(intent)
    }

    private fun bindRootStatus(root: View) {
        root.findViewById<View>(R.id.iv_refresh_root_access)?.setOnClickListener {
            checkRootStatus(root)
        }
        checkRootStatus(root)
    }

    private fun checkRootStatus(root: View) {
        viewLifecycleOwner.lifecycleScope.launch {
            val hasRoot = withContext(Dispatchers.IO) {
                IntroPermissionGrantCoordinator.isRootAvailable()
            }
            if (!isAdded || view !== root) return@launch
            root.findViewById<TextView>(R.id.tvRootAccess)?.setText(
                if (hasRoot) R.string.granted else R.string.not_available
            )
            root.findViewById<TextView>(R.id.tvRootProvider)?.text =
                if (hasRoot) "su" else getString(R.string.root_access_needed)
            root.findViewById<View>(R.id.iv_refresh_root_access)?.isSelected = hasRoot
        }
    }

    private fun bindStorageSummary(root: View) {
        try {
            val stat = StatFs(Environment.getDataDirectory().absolutePath)
            val total = stat.totalBytes
            val available = stat.availableBytes
            val used = (total - available).coerceAtLeast(0L)
            root.findViewById<TextView>(R.id.tvUsage)?.text = getString(
                R.string.free_storage_of_total_text,
                Formatter.formatFileSize(requireContext(), available),
                Formatter.formatFileSize(requireContext(), total)
            )
            root.findViewById<View>(R.id.progressBarStorage)?.let { progress ->
                if (progress is com.google.android.material.progressindicator.LinearProgressIndicator) {
                    progress.max = 100
                    progress.setProgressCompat(if (total > 0) ((used * 100) / total).toInt() else 0, false)
                }
                progress.visibility = View.VISIBLE
            }
            root.findViewById<TextView>(R.id.tvUsedPercent)?.apply {
                text = "${if (total > 0) ((used * 100) / total).toInt() else 0}% used"
                visibility = View.VISIBLE
            }
        } catch (_: Exception) {
            root.findViewById<TextView>(R.id.tvUsage)?.setText(R.string.storage_info_not_provided)
            root.findViewById<View>(R.id.progressBarStorage)?.visibility = View.GONE
            root.findViewById<View>(R.id.tvUsedPercent)?.visibility = View.GONE
        }
    }
}
