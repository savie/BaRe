package com.bare.feature.settings

import android.content.Context
import android.os.Build
import com.bare.R
import com.bare.app.LocalIdentityStore
import com.bare.storage.BackupStorage
import com.bare.storage.BackupStorageRepository
import java.util.Locale

enum class DiagnosticsStatus {
    READY,
    ATTENTION,
    NOT_AVAILABLE,
}

data class DiagnosticsCheck(
    val title: String,
    val status: DiagnosticsStatus,
    val detail: String,
)

data class DiagnosticsSnapshot(
    val appVersion: String,
    val runtime: String,
    val identity: String,
    val storage: String,
    val recovery: String,
    val encryption: String,
    val backups: String,
    val checks: List<DiagnosticsCheck>,
    val logs: List<BaReLogEntry>,
)

class DiagnosticsService(private val context: Context) {
    private val appContext = context.applicationContext
    private val identityStore = LocalIdentityStore(appContext)
    private val storageRepository = BackupStorageRepository(appContext)
    private val storageStore = com.bare.storage.StorageConfigurationStore(appContext)
    private val recoveryPasswordStore = com.bare.feature.account.RecoveryPasswordStore(appContext)
    private val encryptionPasswordStore = EncryptionPasswordStore(appContext)
    private val logger = BaReLogger(appContext)

    fun collect(): DiagnosticsSnapshot {
        val identity = identityStore.load()
        val internal = storageRepository.internalStorage(identity?.identityId ?: "")
        val selectedStorage = storageStore.loadKind()
        val backupBytes = identity?.identityId?.let(storageRepository::localBackupSize) ?: 0L
        val recoveryBytes = identity?.identityId?.let(storageRepository::localRecoverySize) ?: 0L
        val recoveryReady = recoveryPasswordStore.hasPassword() && recoveryBytes > 0L
        val encryptionStrategy = encryptionPasswordStore.loadStrategy()
        val encryptionReady = encryptionStrategy == EncryptionPasswordStrategy.STANDARD ||
            encryptionPasswordStore.hasActivePassword()

        val selectedStorageInfo = selectedStorage?.let { kind ->
            storageRepository.inspect(identity?.identityId.orEmpty()).firstOrNull { it.kind == kind }
        } ?: internal

        val storageStatus = when {
            !selectedStorageInfo.available -> DiagnosticsStatus.NOT_AVAILABLE
            !selectedStorageInfo.writable -> DiagnosticsStatus.ATTENTION
            else -> DiagnosticsStatus.READY
        }

        val storageDetail = when {
            !selectedStorageInfo.available ->
                appContext.getString(R.string.diagnostics_storage_selected_unavailable)
            !selectedStorageInfo.writable ->
                appContext.getString(R.string.diagnostics_storage_read_only)
            selectedStorageInfo.kind == BackupStorage.Kind.EXTERNAL ->
                appContext.getString(R.string.diagnostics_storage_external_ready)
            else ->
                appContext.getString(R.string.diagnostics_storage_internal_ready)
        }

        val checks = listOf(
            DiagnosticsCheck(
                title = appContext.getString(R.string.diagnostics_check_runtime),
                status = DiagnosticsStatus.READY,
                detail = appContext.getString(R.string.diagnostics_runtime_ready, Build.VERSION.RELEASE),
            ),
            DiagnosticsCheck(
                title = appContext.getString(R.string.diagnostics_check_identity),
                status = if (identity != null) DiagnosticsStatus.READY else DiagnosticsStatus.ATTENTION,
                detail = if (identity != null) appContext.getString(R.string.diagnostics_identity_ready, appContext.getString(R.string.app_text))
                else appContext.getString(R.string.diagnostics_identity_missing),
            ),
            DiagnosticsCheck(
                title = appContext.getString(R.string.diagnostics_check_storage),
                status = storageStatus,
                detail = storageDetail,
            ),
            DiagnosticsCheck(
                title = appContext.getString(R.string.diagnostics_check_recovery),
                status = when {
                    recoveryReady -> DiagnosticsStatus.READY
                    recoveryPasswordStore.hasPassword() -> DiagnosticsStatus.ATTENTION
                    else -> DiagnosticsStatus.NOT_AVAILABLE
                },
                detail = when {
                    recoveryReady -> appContext.getString(R.string.diagnostics_recovery_ready)
                    recoveryPasswordStore.hasPassword() -> appContext.getString(R.string.diagnostics_recovery_missing_package)
                    else -> appContext.getString(R.string.diagnostics_recovery_not_configured)
                },
            ),
            DiagnosticsCheck(
                title = appContext.getString(R.string.diagnostics_check_encryption),
                status = if (encryptionReady) DiagnosticsStatus.READY else DiagnosticsStatus.ATTENTION,
                detail = if (encryptionReady) {
                    when (encryptionStrategy) {
                        EncryptionPasswordStrategy.STANDARD -> appContext.getString(R.string.diagnostics_encryption_standard)
                        EncryptionPasswordStrategy.ADVANCED -> appContext.getString(R.string.diagnostics_encryption_advanced)
                    }
                } else {
                    appContext.getString(R.string.diagnostics_encryption_password_missing)
                },
            ),
            DiagnosticsCheck(
                title = appContext.getString(R.string.diagnostics_check_backups),
                status = if (backupBytes > 0L) DiagnosticsStatus.READY else DiagnosticsStatus.NOT_AVAILABLE,
                detail = if (backupBytes > 0L) {
                    appContext.getString(R.string.diagnostics_backups_ready)
                } else {
                    appContext.getString(R.string.diagnostics_backups_not_available)
                },
            ),
        )

        return DiagnosticsSnapshot(
            appVersion = runCatching {
                appContext.packageManager.getPackageInfo(appContext.packageName, 0).versionName ?: "Unknown"
            }.getOrDefault("Unknown"),
            runtime = appContext.getString(R.string.diagnostics_runtime_value, Build.MODEL, Build.VERSION.RELEASE),
            identity = identity?.identityId ?: appContext.getString(R.string.not_available),
            storage = storageDetail,
            recovery = if (recoveryReady) appContext.getString(R.string.diagnostics_status_ready)
            else appContext.getString(R.string.diagnostics_status_not_available),
            encryption = encryptionStrategy.name,
            backups = formatBytes(backupBytes),
            checks = checks,
            logs = logger.load(),
        )
    }

