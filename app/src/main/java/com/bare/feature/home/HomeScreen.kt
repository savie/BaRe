package com.bare.feature.home

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons as MaterialIcons
import androidx.compose.material.icons.outlined.*
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
import com.bare.ui.BareIcons
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
        modifier = Modifier.fillMaxSize().padding(horizontal = 16.dp, vertical = 10.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        Text(
            text = stringResource(R.string.dashboard),
            style = MaterialTheme.typography.titleLarge,
            fontWeight = FontWeight.SemiBold,
        )

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(18.dp),
            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant),
        ) {
            Column(
                Modifier.padding(horizontal = 16.dp, vertical = 14.dp),
                verticalArrangement = Arrangement.spacedBy(11.dp),
            ) {
                DashboardStatusRow(
                    left = {
                        CompactStatus(
                            title = stringResource(R.string.account_status),
                            value = identityLabel,
                            icon = MaterialIcons.Outlined.AccountCircle,
                            modifier = Modifier.fillMaxWidth().clickable { onOpenTab(Tab.ACCOUNT.ordinal) },
                        )
                    },
                    right = {
                        CompactStatus(
                            title = stringResource(R.string.access),
                            value = accessLabel,
                            icon = MaterialIcons.Outlined.Security,
                            modifier = Modifier.fillMaxWidth().clickable { onOpenAccessMethod() },
                        )
                    },
                )

                DashboardDivider()

                Column(
                    modifier = Modifier.fillMaxWidth().clickable { onOpenStorage() },
                    verticalArrangement = Arrangement.spacedBy(5.dp),
                ) {
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                        Text(
                            stringResource(R.string.internal_storage),
                            style = MaterialTheme.typography.labelLarge,
                            fontWeight = FontWeight.SemiBold,
                            color = MaterialTheme.colorScheme.onSurface,
                        )
                        Text(
                            text = stringResource(R.string.storage_free_short, formatStorageSize(internal.freeBytes)),
                            style = MaterialTheme.typography.bodyLarge,
                            fontWeight = FontWeight.SemiBold,
                        )
                    }
                    LinearProgressIndicator(
                        progress = usage.toFloat(),
                        modifier = Modifier.fillMaxWidth().height(3.dp),
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.72f),
                        trackColor = MaterialTheme.colorScheme.outline.copy(alpha = 0.28f),
                    )
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                        Text(
                            text = stringResource(R.string.storage_used_percent, (usage * 100).roundToInt()),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Text(
                            text = stringResource(R.string.storage_total_short, formatStorageSize(internal.totalBytes)),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                }

                DashboardDivider()

                DashboardStatusRow(
                    left = {
                        CompactStatus(
                            title = stringResource(R.string.last_backup),
                            value = stringResource(R.string.no_backups_yet),
                            icon = MaterialIcons.Outlined.History,
                            modifier = Modifier.fillMaxWidth(),
                        )
                    },
                    right = {
                        CompactStatus(
                            title = stringResource(R.string.next_backup),
                            value = stringResource(R.string.not_scheduled),
                            icon = MaterialIcons.Outlined.Schedule,
                            modifier = Modifier.fillMaxWidth().clickable { onOpen(Screen.SCHEDULE_DETAIL) },
                        )
                    },
                )

                DashboardDivider()

                BackupAreaGrid(onOpen = onOpen)
            }
        }

        Text(
            text = stringResource(R.string.quick_actions),
            style = MaterialTheme.typography.titleLarge,
            fontWeight = FontWeight.SemiBold,
            modifier = Modifier.padding(top = 3.dp),
        )

        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            QuickAction(
                title = stringResource(R.string.backup_apps),
                icon = BareIcons.Upload,
                modifier = Modifier.weight(1f),
            ) { onOpen(Screen.APP_DETAIL) }
            QuickAction(
                title = stringResource(R.string.restore_apps),
                icon = BareIcons.Download,
                modifier = Modifier.weight(1f),
            ) { onOpen(Screen.APP_DETAIL) }
        }

        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            QuickAction(
                title = stringResource(R.string.backup_folders),
                icon = BareIcons.Folders,
                modifier = Modifier.weight(1f),
            ) { onOpen(Screen.FOLDERS) }
            QuickAction(
                title = stringResource(R.string.restore_data),
                icon = BareIcons.Download,
                modifier = Modifier.weight(1f),
            ) { onOpen(Screen.FOLDERS) }
        }

        TextButton(
            onClick = { onOpenTab(Tab.APPS.ordinal) },
            modifier = Modifier.align(Alignment.End).height(30.dp),
            contentPadding = PaddingValues(horizontal = 4.dp, vertical = 0.dp),
        ) {
            Text(
                stringResource(R.string.more_apps_actions),
                style = MaterialTheme.typography.bodySmall,
                fontWeight = FontWeight.Medium,
                color = MaterialTheme.colorScheme.onSurface,
            )
        }
    }
}

