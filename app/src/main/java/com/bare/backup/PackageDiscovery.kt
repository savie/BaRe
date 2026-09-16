package com.bare.backup

import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager

data class DiscoveredPackage(
    val packageName: String,
    val label: String,
    val versionName: String?,
    val versionCode: Long,
    val sourceApk: String,
    val splitApks: List<String>,
    val debuggable: Boolean,
)

class PackageDiscovery(private val context: Context) {
    fun discover(): List<DiscoveredPackage> {
        val pm = context.packageManager
        return pm.getInstalledApplications(PackageManager.GET_META_DATA)
            .asSequence()
            .filter { it.packageName != context.packageName }
            .mapNotNull { app -> app.toDiscovered(pm) }
            .sortedBy { it.label.lowercase() }
            .toList()
    }

    private fun ApplicationInfo.toDiscovered(pm: PackageManager): DiscoveredPackage? {
        val packageInfo = runCatching {
            pm.getPackageInfo(packageName, PackageManager.GET_SIGNING_CERTIFICATES)
        }.getOrNull() ?: return null
        val source = sourceDir ?: return null
        return DiscoveredPackage(
            packageName = packageName,
            label = pm.getApplicationLabel(this).toString(),
            versionName = packageInfo.versionName,
            versionCode = packageInfo.longVersionCode,
            sourceApk = source,
            splitApks = splitSourceDirs?.toList().orEmpty(),
            debuggable = flags and ApplicationInfo.FLAG_DEBUGGABLE != 0,
        )
    }
}