    fun clearLogs() {
        logger.clear()
    }

    fun buildReport(snapshot: DiagnosticsSnapshot): String = buildString {
        appendLine(appContext.getString(R.string.diagnostics_report_title, appContext.getString(R.string.app_text)))
        appendLine(appContext.getString(R.string.diagnostics_report_app_version, snapshot.appVersion))
        appendLine(appContext.getString(R.string.diagnostics_report_runtime, snapshot.runtime))
        appendLine(appContext.getString(R.string.diagnostics_report_identity, appContext.getString(R.string.app_text), snapshot.identity.take(8)))
        appendLine(appContext.getString(R.string.diagnostics_report_storage, snapshot.storage))
        appendLine(appContext.getString(R.string.diagnostics_report_recovery, snapshot.recovery))
        appendLine(appContext.getString(R.string.diagnostics_report_encryption, snapshot.encryption))
        appendLine(appContext.getString(R.string.diagnostics_report_backups, snapshot.backups))
        appendLine()
        appendLine(appContext.getString(R.string.diagnostics_report_health))
        snapshot.checks.forEach { check ->
            appendLine("${check.title}: ${check.detail}")
        }
        appendLine()
        appendLine(appContext.getString(R.string.diagnostics_report_activity))
        snapshot.logs.takeLast(100).forEach { entry ->
            appendLine(logger.format(entry))
        }
    }

    private fun formatBytes(bytes: Long): String {
        if (bytes < 1024L) return appContext.getString(R.string.size_bytes, bytes)
        var value = bytes.toDouble()
        val units = arrayOf(
            R.string.size_kb to 1024.0,
            R.string.size_mb to 1024.0 * 1024.0,
            R.string.size_gb to 1024.0 * 1024.0 * 1024.0,
            R.string.size_tb to 1024.0 * 1024.0 * 1024.0 * 1024.0,
        )
        val unit = when {
            bytes < 1024L * 1024L -> units[0]
            bytes < 1024L * 1024L * 1024L -> units[1]
            bytes < 1024L * 1024L * 1024L * 1024L -> units[2]
            else -> units[3]
        }
        val divisor = unit.second
        return appContext.getString(unit.first, value / divisor)
    }
}