@Composable
private fun DashboardStatusRow(
    left: @Composable () -> Unit,
    right: @Composable () -> Unit,
) {
    Row(
        Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(16.dp),
    ) {
        Box(Modifier.weight(1f)) { left() }
        Box(Modifier.weight(1f)) { right() }
    }
}

@Composable
private fun DashboardDivider() {
    HorizontalDivider(
        color = MaterialTheme.colorScheme.outline.copy(alpha = 0.24f),
        thickness = 1.dp,
    )
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
        Box(
            modifier = Modifier.width(28.dp),
            contentAlignment = Alignment.CenterStart,
        ) {
            Icon(icon, contentDescription = title, modifier = Modifier.size(20.dp), tint = MaterialTheme.colorScheme.onSurface)
        }
        Spacer(Modifier.width(8.dp))
        Column(
            modifier = Modifier.weight(1f),
            verticalArrangement = Arrangement.spacedBy(1.dp),
        ) {
            Text(
                title,
                style = MaterialTheme.typography.bodySmall,
                fontWeight = FontWeight.Medium,
                color = MaterialTheme.colorScheme.onSurface,
                maxLines = 1,
            )
            Text(
                value,
                style = MaterialTheme.typography.bodyLarge,
                fontWeight = FontWeight.Medium,
                maxLines = 1,
            )
        }
    }
}

@Composable
private fun BackupAreaGrid(onOpen: (Screen) -> Unit) {
    val areas = listOf(
        Triple(stringResource(R.string.apps), BareIcons.Apps, Screen.APP_DETAIL),
        Triple(stringResource(R.string.messages), BareIcons.Messages, Screen.MESSAGES),
        Triple(stringResource(R.string.call_logs), BareIcons.Call, Screen.CALL_LOGS),
        Triple(stringResource(R.string.folders), BareIcons.Folders, Screen.FOLDERS),
        Triple(stringResource(R.string.wifi), BareIcons.Wifi, Screen.WIFI),
        Triple(stringResource(R.string.wallpapers), BareIcons.Wallpapers, Screen.WALLPAPERS),
    )
    Column(verticalArrangement = Arrangement.spacedBy(9.dp)) {
        areas.chunked(3).forEach { row ->
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                row.forEach { (label, icon, screen) ->
                    Column(
                        modifier = Modifier.weight(1f).clickable { onOpen(screen) },
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.spacedBy(4.dp),
                    ) {
                        Icon(icon, contentDescription = label, modifier = Modifier.size(20.dp), tint = MaterialTheme.colorScheme.onSurface)
                        Text(
                            label,
                            style = MaterialTheme.typography.bodySmall,
                            fontWeight = FontWeight.Medium,
                            color = MaterialTheme.colorScheme.onSurface,
                            maxLines = 1,
                        )
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
        modifier = modifier.height(56.dp).clickable(onClick = onClick),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.primaryContainer),
    ) {
        Row(
            Modifier.fillMaxSize().padding(horizontal = 14.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Icon(icon, contentDescription = title, modifier = Modifier.size(21.dp), tint = MaterialTheme.colorScheme.onSurface)
            Spacer(Modifier.width(9.dp))
            Text(
                title,
                style = MaterialTheme.typography.bodyLarge,
                fontWeight = FontWeight.Medium,
                maxLines = 1,
            )
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
