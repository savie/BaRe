package com.savie.bare.feature.misc


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
import com.savie.bare.app.AppItem
import com.savie.bare.app.Screen
import com.savie.bare.app.demoApps
import com.savie.bare.ui.components.ListEntry

@OptIn(androidx.compose.material3.ExperimentalMaterial3Api::class)
@Composable
fun CloudScreen(onBack: () -> Unit) {
    Scaffold(topBar = { TopAppBar(title = { Text(stringResource(R.string.cloud_sync)) }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }) }) { padding ->
        Column(Modifier.fillMaxSize().padding(padding).verticalScroll(rememberScrollState()).padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            Card(Modifier.fillMaxWidth()) {
                Column(Modifier.padding(20.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                    Icon(Icons.Default.CloudOff, null, Modifier.size(52.dp))
                    Spacer(Modifier.height(10.dp))
                    Text(stringResource(R.string.cloud_account_not_connected), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                    Text(stringResource(R.string.connect_provider_description))
                    Spacer(Modifier.height(12.dp))
                    Button(onClick = {}) { Text(stringResource(R.string.connect_account)) }
                }
            }
            Text(stringResource(R.string.providers), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
            ListEntry(stringResource(R.string.google_drive), stringResource(R.string.disconnected), Icons.Default.Cloud) {}
            ListEntry(stringResource(R.string.webdav), stringResource(R.string.disconnected), Icons.Default.Sync) {}
            ListEntry(stringResource(R.string.generic_remote), stringResource(R.string.disconnected), Icons.Default.Cloud) {}
            ListEntry(stringResource(R.string.cloud_diagnostics), stringResource(R.string.transfer_connection_checks), Icons.Default.BugReport) {}
        }
    }
}

@Composable
fun SearchScreen(query: String, onQueryChange: (String) -> Unit, onOpenApp: (AppItem) -> Unit, onClose: () -> Unit) {
    Column(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            IconButton(onClick = onClose) { Icon(Icons.Default.ArrowBack, "Kembali") }
            OutlinedTextField(query, onQueryChange, Modifier.weight(1f), label = { Text(stringResource(R.string.search)) }, singleLine = true)
        }
        Text(stringResource(R.string.search_scope))
        val results = demoApps.filter { query.isBlank() || it.name.contains(query, true) || it.packageName.contains(query, true) }
        LazyColumn(verticalArrangement = Arrangement.spacedBy(8.dp)) {
            items(results) { app -> ListEntry(app.name, app.packageName, Icons.Default.Apps) { onOpenApp(app) } }
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
fun MiscScreen(screen: Screen, onBack: () -> Unit) {
    when (screen) {
        Screen.FOLDERS -> GenericDomainScreen(stringResource(R.string.folders), stringResource(R.string.folders_summary), listOf(stringResource(R.string.folder_setups), stringResource(R.string.backup), stringResource(R.string.restore), stringResource(R.string.incremental_backups), stringResource(R.string.multiple_versions), stringResource(R.string.manifest_file_entries), stringResource(R.string.chain_validation)), onBack)
        Screen.MESSAGES -> GenericDomainScreen(stringResource(R.string.messages), stringResource(R.string.messages_summary), listOf(stringResource(R.string.sms_mms_rcs), stringResource(R.string.attachments), stringResource(R.string.rcs), stringResource(R.string.backup), stringResource(R.string.restore), stringResource(R.string.history)), onBack)
        Screen.CALL_LOGS -> GenericDomainScreen(stringResource(R.string.call_logs), stringResource(R.string.call_logs_summary), listOf(stringResource(R.string.call_history), stringResource(R.string.backup), stringResource(R.string.restore), stringResource(R.string.permissions), stringResource(R.string.history)), onBack)
        Screen.WIFI -> GenericDomainScreen(stringResource(R.string.wifi), stringResource(R.string.wifi_summary), listOf(stringResource(R.string.saved_networks_restore), stringResource(R.string.backup), stringResource(R.string.restore), stringResource(R.string.device_authentication), stringResource(R.string.enterprise_wifi), stringResource(R.string.manual_fallback)), onBack)
        Screen.WALLPAPERS -> GenericDomainScreen(stringResource(R.string.wallpapers), stringResource(R.string.wallpapers_summary), listOf(stringResource(R.string.current_wallpaper), stringResource(R.string.backup), stringResource(R.string.restore), stringResource(R.string.apply), stringResource(R.string.launcher_diagnostics)), onBack)
        Screen.STORAGE -> GenericDomainScreen(stringResource(R.string.storage), stringResource(R.string.storage_summary), listOf(stringResource(R.string.internal_storage), stringResource(R.string.external_saf), stringResource(R.string.storage_switch), stringResource(R.string.space_checks), stringResource(R.string.move_copy), stringResource(R.string.repository_status)), onBack)
        Screen.MANAGEMENT -> GenericDomainScreen(stringResource(R.string.management), stringResource(R.string.management_summary), listOf(stringResource(R.string.labels), stringResource(R.string.favorites), stringResource(R.string.blacklist), stringResource(R.string.quick_actions_label), stringResource(R.string.custom_configurations), stringResource(R.string.retention), stringResource(R.string.protected_backups)), onBack)
        Screen.DIAGNOSTICS -> GenericDomainScreen(stringResource(R.string.diagnostics), stringResource(R.string.diagnostics_summary), listOf(stringResource(R.string.operation_logs), stringResource(R.string.errors), stringResource(R.string.skipped_parts), stringResource(R.string.blocked_operations), stringResource(R.string.storage_checks), stringResource(R.string.transfer_checks), stringResource(R.string.app_visibility_diagnostics)), onBack)
        Screen.SETTINGS -> GenericDomainScreen(stringResource(R.string.settings), stringResource(R.string.settings_summary), listOf(stringResource(R.string.appearance), stringResource(R.string.language), stringResource(R.string.backup_defaults), stringResource(R.string.restore_defaults), stringResource(R.string.security), stringResource(R.string.compression), stringResource(R.string.notifications), stringResource(R.string.about)), onBack)
        Screen.IMPORT_EXPORT -> GenericDomainScreen(stringResource(R.string.import_export), stringResource(R.string.import_export_summary), listOf(stringResource(R.string.import_apk), stringResource(R.string.import_apks), stringResource(R.string.export_configuration), stringResource(R.string.import_configuration), stringResource(R.string.validation), stringResource(R.string.history)), onBack)
        Screen.TASK -> GenericDomainScreen(stringResource(R.string.task), stringResource(R.string.task_summary), listOf(stringResource(R.string.planned), stringResource(R.string.validating), stringResource(R.string.ready), stringResource(R.string.running), stringResource(R.string.succeeded), stringResource(R.string.partial), stringResource(R.string.failed), stringResource(R.string.blocked), stringResource(R.string.skipped), stringResource(R.string.cancelled), stringResource(R.string.verification_unverified_verified)), onBack)
        Screen.SCHEDULE_DETAIL -> GenericDomainScreen(stringResource(R.string.schedule), stringResource(R.string.schedule_summary), listOf(stringResource(R.string.schedule_name), stringResource(R.string.conditions), stringResource(R.string.selected_apps), stringResource(R.string.selected_folders), stringResource(R.string.enabled), stringResource(R.string.last_run), stringResource(R.string.run_now)), onBack)
        else -> Unit
    }
}
