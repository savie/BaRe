package com.bare.feature.apps

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.BugReport
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.bare.R
import com.bare.app.GlobalHeader

internal enum class BackupProcessStatus {
    RUNNING,
    DONE,
    FAILED,
    CANCELLED,
}

internal data class BackupProcessLog(
    val message: String,
    val failed: Boolean = false,
)

@Composable
internal fun BackupProcessScreen(
    appName: String,
    selectedParts: Set<AppBackupPart>,
    currentPart: AppBackupPart?,
    completedParts: Set<AppBackupPart>,
    status: BackupProcessStatus,
    logs: List<BackupProcessLog>,
    onCancel: () -> Unit,
    onDone: () -> Unit,
) {
    val total = selectedParts.size.coerceAtLeast(1)
    val completed = completedParts.count { it in selectedParts }
    val progress = (completed.toFloat() / total.toFloat()).coerceIn(0f, 1f)
    val running = status == BackupProcessStatus.RUNNING

    Column(
        Modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.background),
    ) {
        GlobalHeader()
        BaReSubHeader(
            title = stringResource(R.string.backup_process),
            subtitle = appName,
            onBack = onDone,
            backEnabled = !running,
            actions = {
                Icon(
                    Icons.Default.BugReport,
                    contentDescription = stringResource(R.string.backup_diagnostics),
                    modifier = Modifier.size(28.dp),
                )
            },
        )

        Column(
            Modifier.fillMaxWidth().padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp),
        ) {
            Box(
                Modifier.size(92.dp).align(Alignment.CenterHorizontally),
                contentAlignment = Alignment.Center,
            ) {
                CircularProgressIndicator(
                    progress = { if (status == BackupProcessStatus.DONE) 1f else progress },
                    modifier = Modifier.fillMaxSize(),
                    strokeWidth = 7.dp,
                )
                if (status == BackupProcessStatus.DONE) {
                    Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(38.dp))
                } else if (status == BackupProcessStatus.FAILED) {
                    Icon(Icons.Default.Error, contentDescription = null, modifier = Modifier.size(38.dp))
                } else if (status == BackupProcessStatus.CANCELLED) {
                    Icon(Icons.Default.Close, contentDescription = null, modifier = Modifier.size(38.dp))
                } else {
                    Icon(Icons.Default.PlayArrow, contentDescription = null, modifier = Modifier.size(34.dp))
                }
            }

            Text(
                when (status) {
                    BackupProcessStatus.RUNNING -> stringResource(R.string.backup_process_running)
                    BackupProcessStatus.DONE -> stringResource(R.string.backup_process_done)
                    BackupProcessStatus.FAILED -> stringResource(R.string.backup_process_failed)
                    BackupProcessStatus.CANCELLED -> stringResource(R.string.backup_process_cancelled)
                },
                modifier = Modifier.align(Alignment.CenterHorizontally),
                style = MaterialTheme.typography.headlineSmall,
                fontWeight = FontWeight.SemiBold,
            )

            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(24.dp),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface,
                ),
            ) {
                Column(Modifier.fillMaxWidth().padding(18.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
                    Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                        Text(
                            stringResource(R.string.backup_process_apps),
                            fontWeight = FontWeight.Bold,
                            modifier = Modifier.weight(1f),
                        )
                        Text(
                            stringResource(R.string.backup_process_parts_progress, completed, total),
                            style = MaterialTheme.typography.labelLarge,
                        )
                    }
                    LinearProgressIndicator(
                        progress = { progress },
                        modifier = Modifier.fillMaxWidth(),
                    )
                    Text(
                        when {
                            currentPart != null -> stringResource(
                                R.string.backup_process_current_part,
                                currentPart.displayNameForUi(),
                            )
                            status == BackupProcessStatus.DONE -> stringResource(R.string.backup_process_all_done)
                            status == BackupProcessStatus.FAILED -> stringResource(R.string.backup_process_failed)
                            status == BackupProcessStatus.CANCELLED -> stringResource(R.string.backup_process_cancelled)
                            else -> stringResource(R.string.backup_process_preparing)
                        },
                        style = MaterialTheme.typography.bodyMedium,
                    )
                }
            }

            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(20.dp),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface,
                ),
            ) {
                Column(Modifier.fillMaxWidth().padding(16.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Default.BugReport, contentDescription = null, modifier = Modifier.size(20.dp))
                        Spacer(Modifier.width(8.dp))
                        Text(stringResource(R.string.backup_diagnostics), fontWeight = FontWeight.Bold)
                    }
                    LazyColumn(
                        Modifier.fillMaxWidth().heightIn(max = 300.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp),
                    ) {
                        items(logs) { log ->
                            Row(verticalAlignment = Alignment.Top) {
                                Box(
                                    Modifier.padding(top = 5.dp).size(7.dp),
                                    contentAlignment = Alignment.Center,
                                ) {
                                    Surface(
                                        Modifier.fillMaxSize(),
                                        shape = CircleShape,
                                        color = if (log.failed) MaterialTheme.colorScheme.error else MaterialTheme.colorScheme.primary,
                                    ) {}
                                }
                                Spacer(Modifier.width(8.dp))
                                Text(
                                    log.message,
                                    color = if (log.failed) MaterialTheme.colorScheme.error else MaterialTheme.colorScheme.onSurface,
                                    style = MaterialTheme.typography.bodySmall,
                                )
                            }
                        }
                    }
                }
            }
        }

        Spacer(Modifier.weight(1f))

        if (running) {
            Button(
                onClick = onCancel,
                modifier = Modifier.fillMaxWidth().padding(20.dp).height(58.dp),
                shape = RoundedCornerShape(30.dp),
                colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.error),
            ) {
                Text(stringResource(R.string.backup_cancel).uppercase())
            }
        } else {
            Button(
                onClick = onDone,
                modifier = Modifier.fillMaxWidth().padding(20.dp).height(58.dp),
                shape = RoundedCornerShape(30.dp),
            ) {
                Text(stringResource(R.string.backup_done).uppercase())
            }
        }
    }
}

private fun AppBackupPart.displayNameForUi(): String = when (this) {
    AppBackupPart.APK -> "APK"
    AppBackupPart.DATA -> "Data"
    AppBackupPart.EXTERNAL_DATA -> "Ext. data"
    AppBackupPart.MEDIA -> "Media"
}
