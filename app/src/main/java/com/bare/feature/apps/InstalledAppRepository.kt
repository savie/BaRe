package com.bare.feature.apps

import android.content.Context
import android.content.pm.ApplicationInfo
import com.bare.app.AppItem
import java.io.File

class InstalledAppRepository(private val context: Context) {
    private val packageManager = context.packageManager
    private val organizationStore = AppOrganizationStore(context)

    fun load(): List<AppItem> {
        val loaded = packageManager.getInstalledApplications(0)
            .map { info ->
                val isSystem = (info.flags and ApplicationInfo.FLAG_SYSTEM) != 0
                AppItem(
                    name = info.loadLabel(packageManager).toString().ifBlank { info.packageName },
                    packageName = info.packageName,
                    category = context.getString(if (isSystem) com.bare.R.string.system_app else com.bare.R.string.user_app),
                    size = formatSize(File(info.sourceDir).length()),
                    isSystem = isSystem,
                    isEnabled = info.enabled,
                    favorite = organizationStore.isFavorite(info.packageName),
                    firstInstallTime = runCatching { packageManager.getPackageInfo(info.packageName, 0).firstInstallTime }.getOrNull(),
                    lastUpdateTime = runCatching { packageManager.getPackageInfo(info.packageName, 0).lastUpdateTime }.getOrNull(),
                    apkSizeBytes = runCatching {
                        buildList {
                            add(info.sourceDir)
                            info.splitSourceDirs?.let(::addAll)
                        }.sumOf { path -> File(path).length().coerceAtLeast(0L) }
                    }.getOrNull(),
                    installedFromGooglePlay = runCatching {
                        packageManager.getInstallSourceInfo(info.packageName).installingPackageName == "com.android.vending"
                    }.getOrNull(),
                )
            }
            .sortedBy { it.name.lowercase() }
        cachedApps = loaded
        return loaded
    }

    companion object {
        @Volatile
        private var cachedApps: List<AppItem> = emptyList()

        fun cached(): List<AppItem> = cachedApps
    }

    private fun formatSize(bytes: Long): String {
        if (bytes <= 0L) return context.getString(com.bare.R.string.unknown_size)
        val units = arrayOf("B", "KB", "MB", "GB")
        var value = bytes.toDouble()
        var index = 0
        while (value >= 1024 && index < units.lastIndex) {
            value /= 1024
            index++
        }
        return if (index == 0) "${bytes} ${units[index]}" else "%.1f %s".format(value, units[index])
    }
}
