package com.bare.feature.apps2.data

import android.content.Context
import android.content.pm.ApplicationInfo
import com.bare.feature.apps2.domain.Apps2App

class Apps2AppDiscovery(private val context: Context) {
    private val packageManager = context.packageManager

    fun load(showSystemApps: Boolean = true): List<Apps2App> =
        packageManager.getInstalledApplications(0)
            .asSequence()
            .filter { showSystemApps || (it.flags and ApplicationInfo.FLAG_SYSTEM) == 0 }
            .map { info ->
                val packageInfo = runCatching { packageManager.getPackageInfo(info.packageName, 0) }.getOrNull()
                Apps2App(
                    packageName = info.packageName,
                    name = info.loadLabel(packageManager).toString().ifBlank { info.packageName },
                    isSystem = (info.flags and ApplicationInfo.FLAG_SYSTEM) != 0,
                    isEnabled = info.enabled,
                    isLaunchable = packageManager.getLaunchIntentForPackage(info.packageName) != null,
                    isInstalled = true,
                    firstInstallTime = packageInfo?.firstInstallTime,
                    lastUpdateTime = packageInfo?.lastUpdateTime,
                    icon = runCatching { info.loadIcon(packageManager) }.getOrNull(),
                )
            }
            .sortedBy { it.name.lowercase() }
            .toList()
}
