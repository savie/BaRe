package com.bare.feature.apps

import androidx.activity.compose.BackHandler
import android.util.Log
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.BugReport
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.bare.R
import com.bare.app.GlobalHeader
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

internal enum class ProcessDiagnosticLevel { DEBUG, INFO, WARN, ERROR }

internal data class ProcessDiagnosticLogEntry(
    val timestampMillis: Long = System.currentTimeMillis(),
    val level: ProcessDiagnosticLevel = ProcessDiagnosticLevel.INFO,
    val tag: String,
    val message: String,
    val stage: String? = null,
    val part: String? = null,
    val processedBytes: Long? = null,
    val totalBytes: Long? = null,
    val elapsedMillis: Long? = null,
    val bytesPerSecond: Long? = null,
)

internal fun emitProcessDiagnostic(
    tag: String,
    message: String,
    level: ProcessDiagnosticLevel = ProcessDiagnosticLevel.INFO,
    stage: String? = null,
    part: String? = null,
    processedBytes: Long? = null,
    totalBytes: Long? = null,
    elapsedMillis: Long? = null,
    bytesPerSecond: Long? = null,
): ProcessDiagnosticLogEntry {
    val androidLevel = when (level) {
        ProcessDiagnosticLevel.DEBUG -> Log.DEBUG
        ProcessDiagnosticLevel.INFO -> Log.INFO
        ProcessDiagnosticLevel.WARN -> Log.WARN
        ProcessDiagnosticLevel.ERROR -> Log.ERROR
    }
    Log.println(androidLevel, tag, message)
    return ProcessDiagnosticLogEntry(
        timestampMillis = System.currentTimeMillis(),
        level = level,
        tag = tag,
        message = message,
        stage = stage,
        part = part,
        processedBytes = processedBytes,
        totalBytes = totalBytes,
        elapsedMillis = elapsedMillis,
        bytesPerSecond = bytesPerSecond,
    )
}

@Composable
internal fun ProcessDiagnosticsScreen(
    operation: String,
    appName: String,
    status: String,
    packageName: String?,
    versionCode: Long?,
    entries: List<ProcessDiagnosticLogEntry>,
    onBack: () -> Unit,
    onClearLogs: () -> Unit,
) {
    BackHandler(enabled = true, onBack = onBack)
    var menuExpanded by remember { mutableStateOf(false) }

    Column(
        Modifier.fillMaxSize().background(MaterialTheme.colorScheme.background),
    ) {
        GlobalHeader()
        BaReSubHeader(
            title = stringResource(R.string.diagnostics),
            subtitle = appName,
            onBack = onBack,
            actions = {
                Icon(
                    Icons.Default.BugReport,
                    contentDescription = stringResource(R.string.backup_diagnostics),
                    modifier = Modifier.size(28.dp),
                )
                Box {
                    IconButton(onClick = { menuExpanded = true }) {
                        Icon(
                            Icons.Default.MoreVert,
                            contentDescription = stringResource(R.string.process_diagnostics_menu),
                        )
                    }
                    DropdownMenu(
                        expanded = menuExpanded,
                        onDismissRequest = { menuExpanded = false },
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.process_diagnostics_clear_logs)) },
                            onClick = {
                                menuExpanded = false
                                onClearLogs()
                            },
                        )
                    }
                }
            },
        )

        if (entries.isEmpty()) {
            Box(
                Modifier.fillMaxSize().padding(horizontal = 16.dp, vertical = 20.dp),
            ) {
                Text(
                    stringResource(R.string.process_diagnostics_no_events),
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        } else {
            LazyColumn(
                modifier = Modifier.fillMaxSize().padding(bottom = 16.dp),
                contentPadding = PaddingValues(top = 2.dp),
            ) {
                items(
                    entries,
                    key = { entry ->
                        entry.timestampMillis.toString() + "-" + entry.tag + "-" + entry.message
                    },
                ) { entry ->
                    ProcessDiagnosticLogRow(entry)
                }
            }
        }
    }
}

@Composable
private fun ProcessDiagnosticLogRow(entry: ProcessDiagnosticLogEntry) {
    val timeFormat = remember { SimpleDateFormat("dd/MM/yy HH:mm:ss.SSS", Locale.ENGLISH) }
    val time = remember(entry.timestampMillis) { timeFormat.format(Date(entry.timestampMillis)) }
    val parts = time.split(" ", limit = 2)
    val timeColor = MaterialTheme.colorScheme.onSurfaceVariant
    val messageColor = when (entry.level) {
        ProcessDiagnosticLevel.DEBUG -> MaterialTheme.colorScheme.onSurfaceVariant
        ProcessDiagnosticLevel.INFO -> MaterialTheme.colorScheme.onSurface
        ProcessDiagnosticLevel.WARN -> MaterialTheme.colorScheme.tertiary
        ProcessDiagnosticLevel.ERROR -> MaterialTheme.colorScheme.error
    }

    Column(Modifier.fillMaxWidth()) {
        Row(
            modifier = Modifier.fillMaxWidth().defaultMinSize(minHeight = 28.dp).padding(horizontal = 8.dp, vertical = 3.dp),
            verticalAlignment = androidx.compose.ui.Alignment.CenterVertically,
        ) {
            Column(
                modifier = Modifier.width(82.dp),
                horizontalAlignment = androidx.compose.ui.Alignment.End,
            ) {
                Text(parts.firstOrNull().orEmpty(), fontSize = 8.sp, fontWeight = FontWeight.Bold, color = timeColor)
                Text(parts.getOrNull(1).orEmpty(), fontSize = 8.sp, fontWeight = FontWeight.Bold, color = timeColor)
            }
            Spacer(Modifier.width(12.dp))
            Text(
                text = entry.tag + ": " + entry.message,
                modifier = Modifier.weight(1f),
                fontFamily = FontFamily.Monospace,
                fontSize = 12.sp,
                lineHeight = 15.sp,
                color = messageColor,
            )
        }
        HorizontalDivider(
            modifier = Modifier.padding(horizontal = 8.dp),
            thickness = 1.dp,
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.55f),
        )
    }
}
