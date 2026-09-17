package com.bare.domain.backup

import com.bare.capability.RootCapabilityProvider
import java.io.File

/**
 * First vertical-slice adapter for ROOT application-data access.
 *
 * The provider remains behind the domain port. No UI or use-case code invokes
 * `su` directly. Unsupported data layouts fail closed until the filesystem
 * contract is expanded and verified.
 */
class RootApplicationDataSource(
    private val root: RootCapabilityProvider = RootCapabilityProvider(),
) : ApplicationDataSource {
    override fun copyApplicationData(packageName: String, destinationDir: File): ApplicationDataResult {
        if (!packageName.matches(PACKAGE_NAME_REGEX)) {
            return ApplicationDataResult(BackupComponentState.FAILED, reason = "Invalid package name")
        }
        if (!destinationDir.exists() && !destinationDir.mkdirs()) {
            return ApplicationDataResult(BackupComponentState.FAILED, reason = "Unable to create data staging directory")
        }

        return try {
            val result = root.copyApplicationData(packageName, destinationDir)
            when (result) {
                is RootCapabilityProvider.RootDataResult.Success ->
                    ApplicationDataResult(BackupComponentState.SUCCESS, result.files)
                is RootCapabilityProvider.RootDataResult.Failed ->
                    ApplicationDataResult(BackupComponentState.FAILED, reason = result.reason)
            }
        } catch (t: Throwable) {
            destinationDir.deleteRecursively()
            ApplicationDataResult(BackupComponentState.FAILED, reason = t.message ?: t::class.java.simpleName)
        }
    }

    companion object {
        private val PACKAGE_NAME_REGEX = Regex("[A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+")
    }
}
