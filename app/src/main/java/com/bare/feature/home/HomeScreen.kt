package com.bare.feature.home

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.bare.R
import com.bare.app.AccessMethod
import com.bare.app.IdentityType
import com.bare.app.Screen
import com.bare.app.Tab
import com.bare.storage.BackupStorageRepository
import kotlin.math.roundToInt

@Composable
fun HomeScreen(
    identityType: IdentityType?,
    accountEmail: String,
    accessMethod: AccessMethod?,
    onOpen: (Screen) -> Unit,
    onOpenTab: (Int) -> Unit,
    onOpenAccessMethod: () -> Unit,
    onOpenStorage: () -> Unit,
) {
    val context = LocalContext.current
    val storageRepository = remember(context) { BackupStorageRepository(context) }
    val internal = remember(context) { storageRepository.internalStorageCapacity() }
    val usedBytes = (internal.totalBytes - internal.freeBytes).coerceAtLeast(0L)
    val usage = if (internal.totalBytes > 0L) {
        (usedBytes.toDouble() / internal.totalBytes.toDouble()).coerceIn(0.0, 1.0)
    } else 0.0
    val identityLabel = if (identityType == IdentityType.ACCOUNT) {
        if (accountEmail.isBlank()) stringResource(R.string.account) else accountEmail
    } else {
        stringResource(R.string.local)
    }
    val accessLabel = when (accessMethod) {
        AccessMethod.ROOT -> stringResource(R.string.root)
        AccessMethod.NON_ROOT -> stringResource(R.string.non_root)
        null -> stringResource(R.string.access_not_set)
    }

    Column(
        modifier = Modifier.fillMaxSize().padding(horizontal = 12.dp, vertical = 8.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(18.dp),
            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant),
        ) {
            Column(Modifier.padding(12.dp), verticalArrangement = Arrangement.spacedBy(9.dp)) {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                    CompactStatus(
                        title = stringResource(R.string.account_status),
                        value = identityLabel,
                        icon = Icons.Default.AccountCircle,
                        modifier = Modifier.weight(1f).clickable { onOpenTab(Tab.ACCOUNT.ordinal) },
                    )
                    Spacer(Modifier.width(10.dp))
                    CompactStatus(
                        title = stringResource(R.string.access),
                        value = accessLabel,
                        icon = Icons.Default.Settings,
                        modifier = Modifier.weight(1f).clickable { onOpenAccessMethod() },
                    )
                }

                Column(
                    modifier = Modifier.fillMaxWidth().clickable { onOpenStorage() },
                    verticalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                        Text(stringResource(R.string.internal_storage), style = MaterialTheme.typography.labelLarge)
                        Text(
                            text = stringResource(R.string.storage_free_short, formatStorageSize(internal.freeBytes)),
                            style = MaterialTheme.typography.labelLarge,
                            fontWeight = FontWeight.Medium,
                        )
                    }
                    LinearProgressIndicator(
                        progress = { usage.toFloat() },
                        modifier = Modifier.fillMaxWidth().height(6.dp),
                    )
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                        Text(
                            text = stringResource(R.string.storage_used_percent, (usage * 100).roundToInt()),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Text(
                            text = stringResource(
                                R.string.storage_total_short,
                                formatStorageSize(internal.totalBytes),
                            ),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                }

                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                    CompactStatus(
                        title = stringResource(R.string.last_backup),
                        value = stringResource(R.string.no_backups_yet),
                        icon = Icons.Default.History,
                        modifier = Modifier.weight(1f),
                    )
                    Spacer(Modifier.width(10.dp))
                    CompactStatus(
                        title = stringResource(R.string.next_backup),
                        value = stringResource(R.string.not_scheduled),
                        icon = Icons.Default.Schedule,
                        modifier = Modifier.weight(1f).clickable { onOpen(Screen.SCHEDULE_DETAIL) },
                    )
                }

                BackupAreaGrid(
                    onOpen = onOpen,
                )
            }
        }

        Text(
            text = stringResource(R.string.quick_actions),
            style = MaterialTheme.typography.labelLarge,
            fontWeight = FontWeight.SemiBold,
            modifier = Modifier.padding(horizontal = 2.dp),
        )

        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            QuickAction(
                title = stringResource(R.string.backup_apps),
                icon = Icons.Default.CloudUpload,
                modifier = Modifier.weight(1f),
            ) { onOpen(Screen.APP_DETAIL) }
            QuickAction(
                title = stringResource(R.string.restore_apps),
                icon = Icons.Default.CloudDownload,
                modifier = Modifier.weight(1f),
            ) { onOpen(Screen.APP_DETAIL) }
        }

        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            QuickAction(
                title = stringResource(R.string.backup_folders),
                icon = Icons.Default.Folder,
                modifier = Modifier.weight(1f),
            ) { onOpen(Screen.FOLDERS) }
            QuickAction(
                title = stringResource(R.string.restore_data),
                icon = Icons.Default.Restore,
                modifier = Modifier.weight(1f),
            ) { onOpen(Screen.FOLDERS) }
        }

        TextButton(
            onClick = { onOpenTab(Tab.APPS.ordinal) },
            modifier = Modifier.align(Alignment.End).height(28.dp),
            contentPadding = PaddingValues(horizontal = 4.dp, vertical = 0.dp),
        ) {
            Text(stringResource(R.string.more_apps_actions), fontSize = 12.sp)
        }
    }
}

