package com.bare.feature.settings

import android.content.Context
import android.content.Intent
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.bare.R
import kotlinx.coroutines.delay

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DiagnosticsScreen(onBack: () -> Unit) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val service = remember(context) { DiagnosticsService(context) }
    var snapshot by remember { mutableStateOf(service.collect()) }
    var showDeleteConfirmation by remember { mutableStateOf(false) }

    fun refresh() {
        snapshot = service.collect()
    }

    LaunchedEffect(service) {
        while (true) {
            delay(2_000)
            snapshot = service.collect()
        }
    }

    if (showDeleteConfirmation) {
        AlertDialog(
            onDismissRequest = { showDeleteConfirmation = false },
            title = { Text(stringResource(R.string.diagnostics_delete_logs_title)) },
            text = { Text(stringResource(R.string.diagnostics_delete_logs_message)) },
            confirmButton = {
                TextButton(
                    onClick = {
                        service.clearLogs()
                        snapshot = service.collect()
                        showDeleteConfirmation = false
                    },
                ) {
                    Text(stringResource(R.string.delete))
                }
            },
            dismissButton = {
                TextButton(onClick = { showDeleteConfirmation = false }) {
                    Text(stringResource(R.string.cancel))
                }
            },
        )
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.diagnostics)) },
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(Icons.Outlined.ArrowBack, stringResource(R.string.back))
                    }
                },
            )
        },
    ) { padding ->
        LazyColumn(
            modifier = Modifier.fillMaxSize().padding(padding).padding(horizontal = 12.dp),
            contentPadding = PaddingValues(top = 8.dp, bottom = 28.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            item { DiagnosticsSummaryCard(snapshot) }
            item {
                Text(
                    stringResource(R.string.diagnostics_health_title),
                    style = MaterialTheme.typography.titleMedium,
                )
            }
            items(snapshot.checks, key = { it.title }) { check ->
                DiagnosticsCheckRow(check)
            }
            item {
                Text(
                    stringResource(R.string.diagnostics_activity_title),
                    style = MaterialTheme.typography.titleMedium,
                )
            }
            item {
                DiagnosticsActivityCard(
                    logs = snapshot.logs,
                    context = context,
                )
            }
            item {
                DiagnosticsActions(
                    context = context,
                    report = service.buildReport(snapshot),
                    onRefresh = ::refresh,
                    onDeleteLogs = { showDeleteConfirmation = true },
                )
            }
        }
    }
}

@Composable
private fun DiagnosticsSummaryCard(snapshot: DiagnosticsSnapshot) {
    val attentionCount = snapshot.checks.count { it.status == DiagnosticsStatus.ATTENTION }
    val unavailableCount = snapshot.checks.count { it.status == DiagnosticsStatus.NOT_AVAILABLE }
    val summary = when {
        attentionCount > 0 -> stringResource(R.string.diagnostics_summary_attention, attentionCount)
        unavailableCount > 0 -> stringResource(R.string.diagnostics_summary_unavailable, unavailableCount)
        else -> stringResource(R.string.diagnostics_summary_ready)
    }
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(22.dp),
    ) {
        Column(
            modifier = Modifier.fillMaxWidth().padding(18.dp),
            verticalArrangement = Arrangement.spacedBy(6.dp),
        ) {
            Text(
                stringResource(R.string.diagnostics_summary_title),
                style = MaterialTheme.typography.titleLarge,
            )
            Text(summary, color = MaterialTheme.colorScheme.onSurfaceVariant)
            Text(
                stringResource(R.string.diagnostics_app_version, snapshot.appVersion),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
    }
}

@Composable
private fun DiagnosticsCheckRow(check: DiagnosticsCheck) {
    val (label, icon) = when (check.status) {
        DiagnosticsStatus.READY -> stringResource(R.string.diagnostics_status_ready) to Icons.Outlined.CheckCircle
        DiagnosticsStatus.ATTENTION -> stringResource(R.string.diagnostics_status_attention) to Icons.Outlined.WarningAmber
        DiagnosticsStatus.NOT_AVAILABLE -> stringResource(R.string.diagnostics_status_not_available) to Icons.Outlined.Info
    }
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(18.dp),
    ) {
        Row(
            modifier = Modifier.fillMaxWidth().padding(16.dp),
            horizontalArrangement = Arrangement.spacedBy(14.dp),
        ) {
            Icon(icon, contentDescription = null)
            Column(Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(3.dp)) {
                Text(check.title, style = MaterialTheme.typography.titleMedium)
                Text(label, style = MaterialTheme.typography.labelMedium)
                Text(check.detail, color = MaterialTheme.colorScheme.onSurfaceVariant)
            }
        }
    }
}

@Composable
private fun DiagnosticsActivityCard(logs: List<BaReLogEntry>, context: Context) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(18.dp),
    ) {
        if (logs.isEmpty()) {
            Text(
                stringResource(R.string.no_logs),
                modifier = Modifier.padding(16.dp),
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        } else {
            androidx.compose.foundation.lazy.LazyColumn(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(min = 80.dp, max = 320.dp),
                contentPadding = PaddingValues(16.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp),
                userScrollEnabled = true,
            ) {
                items(logs.asReversed(), key = { it.timestamp to it.message }) { entry ->
                    Text(
                        BaReLogger(context).format(entry),
                        style = MaterialTheme.typography.bodySmall,
                    )
                }
            }
        }
    }
}

@Composable
private fun DiagnosticsActions(
    context: Context,
    report: String,
    onRefresh: () -> Unit,
    onDeleteLogs: () -> Unit,
) {
    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            OutlinedButton(
                onClick = onRefresh,
                modifier = Modifier.weight(1f),
            ) {
                Icon(Icons.Outlined.Refresh, null)
                Spacer(Modifier.width(8.dp))
                Text(stringResource(R.string.diagnostics_refresh))
            }
            OutlinedButton(
                onClick = onDeleteLogs,
                modifier = Modifier.weight(1f),
            ) {
                Icon(Icons.Outlined.DeleteOutline, null)
                Spacer(Modifier.width(8.dp))
                Text(stringResource(R.string.diagnostics_delete_logs))
            }
        }
        Button(
            onClick = {
                val intent = Intent(Intent.ACTION_SEND).apply {
                    type = "text/plain"
                    putExtra(Intent.EXTRA_SUBJECT, context.getString(R.string.diagnostics_report_subject))
                    putExtra(Intent.EXTRA_TEXT, report)
                }
                context.startActivity(
                    Intent.createChooser(
                        intent,
                        context.getString(R.string.diagnostics_share),
                    ),
                )
            },
            modifier = Modifier.fillMaxWidth(),
        ) {
            Icon(Icons.Outlined.Share, null)
            Spacer(Modifier.width(8.dp))
            Text(stringResource(R.string.diagnostics_share))
        }
    }
}
