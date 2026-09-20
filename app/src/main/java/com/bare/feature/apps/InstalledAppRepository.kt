package com.bare.feature.apps

import android.content.Context
import android.content.pm.ApplicationInfo
import com.bare.app.AppItem
import java.io.File

class InstalledAppRepository(private val context: Context) {
    private val packageManager = context.packageManager

    fun load(): List<AppItem> =
        packageManager.getInstalledApplications(0)
            .map { info ->
                val isSystem = (info.flags and ApplicationInfo.FLAG_SYSTEM) != 0
                AppItem(
                    name = info.loadLabel(packageManager).toString().ifBlank { info.packageName },
                    packageName = info.packageName,
                    category = context.getString(if (isSystem) com.bare.R.string.system_app else com.bare.R.string.user_app),
                    size = formatSize(File(info.sourceDir).length()),
                    isSystem = isSystem,
                    isEnabled = info.enabled,
                )
            }
            .sortedBy { it.name.lowercase() }

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
