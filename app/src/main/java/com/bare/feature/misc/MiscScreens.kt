package com.bare.feature.misc


import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.bare.app.AppItem
import com.bare.R
import com.bare.app.Screen
import com.bare.feature.apps.InstalledAppRepository
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import com.bare.ui.components.ListEntry
import com.bare.feature.settings.SettingsScreen
import com.bare.app.AppThemeMode

@OptIn(androidx.compose.material3.ExperimentalMaterial3Api::class)
@Composable
fun CloudScreen(
    hasAccount: Boolean,
    onBack: () -> Unit,
    onConnectAccount: () -> Unit,
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.cloud_sync)) },
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(Icons.Default.ArrowBack, stringResource(R.string.back))
                    }
                },
            )
        },
    ) { padding ->
        LazyColumn(
            Modifier.fillMaxSize().padding(padding).padding(horizontal = 16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            item {
                Spacer(Modifier.height(4.dp))
                if (!hasAccount) {
                    Card(Modifier.fillMaxWidth()) {
                        Column(
                            Modifier.padding(20.dp),
                            verticalArrangement = Arrangement.spacedBy(8.dp),
                        ) {
                            Icon(Icons.Default.CloudQueue, null, Modifier.size(32.dp))
                            Text(
                                stringResource(R.string.cloud_account_title),
                                style = MaterialTheme.typography.headlineSmall,
                                fontWeight = FontWeight.SemiBold,
                            )
                            Text(
                                stringResource(R.string.cloud_account_description),
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                            TextButton(
                                onClick = onConnectAccount,
                                contentPadding = PaddingValues(0.dp),
                            ) {
                                Text(stringResource(R.string.connect_account))
                            }
                        }
                    }
                } else {
                    Text(
                        stringResource(R.string.cloud_ready_title),
                        style = MaterialTheme.typography.headlineSmall,
                        fontWeight = FontWeight.SemiBold,
                    )
                    Text(
                        stringResource(R.string.cloud_ready_description),
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
            }
            item {
                Text(
                    stringResource(R.string.providers),
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                )
            }
            item { ListEntry(stringResource(R.string.google_drive), stringResource(R.string.disconnected), Icons.Default.Cloud) {} }
            item { ListEntry(stringResource(R.string.webdav), stringResource(R.string.disconnected), Icons.Default.Sync) {} }
            item { ListEntry(stringResource(R.string.generic_remote), stringResource(R.string.disconnected), Icons.Default.Cloud) {} }
            item { ListEntry(stringResource(R.string.cloud_diagnostics), stringResource(R.string.transfer_connection_checks), Icons.Default.BugReport) {} }
        }
    }
}

@Composable
fun SearchScreen(query: String, onQueryChange: (String) -> Unit, onOpenApp: (AppItem) -> Unit, onClose: () -> Unit) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val repository = remember(context) { InstalledAppRepository(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }

    LaunchedEffect(repository) {
        apps = runCatching { repository.load() }.getOrDefault(emptyList())
    }

    val normalizedQuery = query.trim()
    val results = remember(apps, normalizedQuery) {
        apps.filter {
            normalizedQuery.isBlank() ||
                it.name.contains(normalizedQuery, true) ||
                it.packageName.contains(normalizedQuery, true)
        }
    }

    Column(
        Modifier.fillMaxSize().padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp),
    ) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            IconButton(onClick = onClose) {
                Icon(Icons.Default.ArrowBack, stringResource(R.string.back))
            }
            OutlinedTextField(
                value = query,
                onValueChange = onQueryChange,
                modifier = Modifier.weight(1f),
                label = { Text(stringResource(R.string.search)) },
                singleLine = true,
            )
        }
        Text(
            stringResource(R.string.search_scope),
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        LazyColumn(verticalArrangement = Arrangement.spacedBy(8.dp)) {
            items(results, key = { it.packageName }) { app ->
                ListEntry(
                    app.name,
                    app.packageName,
                    Icons.Default.Apps,
                ) { onOpenApp(app) }
            }
        }
    }
}

@OptIn(androidx.compose.material3.ExperimentalMaterial3Api::class)
@Composable
fun GenericDomainScreen(title: String, subtitle: String, entries: List<String>, onBack: () -> Unit) {
    Scaffold(topBar = { TopAppBar(title = { Text(title) }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Kembali") } }) }) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text(title, style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                Text(subtitle)
            }
            items(entries) { entry ->
                Card(Modifier.fillMaxWidth()) {
                    Row(Modifier.padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Default.Settings, null)
                        Spacer(Modifier.width(14.dp))
                        Column(Modifier.weight(1f)) {
                            Text(entry, fontWeight = FontWeight.Bold)
                            Text(stringResource(R.string.mockup_capability_unconnected), style = MaterialTheme.typography.bodySmall)
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun MiscScreen(
    screen: Screen,
    identityId: String?,
    onBack: () -> Unit,
    onOpen: (Screen) -> Unit,
    onOpenApps: () -> Unit,
    themeMode: AppThemeMode,
    dynamicColors: Boolean,
    amoledBlack: Boolean,
    onThemeModeChanged: (AppThemeMode) -> Unit,
    onDynamicColorsChanged: (Boolean) -> Unit,
    onAmoledBlackChanged: (Boolean) -> Unit,
) {
    when (screen) {
        Screen.FOLDERS -> GenericDomainScreen(stringResource(R.string.folders), stringResource(R.string.folders_summary), listOf(stringResource(R.string.folder_setups), stringResource(R.string.backup), stringResource(R.string.restore), stringResource(R.string.incremental_backups), stringResource(R.string.multiple_versions), stringResource(R.string.manifest_file_entries), stringResource(R.string.chain_validation)), onBack)
        Screen.MESSAGES -> GenericDomainScreen(stringResource(R.string.messages), stringResource(R.string.messages_summary), listOf(stringResource(R.string.sms_mms_rcs), stringResource(R.string.attachments), stringResource(R.string.rcs), stringResource(R.string.backup), stringResource(R.string.restore), stringResource(R.string.history)), onBack)
        Screen.CALL_LOGS -> GenericDomainScreen(stringResource(R.string.call_logs), stringResource(R.string.call_logs_summary), listOf(stringResource(R.string.call_history), stringResource(R.string.backup), stringResource(R.string.restore), stringResource(R.string.permissions), stringResource(R.string.history)), onBack)
        Screen.WIFI -> GenericDomainScreen(stringResource(R.string.wifi), stringResource(R.string.wifi_summary), listOf(stringResource(R.string.saved_networks_restore), stringResource(R.string.backup), stringResource(R.string.restore), stringResource(R.string.device_authentication), stringResource(R.string.enterprise_wifi), stringResource(R.string.manual_fallback)), onBack)
        Screen.WALLPAPERS -> GenericDomainScreen(stringResource(R.string.wallpapers), stringResource(R.string.wallpapers_summary), listOf(stringResource(R.string.current_wallpaper), stringResource(R.string.backup), stringResource(R.string.restore), stringResource(R.string.apply), stringResource(R.string.launcher_diagnostics)), onBack)
        Screen.STORAGE -> GenericDomainScreen(stringResource(R.string.storage), stringResource(R.string.storage_summary), listOf(stringResource(R.string.internal_storage), stringResource(R.string.external_saf), stringResource(R.string.storage_switch), stringResource(R.string.space_checks), stringResource(R.string.move_copy), stringResource(R.string.repository_status)), onBack)
        Screen.MANAGEMENT -> GenericDomainScreen(stringResource(R.string.management), stringResource(R.string.management_summary), listOf(stringResource(R.string.labels), stringResource(R.string.favorites), stringResource(R.string.blacklist), stringResource(R.string.quick_actions_label), stringResource(R.string.custom_configurations), stringResource(R.string.retention), stringResource(R.string.protected_backups)), onBack)
        Screen.DIAGNOSTICS -> com.bare.feature.settings.DiagnosticsScreen(onBack = onBack)
        Screen.SETTINGS -> SettingsScreen(
            identityId = identityId,
            onOpen = onOpen,
            onOpenApps = onOpenApps,
            themeMode = themeMode,
            dynamicColors = dynamicColors,
            amoledBlack = amoledBlack,
            onThemeModeChanged = onThemeModeChanged,
            onDynamicColorsChanged = onDynamicColorsChanged,
            onAmoledBlackChanged = onAmoledBlackChanged,
            onBack = onBack,
        )
        Screen.IMPORT_EXPORT -> GenericDomainScreen(stringResource(R.string.import_export), stringResource(R.string.import_export_summary), listOf(stringResource(R.string.import_apk), stringResource(R.string.import_apks), stringResource(R.string.export_configuration), stringResource(R.string.import_configuration), stringResource(R.string.validation), stringResource(R.string.history)), onBack)
        Screen.TASK -> GenericDomainScreen(stringResource(R.string.task), stringResource(R.string.task_summary), listOf(stringResource(R.string.planned), stringResource(R.string.validating), stringResource(R.string.ready), stringResource(R.string.running), stringResource(R.string.succeeded), stringResource(R.string.partial), stringResource(R.string.failed), stringResource(R.string.blocked), stringResource(R.string.skipped), stringResource(R.string.cancelled), stringResource(R.string.verification_unverified_verified)), onBack)
        Screen.SCHEDULE_DETAIL -> GenericDomainScreen(stringResource(R.string.schedule), stringResource(R.string.schedule_summary), listOf(stringResource(R.string.schedule_name), stringResource(R.string.conditions), stringResource(R.string.selected_apps), stringResource(R.string.selected_folders), stringResource(R.string.enabled), stringResource(R.string.last_run), stringResource(R.string.run_now)), onBack)
        else -> Unit
    }
}
