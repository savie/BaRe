package com.bare.feature.apps

import android.os.Environment
import com.bare.capability.RootCapabilityProvider
import java.io.File

class AppExternalDataBackupBehavior {
    private val root = RootCapabilityProvider()

    fun backup(packageName: String, destinationDir: File): AppBackupPartResult {
        if (!packageName.matches(PACKAGE_REGEX)) {
            return AppBackupPartResult.Failed("Invalid package name")
        }

        val externalDataDirectory = File(
            Environment.getExternalStorageDirectory(),
            "Android/data/$packageName"
        )

        if (destinationDir.exists() && !destinationDir.deleteRecursively()) {
            return AppBackupPartResult.Failed("Unable to replace external data backup")
        }
        when (root.directoryExists(externalDataDirectory.absolutePath)) {
            false -> return AppBackupPartResult.Completed(emptyList())
            null -> return AppBackupPartResult.Failed("Unable to inspect external data directory")
            true -> Unit
        }
        if (!destinationDir.mkdirs()) {
            return AppBackupPartResult.Failed("Unable to create external data backup directory")
        }

        return when (val result = root.copyDirectory(externalDataDirectory.absolutePath, destinationDir)) {
            is com.bare.capability.RootCopyResult.Success ->
                AppBackupPartResult.Completed(result.files)
            is com.bare.capability.RootCopyResult.Failed ->
                AppBackupPartResult.Failed(result.reason)
        }
    }

    companion object {
        private val PACKAGE_REGEX = Regex("""[A-Za-z0-9_]+(?:\.[A-Za-z0-9_]+)+""")
    }
}
