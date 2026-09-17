package com.bare.domain.backup

import java.io.File

/**
 * Contract adapter for the first application-backup vertical slice.
 *
 * The ROOT data transport is intentionally not faked here: package/APK backup
 * is already executable, while private application-data transport still needs
 * a dedicated privileged filesystem contract and security verification.
 */
class RootApplicationDataSource : ApplicationDataSource {
    override fun copyApplicationData(packageName: String, destinationDir: File): ApplicationDataResult =
        ApplicationDataResult(
            state = BackupComponentState.BLOCKED,
            reason = "ROOT application-data transport is not yet implemented/verified.",
        )
}
