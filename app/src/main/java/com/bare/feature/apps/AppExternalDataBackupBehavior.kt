package com.bare.feature.apps

import android.content.Context
import android.os.Environment
import com.bare.capability.RootCapabilityProvider
import java.io.File

class AppExternalDataBackupBehavior(private val context: Context) {
    private val root = RootCapabilityProvider()

    fun backup(packageName: String, destinationDir: File): AppBackupPartResult {
        if (!packageName.matches(PACKAGE_REGEX)) {
            return AppBackupPartResult.Failed("Invalid package name")
        }

        val externalDataDirectory = File(
            Environment.getExternalStorageDirectory(),
            "Android/data/$packageName"
        )
        if (!externalDataDirectory.exists()) {
            return AppBackupPartResult.Completed(emptyList())
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
