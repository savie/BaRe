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
        Screen.FOLDERS -> GenericDomainScreen("Folders", "Backup folder, restore, incremental, manifest, chain validation.", listOf("Folder setups", "Backup", "Restore", "Incremental backups", "Multiple versions", "Manifest & file entries", "Chain validation"), onBack)
        Screen.MESSAGES -> GenericDomainScreen("Messages", "SMS / MMS / RCS, attachments, backup, restore, history.", listOf("SMS / MMS", "Attachments", "RCS", "Backup", "Restore", "History"), onBack)
        Screen.CALL_LOGS -> GenericDomainScreen("Call Logs", "Riwayat panggilan dan state permission.", listOf("Call history", "Backup", "Restore", "Permissions", "History"), onBack)
        Screen.WIFI -> GenericDomainScreen("Wi-Fi", "Saved networks, authentication, privilege-aware restore.", listOf("Saved networks", "Backup", "Restore", "Device authentication", "Enterprise Wi-Fi", "Manual fallback"), onBack)
        Screen.WALLPAPERS -> GenericDomainScreen("Wallpapers", "Backup, restore, apply, dan diagnostics launcher.", listOf("Current wallpaper", "Backup", "Restore", "Apply", "Launcher diagnostics"), onBack)
        Screen.STORAGE -> GenericDomainScreen("Storage", "Repository, capacity, SAF, move/copy, dan integrity.", listOf("Internal", "External / SAF", "Storage switch", "Space checks", "Move / copy", "Repository status"), onBack)
        Screen.MANAGEMENT -> GenericDomainScreen("Management", "Labels, favorites, blacklist, quick actions, protection.", listOf("Labels", "Favorites", "Blacklist", "Quick actions", "Custom configurations", "Retention", "Protected backups"), onBack)
        Screen.DIAGNOSTICS -> GenericDomainScreen("Diagnostics", "Operational troubleshooting surface. Semua status di sini masih mockup.", listOf("Operation logs", "Errors", "Skipped parts", "Blocked operations", "Storage checks", "Transfer checks", "App visibility diagnostics"), onBack)
        Screen.SETTINGS -> GenericDomainScreen("Settings", "Pengaturan dikelompokkan berdasarkan domain.", listOf("Appearance", "Language", "Backup defaults", "Restore defaults", "Security", "Compression", "Notifications", "About"), onBack)
        Screen.IMPORT_EXPORT -> GenericDomainScreen("Import / Export", "APK/APKS, configuration, validation, history.", listOf("Import APK", "Import APKS", "Export configuration", "Import configuration", "Validation", "History"), onBack)
        Screen.TASK -> GenericDomainScreen("Task", "Task/progress surface dengan state eksplisit.", listOf("Planned", "Validating", "Ready", "Running", "Succeeded", "Partial", "Failed", "Blocked", "Skipped", "Cancelled", "Verification: Unverified → Verified"), onBack)
        Screen.SCHEDULE_DETAIL -> GenericDomainScreen("Schedule", "Schedule configuration dan last-run state.", listOf("Schedule name", "Conditions", "Selected apps", "Selected folders", "Enabled", "Last run", "Run now"), onBack)
        else -> Unit
    }
}
