package com.bare.feature.settings

import android.content.Context
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.ArrowBack
import androidx.compose.material.icons.outlined.Delete
import androidx.compose.material.icons.outlined.Folder
import androidx.compose.material.icons.outlined.RestartAlt
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.bare.storage.BackupStorageRepository
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ManageSpaceScreen(
    identityId: String?,
    onBack: () -> Unit,
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val repository = remember(context) { BackupStorageRepository(context) }
    val scope = rememberCoroutineScope()

    var backupBytes by remember { mutableStateOf(0L) }
    var recoveryBytes by remember { mutableStateOf(0L) }
    var locations by remember { mutableStateOf(emptyList<String>()) }
    var busy by remember { mutableStateOf(false) }
    var error by remember { mutableStateOf<String?>(null) }
    var confirmAction by remember { mutableStateOf<ManageSpaceAction?>(null) }

    fun refresh() {
        val id = identityId ?: return
        scope.launch {
            val result = withContext(Dispatchers.IO) {
                Triple(
                    repository.localBackupSize(id),
                    repository.localRecoverySize(id),
                    repository.localBackupLocations(id),
                )
            }
            backupBytes = result.first
            recoveryBytes = result.second
            locations = result.third
        }
    }

    LaunchedEffect(identityId) { refresh() }

    fun runAction(action: ManageSpaceAction) {
        val id = identityId ?: return
        scope.launch {
            busy = true
            error = null
            runCatching {
                withContext(Dispatchers.IO) {
                    when (action) {
                        ManageSpaceAction.DELETE_BACKUPS -> repository.deleteLocalBackups(id)
                        ManageSpaceAction.DELETE_ALL_DATA -> {
                            val deleted = repository.deleteAllLocalData(id)
                            clearBaReAppData(context)
                            deleted
                        }
                        ManageSpaceAction.RESET_SETTINGS -> {
                            resetBaReSettings(context)
                            0L
                        }
                    }
                }
            }.onSuccess {
                busy = false
                confirmAction = null
                if (action == ManageSpaceAction.DELETE_ALL_DATA) {
                    restartAfterDataWipe(context)
                } else {
                    refresh()
                }
            }.onFailure {
                busy = false
                error = it.message ?: "Operation failed"
            }
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Manage space") },
                navigationIcon = {
                    IconButton(onClick = onBack, enabled = !busy) {
                        Icon(Icons.Outlined.ArrowBack, contentDescription = "Back")
                    }
                },
            )
        },
    ) { padding ->
        LazyColumn(
            modifier = Modifier.fillMaxSize().padding(padding).padding(horizontal = 12.dp),
            contentPadding = PaddingValues(top = 8.dp, bottom = 28.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            item {
                ManageSpaceCard(
                    title = if (identityId == null) "Local identity" else "Local backup storage",
                    body = buildString {
                        append(if (identityId == null) "No local identity is available." else "BaRe local backup data")
                        append("\n")
                        append("Backup files: ${formatBytes(backupBytes)}")
                        append("\n")
                        append("Recovery package: ${formatBytes(recoveryBytes)}")
                        if (locations.isNotEmpty()) {
                            append("\n\n")
                            append("Backup location:")
                            append("\n")
                            append(locations.first())
                        }
                    },
                    icon = Icons.Outlined.Folder,
                )
            }

            item {
                ManageSpaceActionCard(
                    title = "Reset app settings",
                    body = "Reset BaRe appearance and local storage preferences. Backup files and recovery data are kept.",
                    button = "Reset settings",
                    icon = Icons.Outlined.RestartAlt,
                    enabled = !busy,
                    destructive = false,
                    onClick = { confirmAction = ManageSpaceAction.RESET_SETTINGS },
                )
            }

            item {
                ManageSpaceActionCard(
                    title = "Delete backup files (${formatBytes(backupBytes)})",
                    body = "Delete local backup files for this BaRe identity. Recovery data is kept.",
                    button = "Delete backup files",
                    icon = Icons.Outlined.Delete,
                    enabled = !busy && backupBytes > 0L,
                    destructive = true,
                    onClick = { confirmAction = ManageSpaceAction.DELETE_BACKUPS },
                )
            }

            item {
                ManageSpaceActionCard(
                    title = "Delete all data",
                    body = "Delete all backup, recovery, and app data. This cannot be undone.",
                    button = "Delete all data",
                    icon = Icons.Outlined.Delete,
                    enabled = !busy && identityId != null,
                    destructive = true,
                    onClick = { confirmAction = ManageSpaceAction.DELETE_ALL_DATA },
                )
            }

            error?.let { message ->
                item {
                    Text(message, color = MaterialTheme.colorScheme.error)
                }
            }
        }
    }

    confirmAction?.let { action ->
        val title = when (action) {
            ManageSpaceAction.RESET_SETTINGS -> "Reset BaRe settings?"
            ManageSpaceAction.DELETE_BACKUPS -> "Delete backup files?"
            ManageSpaceAction.DELETE_ALL_DATA -> "Delete all data?"
        }
        val message = when (action) {
            ManageSpaceAction.RESET_SETTINGS -> "Appearance and local storage preferences will be reset. Backup and recovery files will remain."
            ManageSpaceAction.DELETE_BACKUPS -> "Local backup files for this identity will be permanently deleted."
            ManageSpaceAction.DELETE_ALL_DATA -> "Local backups and the recovery package for this identity will be permanently deleted."
        }
        AlertDialog(
            onDismissRequest = { if (!busy) confirmAction = null },
            title = { Text(title) },
            text = { Text(message) },
            dismissButton = {
                TextButton(onClick = { confirmAction = null }, enabled = !busy) {
                    Text("Cancel")
                }
            },
            confirmButton = {
                TextButton(onClick = { runAction(action) }, enabled = !busy) {
                    Text(if (action == ManageSpaceAction.RESET_SETTINGS) "Reset" else "Delete")
                }
            },
        )
    }
}

