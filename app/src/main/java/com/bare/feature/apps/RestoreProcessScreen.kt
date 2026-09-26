package com.bare.feature.apps

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.material.icons.filled.BugReport
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.res.stringResource
import com.bare.R
import com.bare.app.GlobalHeader
import com.bare.feature.settings.EncryptionPasswordStore
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

internal enum class RestoreProcessStatus { RUNNING, WAITING, DONE, FAILED }

internal data class RestoreProcessLog(
    val message: String,
    val failed: Boolean = false,
    val timestampMillis: Long = System.currentTimeMillis(),
    val level: ProcessDiagnosticLevel = if (failed) ProcessDiagnosticLevel.ERROR else ProcessDiagnosticLevel.INFO,
    val tag: String = "AppRestoreBehavior",
    val stage: String? = null,
    val part: String? = null,
    val processedBytes: Long? = null,
    val totalBytes: Long? = null,
    val elapsedMillis: Long? = null,
    val bytesPerSecond: Long? = null,
)

private fun formatRestoreBytes(bytes: Long): String {
    val value = bytes.coerceAtLeast(0L)
    if (value < 1024L) return "$value B"
    if (value < 1024L * 1024L) return String.format(java.util.Locale.US, "%.1f KB", value / 1024.0)
    if (value < 1024L * 1024L * 1024L) return String.format(java.util.Locale.US, "%.2f MB", value / (1024.0 * 1024.0))
    return String.format(java.util.Locale.US, "%.2f GB", value / (1024.0 * 1024.0 * 1024.0))
}

private fun formatRestoreDuration(millis: Long): String =
    if (millis < 1000L) "$millis ms" else String.format(java.util.Locale.US, "%.1f s", millis / 1000.0)

private fun AppBackupPart.restoreDisplayName(): String = when (this) {
    AppBackupPart.APK -> "APK"
    AppBackupPart.DATA -> "Data"
    AppBackupPart.EXTERNAL_DATA -> "Ext. data"
    AppBackupPart.MEDIA -> "Media"
}


