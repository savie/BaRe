package com.bare.feature.settings

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.provider.Settings
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import kotlinx.coroutines.launch
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.draw.drawBehind
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.bare.R
import com.bare.app.AppThemeMode
import com.bare.app.Screen
import com.bare.storage.BackupStorage
import com.bare.storage.BackupStorageBehavior
import com.bare.feature.settings.EncryptionPasswordStore

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    identityId: String?,
    onOpen: (Screen) -> Unit,
    onOpenApps: () -> Unit,
    themeMode: AppThemeMode,
    dynamicColors: Boolean,
    amoledBlack: Boolean,
    onThemeModeChanged: (AppThemeMode) -> Unit,
    onDynamicColorsChanged: (Boolean) -> Unit,
    onAmoledBlackChanged: (Boolean) -> Unit,
    onBack: () -> Unit,
) {
    val context = LocalContext.current
    var showThemeDialog by remember { mutableStateOf(false) }
    var showAboutDialog by remember { mutableStateOf(false) }
    var showStorageDialog by remember { mutableStateOf(false) }
    val encryptionPasswordStore = remember(context) { EncryptionPasswordStore(context) }
    val storageBehavior = remember(context) { BackupStorageBehavior(context) }
    var storageKind by remember { mutableStateOf(storageBehavior.selectedKind()) }
    var storageBusy by remember { mutableStateOf(false) }
    var storageError by remember { mutableStateOf<String?>(null) }
    val scope = rememberCoroutineScope()

    Scaffold(
        topBar = {
            TopAppBar(
                modifier = Modifier.height(96.dp),
                title = { Text(stringResource(R.string.settings)) },
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(Icons.Outlined.ArrowBack, stringResource(R.string.back))
                    }
                },
            )
        },
    ) { padding ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .padding(horizontal = 12.dp),
            contentPadding = PaddingValues(top = 4.dp, bottom = 28.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            item {
                SettingsSection(stringResource(R.string.settings_appearance_language)) {
                    SettingsRow(
                        title = stringResource(R.string.settings_app_theme),
                        subtitle = when (themeMode) {
                            AppThemeMode.SYSTEM -> stringResource(R.string.settings_theme_system)
                            AppThemeMode.LIGHT -> stringResource(R.string.settings_theme_light)
                            AppThemeMode.DARK -> stringResource(R.string.settings_theme_dark)
                        },
                        icon = Icons.Outlined.DarkMode,
                        onClick = { showThemeDialog = true },
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_dynamic_colors),
                        subtitle = stringResource(R.string.settings_dynamic_colors_subtitle),
                        icon = Icons.Outlined.Palette,
                        trailing = {
                            Switch(
                                checked = dynamicColors,
                                onCheckedChange = onDynamicColorsChanged,
                            )
                        },
                        onClick = { onDynamicColorsChanged(!dynamicColors) },
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_amoled_black),
                        subtitle = stringResource(R.string.settings_amoled_black_subtitle),
                        icon = Icons.Outlined.Brightness4,
                        trailing = {
                            Switch(
                                checked = amoledBlack,
                                onCheckedChange = onAmoledBlackChanged,
                            )
                        },
                        onClick = { onAmoledBlackChanged(!amoledBlack) },
                    )
                    SettingsRow(
                        title = stringResource(R.string.language),
                        subtitle = stringResource(R.string.settings_language_english),
                        icon = Icons.Outlined.Language,
                    )
                }
            }

            item {
                SettingsSection(stringResource(R.string.settings_backup_content)) {
                    SettingsRow(
                        title = stringResource(R.string.settings_app_backups),
                        subtitle = stringResource(R.string.settings_app_backups_subtitle),
                        icon = Icons.Outlined.Android,
                        onClick = onOpenApps,
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_messages_backups),
                        subtitle = stringResource(R.string.settings_messages_backups_subtitle) + " · " + stringResource(R.string.not_implemented),
                        icon = Icons.Outlined.Message,
                        enabled = false,
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_call_logs_backups),
                        subtitle = stringResource(R.string.settings_call_logs_backups_subtitle) + " · " + stringResource(R.string.not_implemented),
                        icon = Icons.Outlined.Call,
                        enabled = false,
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_folder_backups),
                        subtitle = stringResource(R.string.settings_folder_backups_subtitle) + " · " + stringResource(R.string.not_implemented),
                        icon = Icons.Outlined.Folder,
                        enabled = false,
                    )
                }
            }

            item {
                SettingsSection(stringResource(R.string.settings_storage_security)) {
                    SettingsRow(
                        title = stringResource(R.string.settings_local_storage),
                        subtitle = when (storageKind) {
                            BackupStorage.Kind.INTERNAL -> stringResource(R.string.internal_storage)
                            BackupStorage.Kind.EXTERNAL -> stringResource(R.string.external_storage)
                            else -> stringResource(R.string.settings_local_storage)
                        },
                        icon = Icons.Outlined.Storage,
                        onClick = {
                            storageError = null
                            showStorageDialog = true
                        },
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_cloud_backups),
                        subtitle = stringResource(R.string.settings_cloud_backups_subtitle),
                        icon = Icons.Outlined.Cloud,
                        onClick = { onOpen(Screen.CLOUD) },
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_encryption_strategy),
                        subtitle = when (encryptionPasswordStore.loadStrategy()) {
                            EncryptionPasswordStrategy.STANDARD -> stringResource(R.string.encryption_strategy_standard)
                            EncryptionPasswordStrategy.ADVANCED -> stringResource(R.string.encryption_strategy_advanced)
                        },
                        icon = Icons.Outlined.Key,
                        onClick = { onOpen(Screen.ENCRYPTION_PASSWORD_STRATEGY) },
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_manage_space),
                        subtitle = stringResource(R.string.settings_manage_space_subtitle),
                        icon = Icons.Outlined.DataUsage,
                        onClick = { onOpen(Screen.MANAGE_SPACE) },
                    )
                }
            }

            item {
                SettingsSection(stringResource(R.string.settings_notifications)) {
                    SettingsRow(
                        title = stringResource(R.string.settings_manage_notifications),
                        subtitle = stringResource(R.string.settings_manage_notifications_subtitle),
                        icon = Icons.Outlined.Notifications,
                        onClick = {
                            openSystemSettings(
                                context,
                                Settings.ACTION_APP_NOTIFICATION_SETTINGS,
                                Settings.EXTRA_APP_PACKAGE to context.packageName,
                            )
                        },
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_play_notification_sounds),
                        subtitle = stringResource(R.string.settings_play_notification_sounds_subtitle),
                        icon = Icons.Outlined.MusicNote,
                        enabled = false,
                    )
                }
            }

            item {
                SettingsSection(stringResource(R.string.settings_advanced_tools)) {
                    SettingsRow(
                        title = stringResource(R.string.settings_bare_labs),
                        subtitle = stringResource(R.string.settings_bare_labs_subtitle),
                        icon = Icons.Outlined.Science,
                        onClick = { onOpen(Screen.BARE_LABS) },
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_export_settings),
                        subtitle = stringResource(R.string.settings_export_settings_subtitle) + " · " + stringResource(R.string.not_implemented),
                        icon = Icons.Outlined.FileUpload,
                        enabled = false,
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_import_settings),
                        subtitle = stringResource(R.string.settings_import_settings_subtitle) + " · " + stringResource(R.string.not_implemented),
                        icon = Icons.Outlined.FileDownload,
                        enabled = false,
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_diagnostics),
                        subtitle = stringResource(R.string.diagnostics_summary),
                        icon = Icons.Outlined.BugReport,
                        onClick = { onOpen(Screen.DIAGNOSTICS) },
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_recovery),
                        subtitle = stringResource(R.string.recovery_description),
                        icon = Icons.Outlined.Restore,
                        onClick = { onOpen(Screen.IMPORT_EXPORT) },
                    )
                    SettingsRow(
                        title = stringResource(R.string.settings_restart_app),
                        subtitle = stringResource(R.string.settings_restart_app_subtitle),
                        icon = Icons.Outlined.Refresh,
                        onClick = { restartApp(context) },
                    )
                }
            }

            item {
                SettingsSection(stringResource(R.string.settings_help_info)) {
                    SettingsRow(
                        title = stringResource(R.string.help_center),
                        subtitle = stringResource(R.string.settings_help_center_subtitle),
                        icon = Icons.Outlined.HelpOutline,
                        enabled = false,
                    )
                    SettingsRow(
                        title = stringResource(R.string.contact),
                        subtitle = stringResource(R.string.settings_contact_subtitle),
                        icon = Icons.Outlined.MailOutline,
                        onClick = { openSettingsContact(context) },
                    )
                    SettingsRow(
                        title = stringResource(R.string.about),
                        subtitle = stringResource(R.string.settings_about_subtitle),
                        icon = Icons.Outlined.Info,
                        onClick = { showAboutDialog = true },
                    )
                }
            }
        }
    }

    if (showThemeDialog) {
        AlertDialog(
            onDismissRequest = { showThemeDialog = false },
            title = { Text(stringResource(R.string.settings_app_theme)) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                    ThemeOption(
                        label = stringResource(R.string.settings_theme_system),
                        selected = themeMode == AppThemeMode.SYSTEM,
                        onClick = {
                            onThemeModeChanged(AppThemeMode.SYSTEM)
                            showThemeDialog = false
                        },
                    )
                    ThemeOption(
                        label = stringResource(R.string.settings_theme_light),
                        selected = themeMode == AppThemeMode.LIGHT,
                        onClick = {
                            onThemeModeChanged(AppThemeMode.LIGHT)
                            showThemeDialog = false
                        },
                    )
                    ThemeOption(
                        label = stringResource(R.string.settings_theme_dark),
                        selected = themeMode == AppThemeMode.DARK,
                        onClick = {
                            onThemeModeChanged(AppThemeMode.DARK)
                            showThemeDialog = false
                        },
                    )
                }
            },
            confirmButton = {
                TextButton(onClick = { showThemeDialog = false }) {
                    Text(stringResource(R.string.close))
                }
            },
        )
    }

    if (showStorageDialog) {
        val localStorages = remember(identityId, showStorageDialog) {
            if (identityId.isNullOrBlank()) {
                emptyList()
            } else {
                storageBehavior.inspect(identityId)
                    .filter { it.kind == BackupStorage.Kind.INTERNAL || it.kind == BackupStorage.Kind.EXTERNAL }
            }
        }
        val internal = localStorages.firstOrNull { it.kind == BackupStorage.Kind.INTERNAL }
        val external = localStorages.firstOrNull { it.kind == BackupStorage.Kind.EXTERNAL }

        AlertDialog(
            onDismissRequest = { if (!storageBusy) showStorageDialog = false },
            title = { Text(stringResource(R.string.settings_local_storage)) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                    if (identityId.isNullOrBlank()) {
                        Text(
                            stringResource(R.string.storage_identity_unavailable),
                            color = MaterialTheme.colorScheme.error,
                        )
                    } else {
                        StorageOption(
                            label = stringResource(R.string.internal_storage),
                            selected = storageKind == BackupStorage.Kind.INTERNAL,
                            enabled = !storageBusy && internal?.available == true,
                            onClick = {
                                storageBusy = true
                                storageError = null
                                val id = identityId
                                if (id != null) {
                                    scope.launch {
                                        runCatching {
                                            storageBehavior.selectLocalStorage(id, BackupStorage.Kind.INTERNAL)
                                        }.onSuccess {
                                            storageKind = BackupStorage.Kind.INTERNAL
                                            storageBusy = false
                                            showStorageDialog = false
                                        }.onFailure {
                                            storageBusy = false
                                            storageError = it.message
                                        }
                                    }
                                }
                            },
                        )
                        StorageOption(
                            label = stringResource(R.string.external_storage),
                            selected = storageKind == BackupStorage.Kind.EXTERNAL,
                            enabled = !storageBusy && external?.available == true,
                            onClick = {
                                storageBusy = true
                                storageError = null
                                val id = identityId
                                if (id != null) {
                                    scope.launch {
                                        runCatching {
                                            storageBehavior.selectLocalStorage(id, BackupStorage.Kind.EXTERNAL)
                                        }.onSuccess {
                                            storageKind = BackupStorage.Kind.EXTERNAL
                                            storageBusy = false
                                            showStorageDialog = false
                                        }.onFailure {
                                            storageBusy = false
                                            storageError = it.message
                                        }
                                    }
                                }
                            },
                        )
                        if (external?.available != true) {
                            Text(
                                stringResource(R.string.external_storage_not_mounted),
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                        if (storageBusy) {
                            LinearProgressIndicator(Modifier.fillMaxWidth())
                        }
                        storageError?.let {
                            Text(it, color = MaterialTheme.colorScheme.error, style = MaterialTheme.typography.bodySmall)
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(
                    onClick = { if (!storageBusy) showStorageDialog = false },
                    enabled = !storageBusy,
                ) {
                    Text(stringResource(R.string.close))
                }
            },
        )
    }

    if (showAboutDialog) {
        SettingsAboutDialog(onDismiss = { showAboutDialog = false })
    }
}

@Composable
fun SettingsAboutDialog(onDismiss: () -> Unit) {
    val context = LocalContext.current
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(stringResource(R.string.about)) },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                Text(stringResource(R.string.app_name), fontWeight = FontWeight.Bold)
                Text(
                    stringResource(
                        R.string.settings_about_version,
                        context.packageManager.getPackageInfo(context.packageName, 0).versionName
                            ?: "unknown",
                    ),
                )
                Text(stringResource(R.string.settings_about_product, stringResource(R.string.app_name)))
            }
        },
        confirmButton = {
            TextButton(onClick = onDismiss) {
                Text(stringResource(R.string.close))
            }
        },
    )
}

