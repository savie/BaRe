package com.bare.feature.apps

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.bare.app.AppItem
import com.bare.R
import com.bare.app.Screen
import com.bare.app.demoApps
import com.bare.ui.components.CheckRow
import com.bare.ui.components.FilterPill
import com.bare.ui.components.ListEntry

@Composable
fun AppsScreen(onOpen: (Screen) -> Unit, onOpenApp: (AppItem) -> Unit) {
    val context = LocalContext.current
    val repository = remember(context) { InstalledAppRepository(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var error by remember { mutableStateOf<String?>(null) }
    var selectedMenuPackage by remember { mutableStateOf<String?>(null) }

    LaunchedEffect(repository) {
        runCatching { repository.load() }
            .onSuccess {
                apps = it
                error = null
            }
            .onFailure {
                error = it.message ?: "Unable to discover installed apps"
            }
    }

    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
        item {
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

        when {
            error != null -> item { Text(error!!, color = MaterialTheme.colorScheme.error) }
            apps.isEmpty() -> item { Text("No visible installed apps") }
            else -> items(apps, key = { it.packageName }) { app ->
                Box(Modifier.fillMaxWidth()) {
                    Card(
                        Modifier
                            .fillMaxWidth()
                            .clickable { onOpenApp(app) }
                    ) {
                        Row(Modifier.padding(14.dp), verticalAlignment = Alignment.CenterVertically) {
                            Box(
                                Modifier.size(44.dp).background(MaterialTheme.colorScheme.primaryContainer, CircleShape),
                                Alignment.Center
                            ) {
                                Text(app.name.take(1), fontWeight = FontWeight.Bold)
                            }
                            Spacer(Modifier.width(12.dp))
                            Column(Modifier.weight(1f)) {
                                Text(app.name, fontWeight = FontWeight.Bold)
                                Text(app.packageName, style = MaterialTheme.typography.bodySmall)
                                Text(app.category + " • " + app.size, style = MaterialTheme.typography.labelSmall)
                            }
                            Box {
                                IconButton(onClick = { selectedMenuPackage = app.packageName }) {
                                    Icon(Icons.Default.MoreVert, contentDescription = "App actions")
                                }
                                DropdownMenu(
                                    expanded = selectedMenuPackage == app.packageName,
                                    onDismissRequest = { selectedMenuPackage = null }
                                ) {
                                    DropdownMenuItem(
                                        text = { Text("App details") },
                                        leadingIcon = { Icon(Icons.Default.Info, contentDescription = null) },
                                        onClick = {
                                            selectedMenuPackage = null
                                            onOpenApp(app)
                                        }
                                    )
                                    DropdownMenuItem(
                                        text = { Text("Custom configuration") },
                                        leadingIcon = { Icon(Icons.Default.Settings, contentDescription = null) },
                                        onClick = {
                                            selectedMenuPackage = null
                                            onOpenApp(app)
                                            onOpen(Screen.APP_CONFIG)
                                        }
                                    )
                                    DropdownMenuItem(
                                        text = { Text("Management") },
                                        leadingIcon = { Icon(Icons.Default.Build, contentDescription = null) },
                                        onClick = {
                                            selectedMenuPackage = null
                                            onOpen(Screen.MANAGEMENT)
                                        }
                                    )
                                }
                            }
                        }
                    }
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
            item {
                val backupParts = listOf(
                    stringResource(R.string.apk),
                    stringResource(R.string.split_apk),
                    stringResource(R.string.app_data),
                    stringResource(R.string.external_data),
                    stringResource(R.string.media),
                    stringResource(R.string.cache),
                    stringResource(R.string.expansion_obb),
                )
                backupParts.forEach { CheckRow(it, true) }
            }
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
    com.bare.feature.misc.GenericDomainScreen(stringResource(R.string.configuration_title, item.name), stringResource(R.string.per_app_mockup_settings), listOf(stringResource(R.string.backup_parts), stringResource(R.string.compression), stringResource(R.string.encryption), stringResource(R.string.multiple_backups), stringResource(R.string.protection), stringResource(R.string.notes), stringResource(R.string.schedule)), onBack)
}
