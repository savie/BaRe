package com.bare.feature.apps

import android.app.AppOpsManager
import android.app.usage.UsageStatsManager
import android.content.Context
import android.os.Process

class AppUsageRepository(private val context: Context) {
    private val appOps = context.getSystemService(AppOpsManager::class.java)
    private val usageStats = context.getSystemService(UsageStatsManager::class.java)

    fun hasUsageAccess(): Boolean =
        appOps.checkOpNoThrow(
            AppOpsManager.OPSTR_GET_USAGE_STATS,
            Process.myUid(),
            context.packageName,
        ) == AppOpsManager.MODE_ALLOWED

    fun loadLastUsed(): Map<String, Long> {
        if (!hasUsageAccess()) return emptyMap()

        val now = System.currentTimeMillis()
        val stats = usageStats.queryUsageStats(
            UsageStatsManager.INTERVAL_BEST,
            now - 365L * 24L * 60L * 60L * 1000L,
            now,
        )
        return stats
            .asSequence()
            .filter { it.lastTimeUsed > 0L }
            .associate { it.packageName to it.lastTimeUsed }
    }
}
