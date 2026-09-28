package com.bare.apps.task

import android.content.Context
import com.bare.apps.R
import com.bare.apps.domain.RestorePreconditions
import com.bare.apps.model.*
import com.bare.apps.repository.LocalMetadataStore
import java.io.File

class AppRestoreManager(private val context: Context) {
    private val backup = AppBackupManager(context)
    private val privileged = PrivilegedCommandExecutor(context)
    private val notificationPolicy = NotificationPolicyProxy(context)
    private val ssaidHelper = SsaidHelper(context, privileged)

    fun restore(request: RestoreRequest, onProgress: (Long) -> Unit = {}): RestoreResult {
        val pre = RestorePreconditions.check(request)
        if (!pre.allowed) {
            return RestoreResult(
                false,
                pre.reason ?: context.getString(R.string.apps_restore_precondition_failed)
            )
        }

        val app = request.app
        if (request.parts.any { it != AppPart.APP } && !app.installed) {
            return RestoreResult(false, context.getString(R.string.apps_restore_not_installed))
        }

        request.parts.forEach { part ->
            val artifact = backup.artifact(app, part, request.localBackupId)
                ?: return RestoreResult(
                    false,
                    context.getString(R.string.apps_restore_missing_artifact, part.id)
                )

            when (part) {
                AppPart.APP -> {
                    if (!InstallerSourceProxy(context).install(artifact, app.packageName)) {
                        return RestoreResult(
                            false,
                            context.getString(R.string.apps_restore_install_failed)
                        )
                    }
                }

                AppPart.DATA -> {
                    if (!restoreDirectoryArchive(
                            artifact,
                            app.dataDir,
                            app.deDataDir,
                            onProgress
                        )
                    ) {
                        return RestoreResult(false, context.getString(R.string.apps_restore_data_failed))
                    }
                }

                AppPart.EXTDATA -> {
                    if (!restoreDirectoryArchive(
                            artifact,
                            app.externalDataDir,
                            null,
                            onProgress
                        )
                    ) {
                        return RestoreResult(false, context.getString(R.string.apps_restore_extdata_failed))
                    }
                }

                AppPart.EXPANSION -> {
                    if (!restoreDirectoryArchive(
                            artifact,
                            app.expansionDir,
                            null,
                            onProgress
                        )
                    ) {
                        return RestoreResult(false, context.getString(R.string.apps_restore_expansion_failed))
                    }
                }

                AppPart.MEDIA -> {
                    if (!restoreDirectoryArchive(
                            artifact,
                            app.mediaDir,
                            null,
                            onProgress
                        )
                    ) {
                        return RestoreResult(false, context.getString(R.string.apps_restore_media_failed))
                    }
                }

                AppPart.SPLITS -> {
                    if (!restoreApkSetArchive(
                            artifact,
                            app.packageName,
                            "splits",
                            onProgress
                        )
                    ) {
                        return RestoreResult(false, context.getString(R.string.apps_restore_splits_failed))
                    }
                }

                AppPart.SHARED_LIBS -> {
                    if (!restoreApkSetArchive(
                            artifact,
                            app.packageName,
                            "shared-libs",
                            onProgress
                        )
                    ) {
                        return RestoreResult(false, context.getString(R.string.apps_restore_shared_libs_failed))
                    }
                }
            }
        }
        val selectedMetadata = request.localBackupId?.let {
            LocalMetadataStore(context).load(app.packageName, it)
        } ?: request.localBackup

        if (request.restoreSpecialPermissions) {
            restoreSpecialPermissions(app, selectedMetadata?.specialData)
        }
        if (request.restoreSsaid) {
            restoreSsaid(app.packageName, selectedMetadata?.specialData?.ssaid)
        }
        return RestoreResult(true, context.getString(R.string.apps_restore_completed))
    }

