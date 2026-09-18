package com.savie.bare.feature.apps

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.savie.bare.app.AppItem
import com.savie.bare.app.Screen
import com.savie.bare.app.demoApps
import com.savie.bare.ui.components.CheckRow
import com.savie.bare.ui.components.FilterPill
import com.savie.bare.ui.components.ListEntry

@Composable
fun AppsScreen(onOpen: (Screen) -> Unit, onOpenApp: (AppItem) -> Unit) {
    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
        item {
            Text("Apps", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            Text("Discovery, backup parts, restore, history, protection, dan configuration.")
        }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                FilterPill("All apps", true)
                FilterPill("User apps", false)
                FilterPill("System", false)
            }
        }
        item { ListEntry("Import APK / APKS", "Import and validate APK artifacts", Icons.Default.Apps) { onOpen(Screen.IMPORT_EXPORT) } }
        item { ListEntry("Labels & Favorites", "Management and filtering", Icons.Default.Info) { onOpen(Screen.MANAGEMENT) } }
        item { ListEntry("Protected backups", "Retention and protection", Icons.Default.Lock) { onOpen(Screen.MANAGEMENT) } }
        item { Text("Installed apps", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
        items(demoApps) { app ->
            Card(Modifier.fillMaxWidth().clickable { onOpenApp(app) }) {
                Row(Modifier.padding(14.dp), verticalAlignment = Alignment.CenterVertically) {
                    Box(Modifier.size(44.dp).background(MaterialTheme.colorScheme.primaryContainer, CircleShape), Alignment.Center) {
                        Text(app.name.take(1), fontWeight = FontWeight.Bold)
                    }
                    Spacer(Modifier.width(12.dp))
                    Column(Modifier.weight(1f)) {
                        Text(app.name, fontWeight = FontWeight.Bold)
                        Text(app.packageName, style = MaterialTheme.typography.bodySmall)
                        Text(app.category + " • " + app.size, style = MaterialTheme.typography.labelSmall)
                    }
                    if (app.favorite) Text("★")
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppDetailScreen(app: AppItem?, onOpen: (Screen) -> Unit, onBack: () -> Unit) {
    val item = app ?: demoApps.first()
    Scaffold(topBar = { TopAppBar(title = { Text(item.name) }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Kembali") } }) }) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Box(Modifier.size(64.dp).background(MaterialTheme.colorScheme.primaryContainer, CircleShape), Alignment.Center) {
                        Text(item.name.take(1), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                    }
                    Spacer(Modifier.width(14.dp))
                    Column {
                        Text(item.name, style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                        Text(item.packageName)
                        Text(item.size)
                    }
                }
            }
            item { Text("Backup parts", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
            items(listOf("APK", "Split APK", "App data", "External data", "Media", "Cache", "Expansion / OBB")) { CheckRow(it, true) }
            item { Text("Actions", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
            item { Button(onClick = {}, Modifier.fillMaxWidth()) { Text("Backup") } }
            item { OutlinedButton(onClick = {}, Modifier.fillMaxWidth()) { Text("Restore") } }
            item { ListEntry("Multiple backups", "History and versions", Icons.Default.Sync) { onOpen(Screen.TASK) } }
            item { ListEntry("Custom configuration", "Parts and strategy", Icons.Default.Settings) { onOpen(Screen.APP_CONFIG) } }
            item { ListEntry("Management", "Favorite, labels, blacklist, protection", Icons.Default.Build) { onOpen(Screen.MANAGEMENT) } }
        }
    }
}

@Composable
fun AppConfigScreen(app: AppItem?, onBack: () -> Unit) {
    val item = app ?: demoApps.first()
    com.savie.bare.feature.misc.GenericDomainScreen("Configuration · " + item.name, "Mockup pengaturan per-app. Nilai belum disimpan ke backend.", listOf("Backup parts", "Compression", "Encryption", "Multiple backups", "Protection", "Notes", "Schedule"), onBack)
}
