package com.bare.feature.apps

import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import com.bare.app.AppItem
import java.io.File
import java.util.Locale

/** Discovery is limited by Android package-visibility policy on the target device. */
class AppDiscoveryRepository(context: Context) {
    private val packageManager = context.applicationContext.packageManager

    fun discover(): List<AppItem> {
        val applications = packageManager.getInstalledApplications(PackageManager.MATCH_ALL)
        return applications
            .asSequence()
            .filter { it.packageName != packageManager.applicationInfo.packageName }
            .mapNotNull(::toAppItem)
            .sortedBy { it.name.lowercase(Locale.ROOT) }
            .toList()
    }

    private fun toAppItem(info: ApplicationInfo): AppItem? {
        val packageName = info.packageName.takeIf { it.isNotBlank() } ?: return null
        val label = runCatching { packageManager.getApplicationLabel(info).toString() }
            .getOrDefault(packageName)
            .ifBlank { packageName }
        val isSystem = (info.flags and ApplicationInfo.FLAG_SYSTEM) != 0
        val sizeBytes = info.sourceDir?.let { File(it).length() } ?: 0L
        return AppItem(
            name = label,
            packageName = packageName,
            category = if (isSystem) "System app" else "User app",
            size = formatSize(sizeBytes),
        )
    }

    private fun formatSize(bytes: Long): String {
        if (bytes <= 0L) return "Unknown size"
        val units = arrayOf("B", "KB", "MB", "GB", "TB")
        var value = bytes.toDouble()
        var index = 0
        while (value >= 1024.0 && index < units.lastIndex) {
            value /= 1024.0
            index++
        }
        return if (index == 0) "${'$'}{bytes} ${'$'}{units[index]}"
        else if (value >= 100.0) String.format(Locale.US, "%.0f %s", value, units[index])
        else String.format(Locale.US, "%.1f %s", value, units[index])
    }
}