    private fun restoreApkSetArchive(
        archive: File,
        packageName: String,
        payloadDirectory: String,
        onProgress: (Long) -> Unit
    ): Boolean {
        val working = AppsWorkingDir(context).app("restore-apk-set-" + System.nanoTime())
        return runCatching {
            ArchiveEngine.unpack(archive, working, onProgress)
            val payload = File(working, "payload").resolve(payloadDirectory)
            val apks = payload.walkTopDown()
                .filter { it.isFile && it.extension.equals("apk", ignoreCase = true) }
                .toList()

            if (apks.isEmpty()) return@runCatching false

            if (payloadDirectory == "splits") {
                InstallerSourceProxy(context).installSplits(
                    packageName,
                    apks
                )
            } else {
                InstallerSourceProxy(context).installSharedLibraries(apks)
            }
        }.getOrDefault(false).also {
            working.deleteRecursively()
        }
    }


    private fun restoreSpecialPermissions(
        app: CanonicalApp,
        payload: AppSpecialDataPayload?
    ) {
        if (payload == null) return

        payload.permissionStatesCsv.orEmpty()
            .split(',')
            .filter { it.contains(':') }
            .forEach { entry ->
                val permission = entry.substringBefore(':')
                val state = entry.substringAfter(':')
                if (state == "g") {
                    privileged.run(
                        "pm grant '" + app.packageName + "' '" +
                            permission.replace("'", "") + "'"
                    )
                }
            }

        payload.ntfAccessComponent?.takeIf { it.isNotBlank() }?.let { component ->
            mergeSecureComponentSetting(
                "enabled_notification_listeners",
                component
            )
        }

        payload.accessibilityComponent?.takeIf { it.isNotBlank() }?.let { component ->
            mergeSecureComponentSetting(
                android.provider.Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES,
                component
            )
        }

        payload.notificationPolicyXml?.let { xml ->
            notificationPolicy.restore(
                xml,
                app.packageName,
                android.os.UserHandle.myUserId()
            )
        }
    }

    private fun mergeSecureComponentSetting(setting: String, component: String) {
        val value = component.replace("'", "")
        val current = runCatching {
            android.provider.Settings.Secure.getString(
                context.contentResolver,
                setting
            )
        }.getOrNull()
        val entries = current.orEmpty()
            .split(':')
            .filter { it.isNotBlank() }
            .filterNot { it.equals(value, ignoreCase = true) }
            .toMutableList()
        entries.add(value)
        privileged.run(
            "settings put secure '" + setting.replace("'", "") + "' '" +
                entries.joinToString(":").replace("'", "") + "'"
        )
    }

    private fun restoreSsaid(packageName: String, ssaid: String?) {
        if (ssaid.isNullOrBlank()) return
        ssaidHelper.restore(packageName, ssaid)
    }

    private fun restoreDirectoryArchive(
        archive: File,
        targetPath: String?,
        deTarget: String?,
        onProgress: (Long) -> Unit
    ): Boolean {
        val target = targetPath?.let(::File) ?: return false
        val working = AppsWorkingDir(context).app("restore-" + System.nanoTime())
        return runCatching {
            ArchiveEngine.unpack(archive, working, onProgress)
            val payload = File(working, "payload")
            if (!payload.exists()) return@runCatching false
            if (
                privileged.run(
                    "mkdir -p '" + target.absolutePath + "' && cp -a '" +
                        payload.absolutePath + "/.' '" + target.absolutePath + "/'"
                ).code != 0
            ) {
                return@runCatching false
            }
            if (deTarget != null) {
                val de = File(deTarget)
                val deSource = File(working, "payload_de")
                if (
                    deSource.exists() &&
                    privileged.run(
                        "mkdir -p '" + de.absolutePath + "' && cp -a '" +
                            deSource.absolutePath + "/.' '" + de.absolutePath + "/'"
                    ).code != 0
                ) {
                    return@runCatching false
                }
            }
            true
        }.getOrDefault(false).also {
            working.deleteRecursively()
        }
    }
}

data class RestoreResult(val success: Boolean, val message: String)
