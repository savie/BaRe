package com.bare.feature.apps

import android.content.Context
import android.content.Intent
import androidx.core.content.FileProvider
import com.bare.capability.RootCapabilityProvider
import java.io.File
import java.util.UUID

sealed interface AppShareResult {
    data class Ready(val intent: Intent) : AppShareResult
    data class Failed(val reason: String) : AppShareResult
}

class AppShareBehavior(private val context: Context) {
    private val root = RootCapabilityProvider()

    fun shareApk(packageName: String): AppShareResult {
        if (!packageName.matches(PACKAGE_REGEX)) {
            return AppShareResult.Failed("Invalid package name")
        }

        val shareDirectory = File(context.cacheDir, "apk-share/${UUID.randomUUID()}")
        if (!shareDirectory.mkdirs()) {
            return AppShareResult.Failed("Unable to create APK share staging directory")
        }

        val copied = root.copyPackageApks(packageName, shareDirectory)
        val files = when (copied) {
            is com.bare.capability.RootCopyResult.Success -> copied.files
            is com.bare.capability.RootCopyResult.Failed -> {
                shareDirectory.deleteRecursively()
                return AppShareResult.Failed(copied.reason)
            }
        }

        val uris = files.map { file ->
            FileProvider.getUriForFile(
                context,
                "${context.packageName}.fileprovider",
                file,
            )
        }

        val intent = if (uris.size == 1) {
            Intent(Intent.ACTION_SEND).apply {
                type = "application/vnd.android.package-archive"
                putExtra(Intent.EXTRA_STREAM, uris.first())
            }
        } else {
            Intent(Intent.ACTION_SEND_MULTIPLE).apply {
                type = "application/vnd.android.package-archive"
                putParcelableArrayListExtra(Intent.EXTRA_STREAM, ArrayList(uris))
            }
        }.apply {
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            addFlags(Intent.FLAG_ACTIVITY_NEW_DOCUMENT)
        }

        return AppShareResult.Ready(Intent.createChooser(intent, "Share APK"))
    }

    companion object {
        private val PACKAGE_REGEX = Regex("""[A-Za-z0-9_]+(?:\.[A-Za-z0-9_]+)+""")
    }
}
