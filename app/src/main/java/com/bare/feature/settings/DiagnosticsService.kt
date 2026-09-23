package com.bare.feature.settings

import android.content.Context
import com.bare.R
import com.bare.app.LocalIdentityStore
import com.bare.storage.BackupStorageRepository

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

        val checks = listOf(
            DiagnosticsCheck(
                title = appContext.getString(R.string.diagnostics_check_identity),
                status = if (identity != null) DiagnosticsStatus.READY else DiagnosticsStatus.ATTENTION,
                detail = if (identity != null) appContext.getString(R.string.diagnostics_identity_ready) else appContext.getString(R.string.diagnostics_identity_missing),
            ),
            DiagnosticsCheck(
                title = "Storage",
                status = when {
                    !internal.available -> DiagnosticsStatus.NOT_AVAILABLE
                    !internal.writable -> DiagnosticsStatus.ATTENTION
                    else -> DiagnosticsStatus.READY
                },
                detail = when {
                    !internal.available -> "Local storage is not available"
                    !internal.writable -> "Local storage is read-only"
                    else -> "\${selectedStorage.name.lowercase().replace('_', ' ')} storage is available"
                },
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
            identity = identity?.identityId ?: "Not available",
            storage = internal.displayName,
            recovery = if (recoveryReady) "Ready" else "Not available",
            encryption = encryptionStrategy.name,
            backups = formatBytes(backupBytes),
            checks = checks,
            logs = logger.load(),
        )
    }

    fun buildReport(snapshot: DiagnosticsSnapshot): String = buildString {
        appendLine("BaRe Diagnostics")
        appendLine("App version: \${snapshot.appVersion}")
        appendLine("Identity: \${snapshot.identity.take(8)}")
        appendLine("Storage: \${snapshot.storage}")
        appendLine("Recovery: \${snapshot.recovery}")
        appendLine("Encryption: \${snapshot.encryption}")
        appendLine("Backups: \${snapshot.backups}")
        appendLine()
        appendLine("Health")
        snapshot.checks.forEach { check ->
            appendLine("\${check.title}: \${check.status.name} — \${check.detail}")
        }
        appendLine()
        appendLine("Recent activity")
        snapshot.logs.takeLast(100).forEach { entry ->
            appendLine(logger.format(entry))
        }
    }

    private fun formatBytes(bytes: Long): String {
        if (bytes < 1024L) return "\${bytes} B"
        var value = bytes.toDouble()
        val units = arrayOf("KB", "MB", "GB", "TB")
        var index = -1
        while (value >= 1024.0 && index < units.lastIndex) {
            value /= 1024.0
            index++
        }
        return "%.1f %s".format(java.util.Locale.getDefault(), value, units[index])
    }
}