@Composable
private fun CompactStatus(
    title: String,
    value: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    modifier: Modifier = Modifier,
) {
    Row(
        modifier = modifier,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Icon(icon, contentDescription = title, modifier = Modifier.size(20.dp))
        Spacer(Modifier.width(7.dp))
        Column {
            Text(title, style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
            Text(value, style = MaterialTheme.typography.bodyMedium, fontWeight = FontWeight.Medium, maxLines = 1)
        }
    }
}

@Composable
private fun BackupAreaGrid(onOpen: (Screen) -> Unit) {
    val areas = listOf(
        Triple(stringResource(R.string.apps), Icons.Default.Apps, Screen.APP_DETAIL),
        Triple(stringResource(R.string.messages), Icons.Default.Sms, Screen.MESSAGES),
        Triple(stringResource(R.string.call_logs), Icons.Default.Call, Screen.CALL_LOGS),
        Triple(stringResource(R.string.folders), Icons.Default.Folder, Screen.FOLDERS),
        Triple(stringResource(R.string.wifi), Icons.Default.Wifi, Screen.WIFI),
        Triple(stringResource(R.string.wallpapers), Icons.Default.Image, Screen.WALLPAPERS),
    )
    Column(verticalArrangement = Arrangement.spacedBy(7.dp)) {
        areas.chunked(3).forEach { row ->
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                row.forEach { (label, icon, screen) ->
                    Column(
                        modifier = Modifier.weight(1f).clickable { onOpen(screen) },
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.spacedBy(2.dp),
                    ) {
                        Icon(icon, contentDescription = label, modifier = Modifier.size(22.dp))
                        Text(label, style = MaterialTheme.typography.labelSmall, maxLines = 1)
                    }
                }
                repeat(3 - row.size) { Spacer(Modifier.weight(1f)) }
            }
        }
    }
}

@Composable
private fun QuickAction(
    title: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    modifier: Modifier = Modifier,
    onClick: () -> Unit,
) {
    Card(
        modifier = modifier.height(66.dp).clickable(onClick = onClick),
        shape = RoundedCornerShape(14.dp),
    ) {
        Row(
            Modifier.fillMaxSize().padding(horizontal = 12.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Icon(icon, contentDescription = title, modifier = Modifier.size(24.dp))
            Spacer(Modifier.width(9.dp))
            Text(title, style = MaterialTheme.typography.bodySmall, fontWeight = FontWeight.Medium)
        }
    }
}

private fun formatStorageSize(bytes: Long): String {
    if (bytes < 1024L) return "$bytes B"
    val units = arrayOf("KB", "MB", "GB", "TB")
    var value = bytes.toDouble()
    var index = -1
    while (value >= 1024.0 && index < units.lastIndex) {
        value /= 1024.0
        index++
    }
    return if (value >= 100.0) {
        String.format("%.0f %s", value, units[index])
    } else {
        String.format("%.1f %s", value, units[index])
    }
}