@Composable
private fun SettingsSection(
    title: String,
    content: @Composable ColumnScope.() -> Unit,
) {
    Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
        Text(
            title,
            modifier = Modifier.padding(start = 10.dp, bottom = 2.dp),
            style = MaterialTheme.typography.labelMedium,
            fontWeight = FontWeight.Medium,
            color = MaterialTheme.colorScheme.primary,
        )
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(14.dp))
                .background(MaterialTheme.colorScheme.surfaceVariant),
            content = content,
        )
    }
}

@Composable
private fun SettingsRow(
    title: String,
    subtitle: String,
    icon: ImageVector,
    onClick: (() -> Unit)? = null,
    trailing: (@Composable () -> Unit)? = null,
    enabled: Boolean = true,
) {
    val modifier = if (onClick != null && enabled) {
        Modifier.fillMaxWidth().clickable(onClick = onClick)
    } else {
        Modifier.fillMaxWidth()
    }

    Row(
        modifier = modifier
            .heightIn(min = 62.dp)
            .padding(horizontal = 14.dp, vertical = 7.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Box(
            modifier = Modifier
                .size(36.dp)
                .background(
                    MaterialTheme.colorScheme.primaryContainer,
                    CircleShape,
                ),
            contentAlignment = Alignment.Center,
        ) {
            Icon(
                icon,
                contentDescription = null,
                modifier = Modifier.size(20.dp),
                tint = MaterialTheme.colorScheme.onPrimaryContainer,
            )
        }
        Spacer(Modifier.width(12.dp))
        Column(Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(1.dp)) {
            Text(
                title,
                style = MaterialTheme.typography.bodyLarge,
                fontWeight = FontWeight.Medium,
                color = if (enabled) MaterialTheme.colorScheme.onSurface else MaterialTheme.colorScheme.onSurfaceVariant,
            )
            Text(
                subtitle,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
        if (trailing != null) {
            Spacer(Modifier.width(10.dp))
            trailing()
        } else if (onClick != null && enabled) {
            Icon(
                Icons.Outlined.ChevronRight,
                contentDescription = null,
                modifier = Modifier.size(20.dp),
                tint = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
    }
}

@Composable
private fun StorageOption(
    label: String,
    selected: Boolean,
    enabled: Boolean = true,
    onClick: () -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(enabled = enabled, onClick = onClick)
            .padding(vertical = 6.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Box(
            modifier = Modifier.size(48.dp),
            contentAlignment = Alignment.Center,
        ) {
            val borderColor = when {
                !enabled -> MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.55f)
                selected -> MaterialTheme.colorScheme.primary
                else -> MaterialTheme.colorScheme.onSurfaceVariant
            }
            Box(
                modifier = Modifier
                    .size(20.dp)
                    .clip(CircleShape)
                    .background(
                        if (selected) MaterialTheme.colorScheme.primary
                        else Color.Transparent
                    )
                    .then(
                        Modifier.drawBehind {
                            if (!selected) {
                                drawCircle(
                                    color = borderColor,
                                    radius = size.minDimension / 2f - 1.5f,
                                    style = androidx.compose.ui.graphics.drawscope.Stroke(width = 2.5f),
                                )
                            }
                        }
                    ),
                contentAlignment = Alignment.Center,
            ) {
                if (selected) {
                    Box(
                        Modifier
                            .size(8.dp)
                            .clip(CircleShape)
                            .background(MaterialTheme.colorScheme.onPrimary),
                    )
                }
            }
        }
        Spacer(Modifier.width(8.dp))
        Text(
            label,
            color = if (enabled) MaterialTheme.colorScheme.onSurface
            else MaterialTheme.colorScheme.onSurfaceVariant,
        )
    }
}

@Composable
private fun ThemeOption(
    label: String,
    selected: Boolean,
    onClick: () -> Unit,
) {
    Row(
        modifier = Modifier.fillMaxWidth().clickable(onClick = onClick).padding(vertical = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        RadioButton(selected = selected, onClick = onClick)
        Spacer(Modifier.width(8.dp))
        Text(label)
    }
}

private fun openSystemSettings(
    context: Context,
    action: String,
    vararg extras: Pair<String, String>,
) {
    val intent = Intent(action).apply {
        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        extras.forEach { (key, value) -> putExtra(key, value) }
    }
    if (intent.resolveActivity(context.packageManager) != null) {
        context.startActivity(intent)
    }
}

fun openSettingsContact(context: Context) {
    val intent = Intent(Intent.ACTION_SENDTO).apply {
        data = Uri.parse("mailto:")
    }
    if (intent.resolveActivity(context.packageManager) != null) {
        context.startActivity(intent)
    }
}

private fun restartApp(context: Context) {
    val launchIntent = context.packageManager.getLaunchIntentForPackage(context.packageName) ?: return
    launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
    context.startActivity(launchIntent)
    (context as? Activity)?.finish()
}