@Composable
internal fun RestoreProcessScreen(
    packageName: String,
    appName: String,
    versionCode: Long,
    parts: Set<AppBackupPart>,
    accessMethod: com.bare.app.AccessMethod?,
    onDone: () -> Unit,
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    var status by remember { mutableStateOf(RestoreProcessStatus.RUNNING) }
    var currentPart by remember { mutableStateOf<AppBackupPart?>(null) }
    var message by remember { mutableStateOf("Preparing restore") }
    var processedBytes by remember { mutableStateOf<Long?>(null) }
    var totalBytes by remember { mutableStateOf<Long?>(null) }
    var elapsedMillis by remember { mutableStateOf<Long?>(null) }
    var bytesPerSecond by remember { mutableStateOf<Long?>(null) }
    var logs by remember {
        mutableStateOf(
            listOf(
                emitProcessDiagnostic(
                    "AppRestoreBehavior",
                    "Started restore: " + appName + " (" + packageName + ")",
                ),
                emitProcessDiagnostic(
                    "AppRestoreBehavior",
                    "Props=Restore(appParts=" + parts.map { it.name } +
                        ", accessMethod=" + (accessMethod ?: "ROOT") +
                        ", backupVersion=" + versionCode + ")",
                ),
                emitProcessDiagnostic(
                    "AppRestoreBehavior",
                    "Tasks to perform = " + parts.joinToString(", ") { it.name },
                ),
            ).map { entry ->
                RestoreProcessLog(
                    message = entry.message,
                    timestampMillis = entry.timestampMillis,
                    level = entry.level,
                    tag = entry.tag,
                    stage = "STARTED",
                )
            }
        )
    }
    var showDetailedDiagnostics by remember { mutableStateOf(false) }
    val advanced = remember(context) { EncryptionPasswordStore(context).loadStrategy() == com.bare.feature.settings.EncryptionPasswordStrategy.ADVANCED }
    var started by remember { mutableStateOf(!advanced) }
    var password by remember { mutableStateOf("") }

    if (showDetailedDiagnostics) {
        ProcessDiagnosticsScreen(
            operation = "Restore",
            appName = appName,
            status = when (status) {
                RestoreProcessStatus.RUNNING -> "Running"
                RestoreProcessStatus.WAITING -> "Waiting"
                RestoreProcessStatus.DONE -> "Done"
                RestoreProcessStatus.FAILED -> "Failed"
            },
            packageName = packageName,
            versionCode = versionCode,
            entries = logs.map { log ->
                ProcessDiagnosticLogEntry(
                    timestampMillis = log.timestampMillis,
                    level = log.level,
                    tag = log.tag,
                    stage = log.stage,
                    part = log.part,
                    message = log.message,
                    processedBytes = log.processedBytes,
                    totalBytes = log.totalBytes,
                    elapsedMillis = log.elapsedMillis,
                    bytesPerSecond = log.bytesPerSecond,
                )
            },
            onBack = { showDetailedDiagnostics = false },
            onClearLogs = { logs = emptyList() },
        )
        return
    }

    LaunchedEffect(packageName, versionCode, parts, accessMethod, started) {
        if (!started) return@LaunchedEffect
        val behavior = AppRestoreBehavior(context)
        val result = withContext(Dispatchers.IO) {
            behavior.restore(
                AppRestoreRequest(packageName, versionCode, parts, accessMethod, password.takeIf { it.isNotEmpty() }?.toCharArray()),
                onProgress = { progress ->
                    currentPart = progress.part
                    message = progress.message
                    processedBytes = progress.processedBytes
                    totalBytes = progress.totalBytes
                    elapsedMillis = progress.elapsedMillis
                    bytesPerSecond = progress.bytesPerSecond
                    if (progress.stage != AppBackupProgressStage.PART_PROGRESS) {
                        val level = when (progress.stage) {
                            AppBackupProgressStage.PART_FAILED -> ProcessDiagnosticLevel.ERROR
                            AppBackupProgressStage.CANCELLED -> ProcessDiagnosticLevel.WARN
                            else -> ProcessDiagnosticLevel.INFO
                        }
                        val tag = when (progress.stage) {
                            AppBackupProgressStage.PREPARING,
                            AppBackupProgressStage.COMPLETED,
                            AppBackupProgressStage.CANCELLED -> "AppRestoreBehavior"
                            else -> "AppRestoreArchiveReader"
                        }
                        val diagnostic = emitProcessDiagnostic(
                            tag = tag,
                            message = progress.message,
                            level = level,
                            stage = progress.stage.name,
                            part = progress.part?.name,
                            processedBytes = progress.processedBytes,
                            totalBytes = progress.totalBytes,
                            elapsedMillis = progress.elapsedMillis,
                            bytesPerSecond = progress.bytesPerSecond,
                        )
                        logs = (logs + RestoreProcessLog(
                            message = diagnostic.message,
                            failed = diagnostic.level == ProcessDiagnosticLevel.ERROR,
                            timestampMillis = diagnostic.timestampMillis,
                            level = diagnostic.level,
                            tag = diagnostic.tag,
                            stage = diagnostic.stage,
                            part = progress.part?.restoreDisplayName(),
                            processedBytes = progress.processedBytes,
                            totalBytes = progress.totalBytes,
                            elapsedMillis = progress.elapsedMillis,
                            bytesPerSecond = progress.bytesPerSecond,
                        )).takeLast(80)
                    }
                },
            )
        }
        when (result) {
            is AppRestoreOutcome.Completed -> {
                status = RestoreProcessStatus.DONE
                message = "Restore completed"
            }
            is AppRestoreOutcome.PendingUserAction -> {
                status = RestoreProcessStatus.WAITING
                message = result.message
                val diagnostic = emitProcessDiagnostic("AppRestoreBehavior", result.message, ProcessDiagnosticLevel.WARN)
                logs = (logs + RestoreProcessLog(
                    message = diagnostic.message,
                    timestampMillis = diagnostic.timestampMillis,
                    level = diagnostic.level,
                    tag = diagnostic.tag,
                )).takeLast(500)
            }
            is AppRestoreOutcome.Failed -> {
                status = RestoreProcessStatus.FAILED
                message = result.reason
                val diagnostic = emitProcessDiagnostic("AppRestoreBehavior", result.reason, ProcessDiagnosticLevel.ERROR)
                logs = (logs + RestoreProcessLog(
                    message = diagnostic.message,
                    failed = true,
                    timestampMillis = diagnostic.timestampMillis,
                    level = diagnostic.level,
                    tag = diagnostic.tag,
                )).takeLast(500)
            }
        }
    }

    Column(
        Modifier.fillMaxSize().background(MaterialTheme.colorScheme.background),
    ) {
        GlobalHeader()
        BaReSubHeader(
            title = "Restore",
            subtitle = appName,
            onBack = if (status == RestoreProcessStatus.RUNNING) ({}) else onDone,
            backEnabled = status != RestoreProcessStatus.RUNNING,
            actions = {
                IconButton(
                    onClick = { showDetailedDiagnostics = true },
                ) {
                    Icon(
                        Icons.Default.BugReport,
                        contentDescription = stringResource(R.string.backup_diagnostics),
                    )
                }
            },
        )
        Column(
            Modifier.fillMaxWidth().padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp),
        ) {
            Box(Modifier.size(92.dp).align(Alignment.CenterHorizontally), contentAlignment = Alignment.Center) {
                CircularProgressIndicator(
                    progress = { if (status == RestoreProcessStatus.DONE) 1f else 0.65f },
                    modifier = Modifier.fillMaxSize(),
                    strokeWidth = 7.dp,
                )
                Icon(
                    when (status) {
                        RestoreProcessStatus.RUNNING -> Icons.Default.PlayArrow
                        RestoreProcessStatus.WAITING -> Icons.Default.PlayArrow
                        RestoreProcessStatus.DONE -> Icons.Default.Check
                        RestoreProcessStatus.FAILED -> Icons.Default.Error
                    },
                    contentDescription = null,
                    modifier = Modifier.size(36.dp),
                )
            }
            Text(
                message,
                modifier = Modifier.align(Alignment.CenterHorizontally),
                style = MaterialTheme.typography.headlineSmall,
                fontWeight = FontWeight.SemiBold,
            )
            if (!started && advanced) {
                OutlinedTextField(
                    value = password,
                    onValueChange = { password = it },
                    modifier = Modifier.fillMaxWidth(),
                    label = { Text("Backup password") },
                    singleLine = true,
                    visualTransformation = androidx.compose.ui.text.input.PasswordVisualTransformation(),
                )
                Button(
                    onClick = {
                        if (password.isNotEmpty()) {
                            started = true
                            message = "Preparing restore"
                        }
                    },
                    modifier = Modifier.fillMaxWidth(),
                    enabled = password.isNotEmpty(),
                ) { Text("START RESTORE") }
            }
            Card(Modifier.fillMaxWidth()) {
                Column(Modifier.padding(18.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    if (totalBytes != null && totalBytes!! > 0L) {
                        val progressFraction = ((processedBytes ?: 0L).toDouble() / totalBytes!!.toDouble()).coerceIn(0.0, 1.0).toFloat()
                        LinearProgressIndicator(
                            progress = { progressFraction },
                            modifier = Modifier.fillMaxWidth(),
                        )
                        Text(
                            "Progress: " + formatRestoreBytes(processedBytes ?: 0L) + " / " + formatRestoreBytes(totalBytes!!),
                            fontWeight = FontWeight.SemiBold,
                        )
                        Text(
                            buildString {
                                append("Elapsed: ")
                                append(formatRestoreDuration(elapsedMillis ?: 0L))
                                if ((bytesPerSecond ?: 0L) > 0L) {
                                    append("  •  ")
                                    append(formatRestoreBytes(bytesPerSecond!!))
                                    append("/s")
                                }
                            },
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                    Text(
                        currentPart?.let { "Current part: ${it.restoreDisplayName()}" } ?: "Restore",
                        fontWeight = FontWeight.Bold,
                    )
                    Text("Backup version: $versionCode")
                    if (logs.isNotEmpty()) {
                        HorizontalDivider()
                        LazyColumn(Modifier.heightIn(max = 280.dp)) {
                            items(logs) { Text(it.message, style = MaterialTheme.typography.bodySmall) }
                        }
                    }
                }
            }
        }
        Spacer(Modifier.weight(1f))
        if (status != RestoreProcessStatus.RUNNING && started) {
            Button(
                onClick = onDone,
                modifier = Modifier.fillMaxWidth().padding(20.dp).height(58.dp),
                shape = androidx.compose.foundation.shape.RoundedCornerShape(30.dp),
            ) { Text("DONE") }
        }
    }
}