private fun restartAfterDataWipe(context: Context) {
    val launchIntent = context.packageManager.getLaunchIntentForPackage(context.packageName)
        ?: return
    launchIntent.addFlags(
        android.content.Intent.FLAG_ACTIVITY_NEW_TASK or
            android.content.Intent.FLAG_ACTIVITY_CLEAR_TASK or
            android.content.Intent.FLAG_ACTIVITY_CLEAR_TOP,
    )
    context.startActivity(launchIntent)
}

private fun clearBaReAppData(context: Context) {
    val sharedPreferences = context.getSharedPreferences("bare_identity", Context.MODE_PRIVATE)
    sharedPreferences.edit().clear().commit()
    context.getSharedPreferences("bare_settings", Context.MODE_PRIVATE).edit().clear().commit()
    context.getSharedPreferences("bare_storage", Context.MODE_PRIVATE).edit().clear().commit()

    context.filesDir.deleteChildren()
    context.cacheDir.deleteChildren()
    context.codeCacheDir.deleteChildren()
    context.noBackupFilesDir.deleteChildren()
    context.databaseList().forEach { name -> context.deleteDatabase(name) }
}

private fun resetBaReSettings(context: Context) {
    context.getSharedPreferences("bare_settings", Context.MODE_PRIVATE).edit().clear().commit()
    context.getSharedPreferences("bare_storage", Context.MODE_PRIVATE).edit().clear().commit()
}

private fun java.io.File.deleteChildren() {
    if (!exists()) return
    listFiles()?.forEach { it.deleteRecursively() }
}


private enum class ManageSpaceAction {
    RESET_SETTINGS,
    DELETE_BACKUPS,
    DELETE_ALL_DATA,
}

@Composable
private fun ManageSpaceCard(
    title: String,
    body: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
) {
    Card(Modifier.fillMaxWidth(), shape = RoundedCornerShape(22.dp)) {
        Row(Modifier.fillMaxWidth().padding(18.dp)) {
            Icon(icon, contentDescription = null)
            Spacer(Modifier.width(14.dp))
            Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                Text(title, style = MaterialTheme.typography.titleMedium)
                Text(body, style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
            }
        }
    }
}

@Composable
private fun ManageSpaceActionCard(
    title: String,
    body: String,
    button: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    enabled: Boolean,
    destructive: Boolean,
    onClick: () -> Unit,
) {
    val container = if (destructive) MaterialTheme.colorScheme.errorContainer else MaterialTheme.colorScheme.surfaceVariant
    val content = if (destructive) MaterialTheme.colorScheme.onErrorContainer else MaterialTheme.colorScheme.onSurface
    Card(Modifier.fillMaxWidth(), colors = CardDefaults.cardColors(containerColor = container), shape = RoundedCornerShape(22.dp)) {
        Column(Modifier.fillMaxWidth().padding(18.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            Row {
                Icon(icon, contentDescription = null, tint = content)
                Spacer(Modifier.width(10.dp))
                Text(title, style = MaterialTheme.typography.titleMedium, color = content)
            }
            Text(body, style = MaterialTheme.typography.bodyMedium, color = content.copy(alpha = 0.85f))
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.End) {
                Button(onClick = onClick, enabled = enabled) {
                    Text(button)
                }
            }
        }
    }
}

private fun formatBytes(bytes: Long): String {
    if (bytes < 1024L) return "$bytes B"
    val units = arrayOf("KB", "MB", "GB", "TB")
    var value = bytes.toDouble()
    var index = -1
    while (value >= 1024.0 && index < units.lastIndex) {
        value /= 1024.0
        index++
    }
    return if (value >= 100) "%.0f %s".format(value, units[index])
    else if (value >= 10) "%.1f %s".format(value, units[index])
    else "%.2f %s".format(value, units[index])
}
