package com.bare.feature.apps

import android.content.Context
import com.bare.capability.RootCapabilityProvider
import java.io.File

class AppDataBackupBehavior(private val context: Context) {
    private val root = RootCapabilityProvider()

    fun backup(packageName: String, destinationDir: File): AppBackupPartResult {
        val applicationInfo = runCatching {
            context.packageManager.getApplicationInfo(packageName, 0)
        }.getOrElse {
            return AppBackupPartResult.Failed(it.message ?: "Installed package was not found")
        }

        if (destinationDir.exists() && !destinationDir.deleteRecursively()) {
            return AppBackupPartResult.Failed("Unable to replace app data backup")
        }
        if (!destinationDir.mkdirs()) {
            return AppBackupPartResult.Failed("Unable to create app data backup directory")
        }

        return when (val result = root.copyDirectory(applicationInfo.dataDir, destinationDir)) {
            is com.bare.capability.RootCopyResult.Success ->
                AppBackupPartResult.Completed(result.files)
            is com.bare.capability.RootCopyResult.Failed ->
                AppBackupPartResult.Failed(result.reason)
        }
    }
}
