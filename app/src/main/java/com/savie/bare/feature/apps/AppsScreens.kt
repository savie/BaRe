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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.savie.bare.app.AppItem
import com.savie.bare.R
import com.savie.bare.app.Screen
import com.savie.bare.app.demoApps
import com.savie.bare.ui.components.CheckRow
import com.savie.bare.ui.components.FilterPill
import com.savie.bare.ui.components.ListEntry

@Composable
fun AppsScreen(onOpen: (Screen) -> Unit, onOpenApp: (AppItem) -> Unit) {
    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
        item {
            Text(stringResource(R.string.apps), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            Text(stringResource(R.string.apps_summary))
        }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                FilterPill(stringResource(R.string.all_apps), true)
                FilterPill(stringResource(R.string.user_apps), false)
                FilterPill(stringResource(R.string.system), false)
            }
        }
        item { ListEntry(stringResource(R.string.import_apk_apks), stringResource(R.string.import_validate_apk), Icons.Default.Apps) { onOpen(Screen.IMPORT_EXPORT) } }
        item { ListEntry(stringResource(R.string.labels_favorites), stringResource(R.string.management_filtering), Icons.Default.Tune) { onOpen(Screen.MANAGEMENT) } }
        item { ListEntry(stringResource(R.string.protected_backups), stringResource(R.string.retention_protection), Icons.Default.Lock) { onOpen(Screen.MANAGEMENT) } }
        item { Text(stringResource(R.string.installed_apps), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
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
                    if (app.favorite) Text(stringResource(R.string.favorite_star))
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppDetailScreen(app: AppItem?, onOpen: (Screen) -> Unit, onBack: () -> Unit) {
    val item = app ?: demoApps.first()
    Scaffold(topBar = { TopAppBar(title = { Text(item.name) }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }) }) { padding ->
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
            item { Text(stringResource(R.string.backup_parts), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
            item {\n                val backupParts = listOf(\n                    stringResource(R.string.apk),\n                    stringResource(R.string.split_apk),\n                    stringResource(R.string.app_data),\n                    stringResource(R.string.external_data),\n                    stringResource(R.string.media),\n                    stringResource(R.string.cache),\n                    stringResource(R.string.expansion_obb),\n                )\n                backupParts.forEach { CheckRow(it, true) }\n            }
            item { Text(stringResource(R.string.actions), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
            item { Button(onClick = {}, modifier = Modifier.fillMaxWidth()) { Text(stringResource(R.string.backup)) } }
            item { OutlinedButton(onClick = {}, modifier = Modifier.fillMaxWidth()) { Text(stringResource(R.string.restore)) } }
            item { ListEntry(stringResource(R.string.multiple_backups), stringResource(R.string.history_versions), Icons.Default.Sync) { onOpen(Screen.TASK) } }
            item { ListEntry(stringResource(R.string.custom_configuration), stringResource(R.string.parts_strategy), Icons.Default.Settings) { onOpen(Screen.APP_CONFIG) } }
            item { ListEntry(stringResource(R.string.management), stringResource(R.string.favorite_labels_blacklist_protection), Icons.Default.Build) { onOpen(Screen.MANAGEMENT) } }
        }
    }
}

@Composable
fun AppConfigScreen(app: AppItem?, onBack: () -> Unit) {
    val item = app ?: demoApps.first()
    com.savie.bare.feature.misc.GenericDomainScreen(stringResource(R.string.configuration_title, item.name), stringResource(R.string.per_app_mockup_settings), listOf(stringResource(R.string.backup_parts), stringResource(R.string.compression), stringResource(R.string.encryption), stringResource(R.string.multiple_backups), stringResource(R.string.protection), stringResource(R.string.notes), stringResource(R.string.schedule)), onBack)
}
