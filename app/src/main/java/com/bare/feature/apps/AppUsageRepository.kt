package com.bare.feature.apps

import android.app.AppOpsManager
import android.app.usage.UsageStatsManager
import android.content.Context
import android.os.Process

class AppUsageRepository(private val context: Context) {
    private val appOps = context.getSystemService(AppOpsManager::class.java)
    private val usageStats = context.getSystemService(UsageStatsManager::class.java)

    fun hasUsageAccess(): Boolean =
        appOps.noteOpNoThrow(
            AppOpsManager.OPSTR_GET_USAGE_STATS,
            Process.myUid(),
            context.packageName,
        ) == AppOpsManager.MODE_ALLOWED

    fun ensureUsageAccess(): Boolean {
        if (hasUsageAccess()) return true
        if (!RootAppActionExecutor.isRootAvailable()) return false
        if (!RootAppActionExecutor.setUsageAccess(context.packageName)) return false
        return hasUsageAccess()
    }

    fun loadLastUsed(installedPackages: Set<String>): Map<String, Long> {
        if (!ensureUsageAccess()) return emptyMap()

        val now = System.currentTimeMillis()
        val stats = usageStats.queryUsageStats(
            UsageStatsManager.INTERVAL_BEST,
            now - 30L * 24L * 60L * 60L * 1000L,
            now,
        )
        return stats
            .asSequence()
            .filter { it.lastTimeUsed > 0L && it.lastTimeUsed > now - 365L * 24L * 60L * 60L * 1000L }
            .filter { it.packageName in installedPackages }
            .groupBy { it.packageName }
            .mapValues { (_, values) -> values.maxOf { it.lastTimeUsed } }
    }
}
