package com.bare.feature.apps

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.bare.R
import com.bare.app.GlobalHeader

internal data class ProcessDiagnosticLogEntry(
    val stage: String? = null,
    val part: String? = null,
    val message: String,
    val processedBytes: Long? = null,
    val totalBytes: Long? = null,
    val elapsedMillis: Long? = null,
    val bytesPerSecond: Long? = null,
    val failed: Boolean = false,
)

@Composable
internal fun ProcessDiagnosticsScreen(
    operation: String,
    appName: String,
    status: String,
    packageName: String?,
    versionCode: Long?,
    entries: List<ProcessDiagnosticLogEntry>,
    onBack: () -> Unit,
) {
    Column(
        Modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.background),
    ) {
        GlobalHeader()
        BaReSubHeader(
            title = stringResource(R.string.diagnostics),
            subtitle = appName,
            onBack = onBack,
        )

        LazyColumn(
            modifier = Modifier.fillMaxSize().padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
            contentPadding = PaddingValues(bottom = 24.dp),
        ) {
            item {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(20.dp),
                ) {
                    Column(
                        Modifier.padding(18.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp),
                    ) {
                        Text(
                            stringResource(R.string.process_diagnostics_summary),
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                        )
                        Text(stringResource(R.string.process_diagnostics_operation, operation))
                        Text(stringResource(R.string.process_diagnostics_status, status))
                        Text(stringResource(R.string.process_diagnostics_app, appName))
                        packageName?.let {
                            Text(stringResource(R.string.process_diagnostics_package, it))
                        }
                        versionCode?.let {
                            Text(stringResource(R.string.process_diagnostics_version, it))
                        }
                    }
                }
            }

            item {
                Text(
                    stringResource(R.string.process_diagnostics_events),
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                )
            }

            if (entries.isEmpty()) {
                item {
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(18.dp),
                    ) {
                        Text(
                            stringResource(R.string.process_diagnostics_no_events),
                            modifier = Modifier.padding(16.dp),
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                }
            } else {
                itemsIndexed(entries) { index, entry ->
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(18.dp),
                        colors = CardDefaults.cardColors(
                            containerColor = if (entry.failed) {
                                MaterialTheme.colorScheme.errorContainer
                            } else {
                                MaterialTheme.colorScheme.surface
                            },
                        ),
                    ) {
                        Column(
                            Modifier.padding(16.dp),
                            verticalArrangement = Arrangement.spacedBy(4.dp),
                        ) {
                            Text(
                                stringResource(R.string.process_diagnostics_event, index + 1),
                                style = MaterialTheme.typography.labelLarge,
                                fontWeight = FontWeight.Bold,
                            )
                            entry.stage?.let {
                                Text(stringResource(R.string.process_diagnostics_stage, it))
                            }
                            entry.part?.let {
                                Text(stringResource(R.string.process_diagnostics_part, it))
                            }
                            Text(
                                stringResource(R.string.process_diagnostics_message, entry.message),
                                color = if (entry.failed) {
                                    MaterialTheme.colorScheme.onErrorContainer
                                } else {
                                    MaterialTheme.colorScheme.onSurface
                                },
                            )
                            if (entry.processedBytes != null || entry.totalBytes != null) {
                                Text(
                                    stringResource(
                                        R.string.process_diagnostics_progress,
                                        formatProcessBytes(entry.processedBytes ?: 0L),
                                        formatProcessBytes(entry.totalBytes ?: 0L),
                                    ),
                                    style = MaterialTheme.typography.bodySmall,
                                )
                            }
                            entry.elapsedMillis?.let {
                                Text(
                                    stringResource(R.string.process_diagnostics_elapsed, formatProcessDuration(it)),
                                    style = MaterialTheme.typography.bodySmall,
                                )
                            }
                            entry.bytesPerSecond?.takeIf { it > 0L }?.let {
                                Text(
                                    stringResource(R.string.process_diagnostics_rate, formatProcessBytes(it)),
                                    style = MaterialTheme.typography.bodySmall,
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

private fun formatProcessBytes(bytes: Long): String {
    val value = bytes.coerceAtLeast(0L)
    if (value < 1024L) return "$value B"
    if (value < 1024L * 1024L) return String.format(java.util.Locale.US, "%.1f KB", value / 1024.0)
    if (value < 1024L * 1024L * 1024L) return String.format(java.util.Locale.US, "%.2f MB", value / (1024.0 * 1024.0))
    return String.format(java.util.Locale.US, "%.2f GB", value / (1024.0 * 1024.0 * 1024.0))
}

private fun formatProcessDuration(millis: Long): String =
    if (millis < 1000L) "$millis ms" else String.format(java.util.Locale.US, "%.1f s", millis / 1000.0)
