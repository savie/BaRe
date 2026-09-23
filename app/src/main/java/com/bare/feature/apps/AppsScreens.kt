package com.bare.feature.apps

import android.content.Context
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.viewinterop.AndroidView
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import com.bare.R
import com.bare.app.AppItem
import com.bare.app.Screen
import com.bare.ui.components.CheckRow
import com.bare.ui.components.ListEntry

private enum class AppScope { ALL, USER, SYSTEM }
private enum class AppSort { NAME, UPDATE }

@Composable
fun AppsScreen(onOpen: (Screen) -> Unit, onOpenApp: (AppItem) -> Unit, searchOpen: Boolean, onSearchOpenChange: (Boolean) -> Unit) {
    val context = LocalContext.current
    val repository = remember(context) { InstalledAppRepository(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var error by remember { mutableStateOf<String?>(null) }
    var selectedMenuPackage by remember { mutableStateOf<String?>(null) }
    var scope by remember { mutableStateOf(AppScope.ALL) }
    var sort by remember { mutableStateOf(AppSort.NAME) }
    var descending by remember { mutableStateOf(false) }
    var showFilters by remember { mutableStateOf(false) }
    var showContext by remember { mutableStateOf(false) }
    var searchQuery by remember { mutableStateOf("") }

    BackHandler(enabled = searchOpen) { onSearchOpenChange(false) }

    LaunchedEffect(repository) {
        runCatching { repository.load() }
            .onSuccess { apps = it; error = null }
            .onFailure { error = it.message ?: context.getString(R.string.unable_to_discover_installed_apps) }
    }

    val visibleApps = remember(apps, scope, sort, descending, searchQuery) {
        val query = searchQuery.trim().lowercase()
        val filtered = apps.filter { app ->
            val matchesScope = when (scope) {
                AppScope.ALL -> true
                AppScope.USER -> !app.isSystem
                AppScope.SYSTEM -> app.isSystem
            }
            val matchesQuery = query.isBlank() ||
                app.name.lowercase().contains(query) ||
                app.packageName.lowercase().contains(query)
            matchesScope && matchesQuery
        }
        when (sort) {
            AppSort.NAME -> if (descending) {
                filtered.sortedByDescending { it.name.lowercase() }
            } else {
                filtered.sortedBy { it.name.lowercase() }
            }
            AppSort.UPDATE -> if (descending) {
                filtered.sortedBy { it.lastUpdateTime ?: Long.MIN_VALUE }
            } else {
                filtered.sortedByDescending { it.lastUpdateTime ?: Long.MIN_VALUE }
            }
        }
    }

    if (showFilters) {
        AlertDialog(
            onDismissRequest = { showFilters = false },
            title = { Text(stringResource(R.string.apps_filters)) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(stringResource(R.string.apps_filter_model), fontWeight = FontWeight.Bold)
                    Text(stringResource(R.string.apps_filter_favorites_labels_status))
                    Text(stringResource(R.string.apps_filter_versions))
                    Text(stringResource(R.string.apps_filter_play))
                    Text(stringResource(R.string.apps_filter_system_note))
                }
            },
            confirmButton = {
                TextButton(onClick = { showFilters = false }) { Text(stringResource(R.string.close)) }
            }
        )
    }

    if (showContext) {
        AlertDialog(
            onDismissRequest = { showContext = false },
            title = { Text(stringResource(R.string.apps_context)) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(stringResource(R.string.apps_local), fontWeight = FontWeight.Bold)
                    Text(stringResource(R.string.apps_local_description))
                    Text(stringResource(R.string.apps_cloud_synced), fontWeight = FontWeight.Bold)
                    Text(stringResource(R.string.apps_cloud_description))
                    Text(stringResource(R.string.apps_context_mockup_note))
                }
            },
            confirmButton = {
                TextButton(onClick = { showContext = false }) { Text(stringResource(R.string.close)) }
            }
        )
    }

    LazyColumn(
        Modifier.fillMaxSize().padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        if (searchOpen) {
            item {
                Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                    OutlinedTextField(
                        value = searchQuery,
                        onValueChange = { searchQuery = it },
                        modifier = Modifier.weight(1f),
                        singleLine = true,
                        minLines = 1,
                        maxLines = 1,
                        placeholder = { Text(stringResource(R.string.search_apps_or_package), maxLines = 1) },
                        leadingIcon = { Icon(Icons.Default.Search, contentDescription = null) },
                        trailingIcon = {
                            if (searchQuery.isNotBlank()) {
                                IconButton(onClick = { searchQuery = "" }) {
                                    Icon(Icons.Default.Clear, contentDescription = stringResource(R.string.clear_search))
                                }
                            }
                        }
                    )
                    Spacer(Modifier.width(8.dp))
                    TextButton(onClick = {
                        searchQuery = ""
                        onSearchOpenChange(false)
                    }) { Text(stringResource(R.string.close)) }
                }
            }
        }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                FilterChip(
                    selected = scope == AppScope.ALL,
                    onClick = { scope = AppScope.ALL },
                    label = { Box(Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) { Text(stringResource(R.string.all_apps), maxLines = 1) } },
                    modifier = Modifier.weight(1f).height(56.dp)
                )
                FilterChip(
                    selected = scope == AppScope.USER,
                    onClick = { scope = AppScope.USER },
                    label = { Box(Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) { Text(stringResource(R.string.user_apps), maxLines = 1) } },
                    modifier = Modifier.weight(1f).height(56.dp)
                )
                FilterChip(
                    selected = scope == AppScope.SYSTEM,
                    onClick = { scope = AppScope.SYSTEM },
                    label = { Box(Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) { Text(stringResource(R.string.apps_system), maxLines = 1) } },
                    modifier = Modifier.weight(1f).height(56.dp)
                )
            }
        }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                OutlinedButton(
                    onClick = {
                        if (sort == AppSort.NAME && !descending) {
                            descending = true
                        } else if (sort == AppSort.NAME && descending) {
                            sort = AppSort.UPDATE
                            descending = false
                        } else if (sort == AppSort.UPDATE && !descending) {
                            descending = true
                        } else {
                            sort = AppSort.NAME
                            descending = false
                        }
                    },
                    modifier = Modifier.weight(1f),
                    contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)
                ) {
                    Icon(Icons.Default.Sort, contentDescription = null)
                    Spacer(Modifier.width(6.dp))
                    Text(
                        when (sort) {
                            AppSort.NAME -> if (descending) stringResource(R.string.apps_name_descending) else stringResource(R.string.apps_name_ascending)
                            AppSort.UPDATE -> if (descending) stringResource(R.string.apps_update_oldest) else stringResource(R.string.apps_update_newest)
                        }
                    )
                }
                OutlinedButton(onClick = { showFilters = true }, modifier = Modifier.weight(1f), contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)) {
                    Icon(Icons.Default.FilterList, contentDescription = null)
                    Spacer(Modifier.width(6.dp))
                    Text(stringResource(R.string.apps_filter))
                }
                OutlinedButton(onClick = { showContext = true }, modifier = Modifier.weight(1f), contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)) {
                    Icon(Icons.Default.Cloud, contentDescription = null)
                    Spacer(Modifier.width(6.dp))
                    Text(stringResource(R.string.apps_context))
                }
            }
        }
        item {
            Text(stringResource(R.string.installed_apps), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
        }
        when {
            error != null -> item { Text(error!!, color = MaterialTheme.colorScheme.error) }
            visibleApps.isEmpty() -> item { Text(stringResource(R.string.no_visible_installed_apps)) }
            else -> items(visibleApps, key = { it.packageName }) { app ->
                Card(Modifier.fillMaxWidth().clickable { onOpenApp(app) }) {
                    Row(Modifier.padding(14.dp), verticalAlignment = Alignment.CenterVertically) {
                        Box(
                            Modifier.size(44.dp).background(MaterialTheme.colorScheme.primaryContainer, CircleShape),
                            Alignment.Center
                        ) { Text(app.name.take(1), fontWeight = FontWeight.Bold) }
                        Spacer(Modifier.width(12.dp))
                        Column(Modifier.weight(1f)) {
                            Text(
                                app.name,
                                fontWeight = FontWeight.Bold,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                            Text(
                                app.packageName,
                                style = MaterialTheme.typography.bodySmall,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                            Text(
                                stringResource(R.string.backup_never),
                                style = MaterialTheme.typography.labelSmall,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                        }
                        Box {
                            IconButton(onClick = { selectedMenuPackage = app.packageName }) {
                                Icon(Icons.Default.MoreVert, contentDescription = stringResource(R.string.app_actions))
                            }
                            DropdownMenu(
                                expanded = selectedMenuPackage == app.packageName,
                                onDismissRequest = { selectedMenuPackage = null }
                            ) {
                                DropdownMenuItem(
                                    text = { Text(stringResource(R.string.app_details)) },
                                    leadingIcon = { Icon(Icons.Default.Info, contentDescription = null) },
                                    onClick = { selectedMenuPackage = null; onOpenApp(app) }
                                )
                                DropdownMenuItem(
                                    text = { Text(stringResource(R.string.custom_configuration)) },
                                    leadingIcon = { Icon(Icons.Default.Settings, contentDescription = null) },
                                    onClick = { selectedMenuPackage = null; onOpenApp(app); onOpen(Screen.APP_CONFIG) }
                                )
                                DropdownMenuItem(
                                    text = { Text(stringResource(R.string.management)) },
                                    leadingIcon = { Icon(Icons.Default.Build, contentDescription = null) },
                                    onClick = { selectedMenuPackage = null; onOpen(Screen.MANAGEMENT) }
                                )
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
fun AppsSearchScreen(onOpenApp: (AppItem) -> Unit, onBack: () -> Unit) {
    val context = LocalContext.current
    val repository = remember(context) { InstalledAppRepository(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var query by remember { mutableStateOf("") }

    LaunchedEffect(repository) { apps = runCatching { repository.load() }.getOrDefault(emptyList()) }
    val matches = remember(apps, query) {
        val q = query.trim().lowercase()
        if (q.isBlank()) emptyList() else apps.filter {
            it.name.lowercase().contains(q) || it.packageName.lowercase().contains(q)
        }.take(30)
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    OutlinedTextField(
                        value = query,
                        onValueChange = { query = it },
                        placeholder = { Text(stringResource(R.string.search_apps_or_package)) },
                        singleLine = true,
                        modifier = Modifier.fillMaxWidth()
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, contentDescription = stringResource(R.string.back)) }
                }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text(stringResource(R.string.apps_local_search), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Text(stringResource(R.string.apps_local_search_description))
            }
            if (query.isNotBlank() && matches.isEmpty()) {
                item { Text(stringResource(R.string.no_matching_apps)) }
            }
            items(matches, key = { it.packageName }) { app ->
                Card(Modifier.fillMaxWidth().clickable { onOpenApp(app) }) {
                    ListItem(
                        headlineContent = { Text(app.name, fontWeight = FontWeight.Bold) },
                        supportingContent = { Text(app.packageName + " • " + app.category) },
                        leadingContent = { Icon(Icons.Default.Apps, contentDescription = null) },
                        trailingContent = { Icon(Icons.Default.ArrowForward, contentDescription = null) }
                    )
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppsQuickActionsScreen(onOpen: (Screen) -> Unit, onBack: () -> Unit) {
    var message by remember { mutableStateOf<String?>(null) }
    if (message != null) {
        AlertDialog(
            onDismissRequest = { message = null },
            title = { Text("Quick action") },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(message!!)
                    Text("The UI path is wired. Backup/restore execution remains pending until the corresponding capability backend is available.", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                }
            },
            confirmButton = { TextButton(onClick = { message = null }) { Text(stringResource(R.string.close)) } },
        )
    }
    Scaffold(
        topBar = { TopAppBar(title = { Text("Apps quick actions") }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }) }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(horizontal = 16.dp), verticalArrangement = Arrangement.spacedBy(8.dp), contentPadding = PaddingValues(vertical = 12.dp)) {
            item { Text("QUICK BACKUP APPS", style = MaterialTheme.typography.labelMedium, color = MaterialTheme.colorScheme.primary) }
            item { QuickActionCard("Backup all apps", "Backup installed apps from this device", "To device", "To cloud") { message = "Backup all apps" } }
            item { QuickActionCard("Backup pending apps", "Backup apps that are not backed up yet", "To device", "To cloud") { message = "Backup pending apps" } }
            item { QuickActionCard("Backup updated apps", "Backup apps that have newer version APKs installed on this device", "To device", "To cloud") { message = "Backup updated apps" } }
            item { QuickActionCard("Redo existing backups", "Re-backup all currently backed up apps", "To device", "To cloud") { message = "Redo existing backups" } }
            item { QuickActionCard("Sync latest device backups to cloud", "Sync all latest backups of apps from the device to cloud") { message = "Sync latest device backups to cloud" } }
            item { Spacer(Modifier.height(8.dp)); Text("QUICK RESTORE APPS", style = MaterialTheme.typography.labelMedium, color = MaterialTheme.colorScheme.primary); Text("Uses Root access or Shizuku when required.", style = MaterialTheme.typography.bodySmall) }
            item { QuickActionCard("Restore all apps", "Restore all backed up apps", "From device", "From cloud") { message = "Restore all apps" } }
            item { QuickActionCard("Restore missing apps", "Restore backed up apps that are not installed on this device", "From device", "From cloud") { message = "Restore missing apps" } }
            item { QuickActionCard("Restore new versions", "Restore backed up apps that have newer version APKs in the backups", "From device", "From cloud") { message = "Restore new versions" } }
            item { Spacer(Modifier.height(8.dp)); Text("OTHER QUICK ACTIONS", style = MaterialTheme.typography.labelMedium, color = MaterialTheme.colorScheme.primary) }
            item { QuickActionCard("Delete backups of missing apps", "Delete backups of all missing/uninstalled apps", "From device", "From cloud") { message = "Delete backups of missing apps" } }
            item { QuickActionCard("Enable/Disable apps", "Change installed app enabled state") { message = "Enable/Disable apps" } }
        }
    }
}

@Composable
private fun QuickActionCard(title: String, subtitle: String, firstAction: String? = null, secondAction: String? = null, onClick: () -> Unit) {
    Card(Modifier.fillMaxWidth()) {
        Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
            Text(title, fontWeight = FontWeight.SemiBold)
            Text(subtitle, style = MaterialTheme.typography.bodySmall)
            if (firstAction != null && secondAction != null) {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Button(onClick = onClick, modifier = Modifier.weight(1f)) { Text(firstAction) }
                    Button(onClick = onClick, modifier = Modifier.weight(1f)) { Text(secondAction) }
                }
            } else {
                OutlinedButton(onClick = onClick, modifier = Modifier.fillMaxWidth()) { Text("OPEN") }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppLabelsScreen(onBack: () -> Unit) {
    val context = LocalContext.current
    val store = remember(context) { AppOrganizationStore(context) }
    val repository = remember(context) { InstalledAppRepository(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var labels by remember { mutableStateOf<Set<String>>(emptySet()) }
    var newLabel by remember { mutableStateOf("") }
    var editingLabel by remember { mutableStateOf<String?>(null) }
    var editText by remember { mutableStateOf("") }
    var confirmDelete by remember { mutableStateOf<String?>(null) }
    fun refresh() {
        apps = runCatching { repository.load() }.getOrDefault(emptyList())
        labels = store.allLabels(apps.map { it.packageName })
    }
    LaunchedEffect(repository) { refresh() }
    if (editingLabel != null) {
        AlertDialog(
            onDismissRequest = { editingLabel = null },
            title = { Text("Rename label") },
            text = { OutlinedTextField(value = editText, onValueChange = { editText = it }, singleLine = true) },
            confirmButton = {
                TextButton(onClick = {
                    val old = editingLabel
                    val replacement = editText.trim()
                    if (old != null && replacement.isNotBlank() && !replacement.equals(old, ignoreCase = true)) {
                        store.renameLabel(old, replacement, apps.map { it.packageName })
                        refresh()
                    }
                    editingLabel = null
                }) { Text("SAVE") }
            },
            dismissButton = { TextButton(onClick = { editingLabel = null }) { Text("CANCEL") } },
        )
    }
    if (confirmDelete != null) {
        AlertDialog(
            onDismissRequest = { confirmDelete = null },
            title = { Text("Delete label?") },
            text = { Text("The label will be removed from apps using it.") },
            confirmButton = {
                TextButton(onClick = {
                    confirmDelete?.let { store.deleteLabel(it, apps.map { app -> app.packageName }) }
                    confirmDelete = null
                    refresh()
                }) { Text("DELETE") }
            },
            dismissButton = { TextButton(onClick = { confirmDelete = null }) { Text("CANCEL") } },
        )
    }
    Scaffold(
        topBar = { TopAppBar(title = { Text("App Labels") }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }) }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text("Create and edit custom labels", style = MaterialTheme.typography.bodyLarge)
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp), verticalAlignment = Alignment.CenterVertically) {
                    OutlinedTextField(value = newLabel, onValueChange = { newLabel = it }, modifier = Modifier.weight(1f), singleLine = true, label = { Text("New label") })
                    Button(onClick = { val value = newLabel.trim(); if (value.isNotBlank()) { store.addLabel(value); newLabel = ""; refresh() } }) { Text("ADD") }
                }
            }
            if (labels.isEmpty()) item { Text("No labels yet.") }
            else items(labels.toList(), key = { it }) { label ->
                Card(Modifier.fillMaxWidth()) {
                    ListItem(
                        headlineContent = { Text(label) },
                        supportingContent = { Text("Apps using this label: " + apps.count { label in store.labels(it.packageName) }) },
                        leadingContent = { Icon(Icons.Default.Label, contentDescription = null) },
                        trailingContent = {
                            Row {
                                IconButton(onClick = { editingLabel = label; editText = label }) { Icon(Icons.Default.Edit, contentDescription = "Rename") }
                                IconButton(onClick = { confirmDelete = label }) { Icon(Icons.Default.Delete, contentDescription = "Delete") }
                            }
                        },
                    )
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppCustomConfigurationsScreen(onBack: () -> Unit) {
    var configs by remember { mutableStateOf(listOf<String>()) }
    var showCreate by remember { mutableStateOf(false) }
    var draft by remember { mutableStateOf("") }
    if (showCreate) {
        AlertDialog(
            onDismissRequest = { showCreate = false },
            title = { Text("Create custom configuration") },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text("Configurations can later bind backup/restore rules to app labels.")
                    OutlinedTextField(value = draft, onValueChange = { draft = it }, singleLine = true, label = { Text("Configuration name") })
                }
            },
            confirmButton = {
                TextButton(onClick = { val value = draft.trim(); if (value.isNotBlank()) configs = configs + value; draft = ""; showCreate = false }) { Text("CREATE") }
            },
            dismissButton = { TextButton(onClick = { showCreate = false }) { Text("CANCEL") } },
        )
    }
    Scaffold(
        topBar = { TopAppBar(title = { Text("Custom configurations") }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }) }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text("App-specific backup and restore rules", style = MaterialTheme.typography.bodyLarge)
                Text("UI is available now. Configuration persistence and execution are not wired to the backup engine yet.", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
            }
            item { Button(onClick = { showCreate = true }, modifier = Modifier.fillMaxWidth()) { Text("+ CREATE CONFIGURATION") } }
            if (configs.isEmpty()) item { Text("No configurations yet.") }
            else items(configs, key = { it }) { config ->
                Card(Modifier.fillMaxWidth()) {
                    ListItem(headlineContent = { Text(config) }, supportingContent = { Text("Label-based backup/restore rules • not executed yet") }, trailingContent = { Icon(Icons.Default.ChevronRight, contentDescription = null) })
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppBlacklistScreen(onBack: () -> Unit) {
    val context = LocalContext.current
    val store = remember(context) { AppOrganizationStore(context) }
    val repository = remember(context) { InstalledAppRepository(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var blacklisted by remember { mutableStateOf<Set<String>>(emptySet()) }
    var showPicker by remember { mutableStateOf(false) }
    var draft by remember { mutableStateOf<Set<String>>(emptySet()) }
    fun refresh() {
        apps = runCatching { repository.load() }.getOrDefault(emptyList())
        blacklisted = store.blacklistedPackages()
    }
    LaunchedEffect(repository) { refresh() }
    if (showPicker) {
        AlertDialog(
            onDismissRequest = { showPicker = false },
            title = { Text(draft.size.toString() + " / 100") },
            text = {
                LazyColumn(Modifier.heightIn(max = 480.dp)) {
                    items(apps, key = { it.packageName }) { app ->
                        Row(Modifier.fillMaxWidth().clickable {
                            draft = if (app.packageName in draft) draft - app.packageName else if (draft.size < 100) draft + app.packageName else draft
                        }, verticalAlignment = Alignment.CenterVertically) {
                            Checkbox(checked = app.packageName in draft, onCheckedChange = { checked ->
                                draft = if (checked && draft.size < 100) draft + app.packageName else draft - app.packageName
                            })
                            Column(Modifier.weight(1f)) {
                                Text(app.name)
                                Text(app.packageName, style = MaterialTheme.typography.bodySmall)
                            }
                        }
                    }
                }
            },
            confirmButton = { TextButton(onClick = { store.setBlacklistedPackages(draft); blacklisted = draft; showPicker = false }) { Text("ADD APPS") } },
            dismissButton = { TextButton(onClick = { showPicker = false }) { Text("CANCEL") } },
        )
    }
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Column { Text("Blacklist apps"); Text(blacklisted.size.toString() + " / 100", style = MaterialTheme.typography.bodySmall) } },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } },
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), horizontalAlignment = Alignment.CenterHorizontally) {
            item {
                Spacer(Modifier.height(120.dp))
                Icon(Icons.Default.Block, contentDescription = null, modifier = Modifier.size(72.dp), tint = MaterialTheme.colorScheme.primary)
                Spacer(Modifier.height(20.dp))
                Text("Hide apps or keep APK-only backup policy", style = MaterialTheme.typography.bodyLarge)
                Spacer(Modifier.height(16.dp))
                Button(onClick = { draft = blacklisted; showPicker = true }) { Text("+ Add apps") }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppBackupSettingsScreen(onOpen: (Screen) -> Unit, onBack: () -> Unit) {
    val context = LocalContext.current
    val prefs = remember(context) { context.getSharedPreferences("apps_settings", android.content.Context.MODE_PRIVATE) }
    var showSystemApps by remember { mutableStateOf(prefs.getBoolean("show_system_apps", true)) }
    var restorePermissions by remember { mutableStateOf(prefs.getBoolean("restore_runtime_permissions", true)) }
    var restoreSpecialData by remember { mutableStateOf(prefs.getBoolean("restore_special_data", true)) }
    var restoreSsaid by remember { mutableStateOf(prefs.getBoolean("restore_ssaid", false)) }
    var backupCache by remember { mutableStateOf(prefs.getBoolean("backup_cache", false)) }
    var allowDowngrade by remember { mutableStateOf(prefs.getBoolean("allow_downgrade", false)) }
    fun save(key: String, value: Boolean) { prefs.edit().putBoolean(key, value).apply() }
    Scaffold(
        topBar = { TopAppBar(title = { Text("App backups") }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }) }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(2.dp)) {
            item { Text("General", color = MaterialTheme.colorScheme.primary, style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(vertical = 10.dp)) }
            item { SettingsSwitchEntry("Show System Apps", "Include system applications in the Apps inventory", showSystemApps) { showSystemApps = it; save("show_system_apps", it) } }
            item { SettingsLinkEntry("Swipe actions", "Right: Launch • Left: Uninstall") { } }
            item { SettingsLinkEntry("Manage app labels", "Create and edit custom labels") { onOpen(Screen.APP_LABELS) } }
            item { SettingsLinkEntry("Custom configurations", "App-specific backup and restore rules") { onOpen(Screen.APP_CUSTOM_CONFIG) } }
            item { SettingsLinkEntry("Blacklist", "Hide apps or keep APK-only backup policy") { onOpen(Screen.APP_BLACKLIST) } }
            item { Text("Multiple backups", color = MaterialTheme.colorScheme.primary, style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(vertical = 10.dp)) }
            item { SettingsLinkEntry("Multiple backups strategy", "Single backup") { } }
            item { Text("Encryption & compression", color = MaterialTheme.colorScheme.primary, style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(vertical = 10.dp)) }
            item { SettingsLinkEntry("Encrypt app data backups", "Encryption execution follows the shared encryption strategy") { onOpen(Screen.ENCRYPTION_PASSWORD_STRATEGY) } }
            item { SettingsLinkEntry("Compression level", "Fastest") { } }
            item { Text("App data", color = MaterialTheme.colorScheme.primary, style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(vertical = 10.dp)) }
            item { SettingsSwitchEntry("Restore runtime permissions", "Restore backed up permission choices", restorePermissions) { restorePermissions = it; save("restore_runtime_permissions", it) } }
            item { SettingsSwitchEntry("Restore special data", "Enabled", restoreSpecialData) { restoreSpecialData = it; save("restore_special_data", it) } }
            item { SettingsSwitchEntry("Restore app SSAIDs", "Restore per-app Android IDs. Reboot required.", restoreSsaid) { restoreSsaid = it; save("restore_ssaid", it) } }
            item { SettingsLinkEntry("App data backup size limits", "No limit") { } }
            item { SettingsSwitchEntry("Backup app cache", "Include app cache in backups", backupCache) { backupCache = it; save("backup_cache", it) } }
            item { SettingsSwitchEntry("In-place app downgrades", "Use supported ROM or module support", allowDowngrade) { allowDowngrade = it; save("allow_downgrade", it) } }
        }
    }
}

@Composable
private fun SettingsSwitchEntry(title: String, subtitle: String, checked: Boolean, onCheckedChange: (Boolean) -> Unit) {
    Card(Modifier.fillMaxWidth()) {
        Row(Modifier.fillMaxWidth().padding(14.dp), verticalAlignment = Alignment.CenterVertically) {
            Column(Modifier.weight(1f)) { Text(title, fontWeight = FontWeight.SemiBold); Text(subtitle, style = MaterialTheme.typography.bodySmall) }
            Switch(checked = checked, onCheckedChange = onCheckedChange)
        }
    }
}

@Composable
private fun SettingsLinkEntry(title: String, subtitle: String, onClick: () -> Unit) {
    Card(Modifier.fillMaxWidth().clickable(onClick = onClick)) {
        Column(Modifier.fillMaxWidth().padding(14.dp)) { Text(title, fontWeight = FontWeight.SemiBold); Text(subtitle, style = MaterialTheme.typography.bodySmall) }
    }
}



@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppDetailScreen(app: AppItem?, onOpen: (Screen) -> Unit, onBack: () -> Unit) {
    val context = LocalContext.current
    val packageName = app?.packageName
    val repository = remember(context) { AppDetailsRepository(context) }
    var details by remember(packageName) { mutableStateOf<AppDetails?>(null) }
    var error by remember(packageName) { mutableStateOf<String?>(null) }
    var showActions by remember { mutableStateOf(false) }
    var selectedPart by remember { mutableStateOf<String?>(null) }
    var showBackupSelector by remember { mutableStateOf(false) }
    var backupPartNames by remember { mutableStateOf<Set<String>>(emptySet()) }
    var backupDestination by remember { mutableStateOf("Device") }
    var mockupAction by remember { mutableStateOf<String?>(null) }

    LaunchedEffect(repository, packageName) {
        details = null
        error = null
        if (packageName.isNullOrBlank()) {
            error = context.getString(R.string.app_detail_missing_package)
        } else {
            runCatching { withContext(Dispatchers.IO) { repository.load(packageName) } }
                .onSuccess { details = it }
                .onFailure { details = null; error = it.message ?: context.getString(R.string.app_detail_unavailable) }
        }
    }

    if (mockupAction != null) {
        AppMockupActionDialog(
            title = mockupAction!!,
            appName = details?.name ?: app?.name ?: context.getString(R.string.unknown_value),
            onDismiss = { mockupAction = null },
        )
    }

    if (showActions && details != null) {
        var batteryOptimizationExempt by remember(packageName) {
            mutableStateOf(
                runCatching {
                    val powerManager = context.getSystemService(android.os.PowerManager::class.java)
                    packageName != null && powerManager?.isIgnoringBatteryOptimizations(packageName) == true
                }.getOrDefault(false)
            )
        }
        ModalBottomSheet(onDismissRequest = { showActions = false }) {
            Column(
                Modifier.fillMaxWidth().padding(horizontal = 20.dp).padding(bottom = 28.dp),
                verticalArrangement = Arrangement.spacedBy(2.dp)
            ) {
                Row(
                    Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    AppActionPill(stringResource(R.string.disable), Icons.Default.VisibilityOff) {
                        showActions = false
                        mockupAction = context.getString(R.string.confirm_disable_app, details!!.name)
                    }
                    AppActionPill(stringResource(R.string.force_stop), Icons.Default.Stop) {
                        showActions = false
                        mockupAction = context.getString(R.string.confirm_force_stop_app, details!!.name)
                    }
                    AppActionPill(stringResource(R.string.clear_data), Icons.Default.DeleteSweep) {
                        showActions = false
                        mockupAction = context.getString(R.string.confirm_clear_data_app, details!!.name)
                    }
                    AppActionPill(stringResource(R.string.play_store), Icons.Default.ShoppingBag) {
                        showActions = false
                        mockupAction = context.getString(R.string.play_store)
                    }
                    AppActionPill(stringResource(R.string.android_app_info), Icons.Default.Info) {
                        showActions = false
                        mockupAction = context.getString(R.string.android_app_info)
                    }
                    AppActionPill(stringResource(R.string.share_apk), Icons.Default.Share) {
                        showActions = false
                        mockupAction = context.getString(R.string.share_apk)
                    }
                }
                HorizontalDivider(Modifier.padding(vertical = 8.dp))
                AppActionMenuItem(stringResource(R.string.favorites), Icons.Default.Star) {
                    showActions = false
                    onOpen(Screen.APP_MANAGEMENT)
                }
                AppActionMenuItem(stringResource(R.string.labels), Icons.Default.Label) {
                    showActions = false
                    onOpen(Screen.APP_MANAGEMENT)
                }
                AppActionMenuItem(stringResource(R.string.blacklist), Icons.Default.Block) {
                    showActions = false
                    onOpen(Screen.APP_BLACKLIST)
                }
                ListItem(
                    headlineContent = { Text(stringResource(R.string.battery_optimization)) },
                    supportingContent = {
                        Text(
                            if (batteryOptimizationExempt) {
                                stringResource(R.string.battery_optimization_status_exempt)
                            } else {
                                stringResource(R.string.battery_optimization_status_optimizing)
                            }
                        )
                    },
                    leadingContent = { Icon(Icons.Default.BatteryChargingFull, contentDescription = null) },
                    trailingContent = {
                        Switch(
                            checked = batteryOptimizationExempt,
                            onCheckedChange = {
                                batteryOptimizationExempt = it
                                showActions = false
                                mockupAction = context.getString(R.string.battery_optimization)
                            }
                        )
                    },
                    modifier = Modifier.fillMaxWidth()
                )
                HorizontalDivider()
                AppActionMenuItem(stringResource(R.string.add_to_home_screen), Icons.Default.Home) {
                    showActions = false
                    mockupAction = context.getString(R.string.add_to_home_screen)
                }
                AppActionMenuItem(stringResource(R.string.settings), Icons.Default.Settings) {
                    showActions = false
                    onOpen(Screen.APP_BACKUP_SETTINGS)
                }
            }
        }
    }

    if (selectedPart != null) {
        val part = selectedPart!!
        ModalBottomSheet(onDismissRequest = { selectedPart = null }) {
            Column(
                Modifier.fillMaxWidth().padding(horizontal = 20.dp).padding(bottom = 28.dp),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text(part, style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Text(
                    stringResource(R.string.app_part_actions),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                AppActionMenuItem(stringResource(R.string.backup_to_device), Icons.Default.PhoneAndroid) {
                    selectedPart = null
                    backupPartNames = setOf(part)
                    backupDestination = "Device"
                    showBackupSelector = true
                }
                AppActionMenuItem(stringResource(R.string.backup_to_cloud), Icons.Default.CloudUpload) {
                    selectedPart = null
                    backupPartNames = setOf(part)
                    backupDestination = "Cloud"
                    showBackupSelector = true
                }
                AppActionMenuItem(stringResource(R.string.backup_to_device_cloud), Icons.Default.CloudQueue) {
                    selectedPart = null
                    backupPartNames = setOf(part)
                    backupDestination = "Device + Cloud"
                    showBackupSelector = true
                }
                if (part == context.getString(R.string.apks_part)) {
                    AppActionMenuItem(stringResource(R.string.share_apk), Icons.Default.Share) {
                        selectedPart = null
                        mockupAction = context.getString(R.string.share_apk)
                    }
                }
                AppActionMenuItem(stringResource(R.string.delete), Icons.Default.Delete) {
                    selectedPart = null
                    mockupAction = context.getString(R.string.delete)
                }
            }
        }
    }

    if (showBackupSelector && details != null) {
        val availableParts = buildList {
            add(context.getString(R.string.apks_part))
            add(context.getString(R.string.data_part))
            if ((details!!.externalDataSizeBytes ?: 0L) > 0L) {
                add(context.getString(R.string.external_data_part))
            }
            if ((details!!.mediaSizeBytes ?: 0L) > 0L) {
                add(context.getString(R.string.media_part))
            }
        }
        ModalBottomSheet(
            onDismissRequest = { showBackupSelector = false },
            dragHandle = { BottomSheetDefaults.DragHandle() }
        ) {
            Column(
                Modifier.fillMaxWidth().padding(horizontal = 20.dp).padding(bottom = 24.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Row(
                    Modifier.fillMaxWidth(),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        stringResource(R.string.user_app_parts),
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.weight(1f)
                    )
                    IconButton(onClick = { backupPartNames = availableParts.toSet() }) {
                        Icon(Icons.Default.CheckCircle, contentDescription = stringResource(R.string.select_all))
                    }
                }
                availableParts.chunked(2).forEach { rowParts ->
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        rowParts.forEach { part ->
                            AppStorageChip(
                                title = part,
                                subtitle = when (part) {
                                    context.getString(R.string.apks_part) -> formatAppSize(details!!.apkSizeBytes)
                                    context.getString(R.string.data_part) -> formatAppSize(details!!.dataSizeBytes ?: 0L)
                                    context.getString(R.string.external_data_part) -> formatAppSize(details!!.externalDataSizeBytes ?: 0L)
                                    else -> formatAppSize(details!!.mediaSizeBytes ?: 0L)
                                },
                                icon = when (part) {
                                    context.getString(R.string.apks_part) -> Icons.Default.Android
                                    context.getString(R.string.data_part) -> Icons.Default.Storage
                                    context.getString(R.string.external_data_part) -> Icons.Default.Folder
                                    else -> Icons.Default.PhotoLibrary
                                },
                                modifier = Modifier.weight(1f),
                                selected = part in backupPartNames
                            ) {
                                backupPartNames = if (part in backupPartNames) {
                                    backupPartNames - part
                                } else {
                                    backupPartNames + part
                                }
                            }
                        }
                        if (rowParts.size == 1) Spacer(Modifier.weight(1f))
                    }
                }
                Text(
                    stringResource(R.string.select_backup_locations),
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold
                )
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    FilterChip(
                        selected = backupDestination == "Device",
                        onClick = { backupDestination = "Device" },
                        label = { Text(stringResource(R.string.device)) },
                        modifier = Modifier.weight(1f)
                    )
                    FilterChip(
                        selected = backupDestination == "Cloud",
                        onClick = { backupDestination = "Cloud" },
                        label = { Text(stringResource(R.string.cloud)) },
                        modifier = Modifier.weight(1f)
                    )
                }
                Button(
                    enabled = backupPartNames.isNotEmpty(),
                    onClick = {
                        showBackupSelector = false
                        mockupAction = context.getString(R.string.run_backup)
                    },
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(28.dp),
                    contentPadding = PaddingValues(vertical = 16.dp)
                ) {
                    Icon(Icons.Default.Add, contentDescription = null)
                    Spacer(Modifier.width(8.dp))
                    Text(stringResource(R.string.backup).uppercase())
                }
            }
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(details?.name ?: app?.name ?: stringResource(R.string.app_details)) },
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(Icons.Default.ArrowBack, stringResource(R.string.back))
                    }
                },
                actions = {
                    IconButton(enabled = details != null, onClick = { showActions = true }) {
                        Icon(Icons.Default.MoreVert, contentDescription = stringResource(R.string.app_actions))
                    }
                }
            )
        }
    ) { padding ->
        when {
            error != null -> Column(
                Modifier.fillMaxSize().padding(padding).padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text(stringResource(R.string.app_detail_unavailable), fontWeight = FontWeight.Bold)
                Text(error!!, color = MaterialTheme.colorScheme.error)
            }
            details == null -> Box(
                Modifier.fillMaxSize().padding(padding),
                contentAlignment = Alignment.Center
            ) { CircularProgressIndicator() }
            else -> {
                val item = details!!
                val cacheBytes = item.cacheSizeBytes ?: 0L
                val appSizeBytes = item.apkSizeBytes +
                    (item.dataSizeBytes ?: 0L) +
                    (item.externalDataSizeBytes ?: 0L) +
                    (item.mediaSizeBytes ?: 0L)
                val parts = buildList {
                    add(
                        Triple(
                            context.getString(R.string.apks_part),
                            formatAppSize(item.apkSizeBytes),
                            Icons.Default.Android
                        )
                    )
                    add(
                        Triple(
                            context.getString(R.string.data_part),
                            formatAppSize(item.dataSizeBytes ?: 0L),
                            Icons.Default.Storage
                        )
                    )
                    if ((item.externalDataSizeBytes ?: 0L) > 0L) {
                        add(
                            Triple(
                                context.getString(R.string.external_data_part),
                                formatAppSize(item.externalDataSizeBytes!!),
                                Icons.Default.Folder
                            )
                        )
                    }
                    if ((item.mediaSizeBytes ?: 0L) > 0L) {
                        add(
                            Triple(
                                context.getString(R.string.media_part),
                                formatAppSize(item.mediaSizeBytes!!),
                                Icons.Default.PhotoLibrary
                            )
                        )
                    }
                }

                LazyColumn(
                    Modifier.fillMaxSize().padding(padding).padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                    contentPadding = PaddingValues(bottom = 16.dp)
                ) {
                    item {
                        Card(Modifier.fillMaxWidth()) {
                            Column(Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                                Row(verticalAlignment = Alignment.Top) {
                                    AndroidView(
                                        factory = { android.widget.ImageView(it) },
                                        update = { imageView ->
                                            imageView.setImageDrawable(app?.icon)
                                            imageView.scaleType = android.widget.ImageView.ScaleType.CENTER_INSIDE
                                        },
                                        modifier = Modifier.size(48.dp)
                                    )
                                    Spacer(Modifier.width(12.dp))
                                    Column(Modifier.weight(1f)) {
                                        Text(
                                            item.packageName,
                                            style = MaterialTheme.typography.bodySmall,
                                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                                            maxLines = 2,
                                            overflow = TextOverflow.Ellipsis
                                        )
                                        Text(
                                            item.name,
                                            style = MaterialTheme.typography.titleLarge,
                                            fontWeight = FontWeight.Bold,
                                            maxLines = 2,
                                            overflow = TextOverflow.Ellipsis
                                        )
                                        Text(
                                            stringResource(
                                                R.string.app_version_value,
                                                item.versionName ?: stringResource(R.string.unknown_value),
                                                item.versionCode?.toString() ?: stringResource(R.string.unknown_value)
                                            ),
                                            style = MaterialTheme.typography.bodyMedium,
                                            color = MaterialTheme.colorScheme.onSurfaceVariant
                                        )
                                    }
                                }
                                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                                    if (item.canLaunch) {
                                        OutlinedButton(
                                            onClick = { mockupAction = context.getString(R.string.launch) },
                                            modifier = Modifier.weight(1f)
                                        ) {
                                            Icon(Icons.Default.PlayArrow, contentDescription = null)
                                            Spacer(Modifier.width(6.dp))
                                            Text(stringResource(R.string.launch))
                                        }
                                    }
                                    OutlinedButton(
                                        onClick = { mockupAction = context.getString(R.string.uninstall) },
                                        modifier = Modifier.weight(1f)
                                    ) {
                                        Icon(Icons.Default.DeleteOutline, contentDescription = null)
                                        Spacer(Modifier.width(6.dp))
                                        Text(stringResource(R.string.uninstall))
                                    }
                                }
                            }
                        }
                    }

                    item {
                        Card(Modifier.fillMaxWidth()) {
                            Column(Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                                Text(
                                    stringResource(
                                        R.string.last_updated_value,
                                        formatRelativeAppTime(context, item.lastUpdateTime),
                                        formatAppSize(appSizeBytes),
                                        formatAppSize(cacheBytes)
                                    ),
                                    style = MaterialTheme.typography.bodyMedium,
                                    fontWeight = FontWeight.SemiBold
                                )
                                if (parts.isNotEmpty()) {
                                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                                        parts.chunked(2).forEach { rowParts ->
                                            Row(
                                                Modifier.fillMaxWidth(),
                                                horizontalArrangement = Arrangement.spacedBy(8.dp)
                                            ) {
                                                rowParts.forEach { (title, subtitle, icon) ->
                                                    AppStorageChip(
                                                        title = title,
                                                        subtitle = subtitle,
                                                        icon = icon,
                                                        modifier = Modifier.weight(1f),
                                                    ) {
                                                        selectedPart = title
                                                    }
                                                }
                                                if (rowParts.size == 1) {
                                                    Spacer(Modifier.weight(1f))
                                                }
                                            }
                                        }
                                    }
                                }
                                Button(
                                    onClick = {
                                        backupPartNames = parts.map { it.first }.toSet()
                                        showBackupSelector = true
                                    },
                                    modifier = Modifier.align(Alignment.End),
                                    shape = RoundedCornerShape(24.dp),
                                    contentPadding = PaddingValues(horizontal = 24.dp, vertical = 12.dp)
                                ) {
                                    Icon(Icons.Default.Add, contentDescription = null)
                                    Spacer(Modifier.width(8.dp))
                                    Text(stringResource(R.string.backup))
                                }
                            }
                        }
                    }

                    item {
                        AppBackupStateCard(
                            title = stringResource(R.string.device),
                            status = stringResource(R.string.device_no_verified_backup),
                            onOpenBackups = { onOpen(Screen.APP_BACKUPS) }
                        )
                    }
                    item {
                        AppBackupStateCard(
                            title = stringResource(R.string.cloud),
                            status = stringResource(R.string.cloud_not_synced),
                            onOpenBackups = { onOpen(Screen.APP_BACKUPS) }
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun AppStorageChip(
    title: String,
    subtitle: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    modifier: Modifier = Modifier,
    selected: Boolean = false,
    onClick: () -> Unit,
) {
    Surface(
        modifier
            .height(64.dp)
            .clickable(onClick = onClick),
        shape = RoundedCornerShape(24.dp),
        color = if (selected) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surfaceVariant,
        border = androidx.compose.foundation.BorderStroke(
            1.dp,
            if (selected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.outline.copy(alpha = 0.55f)
        ),
    ) {
        Row(
            Modifier.fillMaxSize().padding(horizontal = 14.dp, vertical = 8.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                if (selected) Icons.Default.Check else icon,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.onPrimaryContainer,
                modifier = Modifier.size(24.dp)
            )
            Spacer(Modifier.width(10.dp))
            Column(
                Modifier.weight(1f),
                verticalArrangement = Arrangement.Center
            ) {
                Text(
                    title,
                    color = MaterialTheme.colorScheme.onPrimaryContainer,
                    fontWeight = FontWeight.SemiBold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                Text(
                    subtitle,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.72f),
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

@Composable
private fun AppBackupStateCard(
    title: String,
    status: String,
    onOpenBackups: () -> Unit,
) {
    Card(Modifier.fillMaxWidth()) {
        Column(Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
            Text(title, style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
            Text(status)
            TextButton(onClick = onOpenBackups) {
                Text(stringResource(R.string.view_backups))
            }
        }
    }
}

@Composable
private fun AppActionPill(
    title: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    onClick: () -> Unit,
) {
    Surface(
        modifier = Modifier.height(56.dp).clickable(onClick = onClick),
        shape = RoundedCornerShape(28.dp),
        color = MaterialTheme.colorScheme.surfaceVariant,
    ) {
        Row(
            Modifier.padding(horizontal = 16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(icon, contentDescription = null, modifier = Modifier.size(22.dp))
            Spacer(Modifier.width(8.dp))
            Text(title, fontWeight = FontWeight.SemiBold)
        }
    }
}

@Composable
private fun AppActionMenuItem(
    title: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    onClick: () -> Unit,
) {
    ListItem(
        headlineContent = { Text(title) },
        leadingContent = { Icon(icon, contentDescription = null) },
        modifier = Modifier.fillMaxWidth().clickable(onClick = onClick)
    )
}

@Composable
private fun AppMockupActionDialog(title: String, appName: String, onDismiss: () -> Unit) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(title) },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Text(appName, fontWeight = FontWeight.Bold)
                Text("This action is part of the BaRe Apps flow.")
                Text("Runtime behavior is pending; this UI is intentionally available as a mockup so the workflow can be reviewed.")
                Text("Capability execution will be connected after its Android capability and verification path are established.")
            }
        },
        confirmButton = { TextButton(onClick = onDismiss) { Text(stringResource(R.string.close)) } }
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppBackupScreen(app: AppItem?, onBack: () -> Unit, onOpen: (Screen) -> Unit) {
    val context = LocalContext.current
    val parts = listOf(
        context.getString(R.string.apks_part),
        context.getString(R.string.data_part),
        context.getString(R.string.external_data_part),
        context.getString(R.string.media_part)
    )
    var selectedParts by remember { mutableStateOf(parts.toSet()) }
    var destination by remember { mutableStateOf("Device") }
    var showMockup by remember { mutableStateOf(false) }

    if (showMockup) {
        AppMockupActionDialog(
            title = context.getString(R.string.run_backup),
            appName = app?.name ?: context.getString(R.string.unknown_value),
            onDismiss = { showMockup = false }
        )
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.backup_app_title, app?.name ?: stringResource(R.string.unknown_value))) },
                navigationIcon = {
                    IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) }
                }
            )
        }
    ) { padding ->
        LazyColumn(
            Modifier.fillMaxSize().padding(padding).padding(horizontal = 16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
            contentPadding = PaddingValues(vertical = 16.dp)
        ) {
            item {
                Text(stringResource(R.string.user_app_parts), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Text(stringResource(R.string.select_parts_to_backup), style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
            }
            items(parts) { part ->
                Card(Modifier.fillMaxWidth()) {
                    Row(
                        Modifier.fillMaxWidth().clickable {
                            selectedParts = if (selectedParts.contains(part)) selectedParts - part else selectedParts + part
                        }.padding(horizontal = 8.dp, vertical = 2.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Checkbox(
                            checked = selectedParts.contains(part),
                            onCheckedChange = { checked ->
                                selectedParts = if (checked) selectedParts + part else selectedParts - part
                            }
                        )
                        Text(part, modifier = Modifier.weight(1f), fontWeight = FontWeight.SemiBold)
                    }
                }
            }
            item {
                Text(stringResource(R.string.select_backup_locations), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    FilterChip(
                        selected = destination == "Device",
                        onClick = { destination = "Device" },
                        label = { Text(stringResource(R.string.device)) },
                        modifier = Modifier.weight(1f)
                    )
                    FilterChip(
                        selected = destination == "Cloud",
                        onClick = { destination = "Cloud" },
                        label = { Text(stringResource(R.string.cloud)) },
                        modifier = Modifier.weight(1f)
                    )
                    FilterChip(
                        selected = destination == "Device + Cloud",
                        onClick = { destination = "Device + Cloud" },
                        label = { Text(stringResource(R.string.device_cloud)) },
                        modifier = Modifier.weight(1f)
                    )
                }
            }
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text(stringResource(R.string.backup_summary), fontWeight = FontWeight.Bold)
                        Text(stringResource(R.string.selected_parts_count, selectedParts.size))
                        Text(stringResource(R.string.selected_backup_location, destination))
                        Text(stringResource(R.string.backup_execution_pending), style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                    }
                }
            }
            item {
                Button(
                    enabled = selectedParts.isNotEmpty(),
                    onClick = { showMockup = true },
                    modifier = Modifier.fillMaxWidth()
                ) { Text(stringResource(R.string.backup).uppercase()) }
            }
            item {
                OutlinedButton(
                    onClick = { showMockup = true },
                    modifier = Modifier.fillMaxWidth(),
                    enabled = selectedParts.contains(context.getString(R.string.apks_part))
                ) { Text(stringResource(R.string.share_apk)) }
            }
            item {
                ListEntry(stringResource(R.string.backup_history), stringResource(R.string.view_backup_versions), Icons.Default.History) {
                    onOpen(Screen.APP_BACKUPS)
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppBackupsScreen(app: AppItem?, onBack: () -> Unit) {
    var showMockup by remember { mutableStateOf(false) }
    if (showMockup) AppMockupActionDialog("Backup action", app?.name ?: "App") { showMockup = false }
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Backups • " + (app?.name ?: "App")) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text("Device backups", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Text("This surface is ready for real backup inventory; no verified backup is claimed yet.")
            }
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text("No verified backup version", fontWeight = FontWeight.Bold)
                        Text("Protected • notes • version comparison • size")
                        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            OutlinedButton(onClick = { showMockup = true }) { Text("Restore") }
                            OutlinedButton(onClick = { showMockup = true }) { Text("Delete") }
                        }
                    }
                }
            }
            item {
                Text("Cloud backups", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Text("Cloud inventory and sync state are represented as a downstream workflow.")
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppManagementScreen(app: AppItem?, onBack: () -> Unit) {
    val context = LocalContext.current
    val organizationStore = remember(context) { AppOrganizationStore(context) }
    var showMockup by remember { mutableStateOf<String?>(null) }
    var favorite by remember(app?.packageName) { mutableStateOf(app?.packageName?.let(organizationStore::isFavorite) == true) }
    var labelsText by remember(app?.packageName) { mutableStateOf(app?.packageName?.let { organizationStore.labels(it).joinToString(", ") }.orEmpty()) }

    if (showMockup != null) AppMockupActionDialog(showMockup!!, app?.name ?: "App") { showMockup = null }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Management • " + (app?.name ?: "App")) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text("App management", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                Text("Organization state is stored locally on this device.")
            }
            item {
                ListEntry(if (app?.isEnabled == true) "Disable app" else "Enable app", "Change installed application enabled state", Icons.Default.PowerSettingsNew) { showMockup = if (app?.isEnabled == true) "Disable app" else "Enable app" }
                ListEntry("Force stop", "Stop the running application", Icons.Default.Stop) { showMockup = "Force stop" }
                ListEntry("Uninstall", "Open uninstall workflow with confirmation", Icons.Default.Delete) { showMockup = "Uninstall" }
            }
            item {
                Text("Favorites and labels", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                Row(Modifier.fillMaxWidth().clickable { favorite = !favorite }.padding(vertical = 8.dp), verticalAlignment = Alignment.CenterVertically) {
                    Icon(Icons.Default.Star, contentDescription = null)
                    Spacer(Modifier.width(12.dp))
                    Text(if (favorite) "Favorite" else "Not favorite", Modifier.weight(1f))
                    Switch(checked = favorite, onCheckedChange = { favorite = it })
                }
                OutlinedTextField(
                    value = labelsText,
                    onValueChange = { labelsText = it },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    label = { Text("Labels") },
                    placeholder = { Text("e.g. Work, Media") },
                )
                Button(
                    onClick = {
                        app?.packageName?.let { packageName ->
                            organizationStore.setFavorite(packageName, favorite)
                            organizationStore.setLabels(packageName, labelsText.split(",").toSet())
                        }
                    },
                    enabled = app?.packageName != null,
                    modifier = Modifier.fillMaxWidth(),
                ) {
                    Text("Save organization")
                }
            }
            item { ListEntry("Protected backup", "Protect retained backup versions from deletion", Icons.Default.Lock) { showMockup = "Protected backup" } }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppDiagnosticsScreen(app: AppItem?, onBack: () -> Unit) {
    var showMockup by remember { mutableStateOf<String?>(null) }
    if (showMockup != null) AppMockupActionDialog(showMockup!!, app?.name ?: "App") { showMockup = null }
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Diagnostics • " + (app?.name ?: "App")) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item { Text("Capability diagnostics", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold) }
            item { ListEntry("App visibility", "Explain why a package may be unavailable", Icons.Default.Visibility) { showMockup = "App visibility diagnostics" } }
            item { ListEntry("Execution capability", "Show available provider/access prerequisites", Icons.Default.Security) { showMockup = "Execution capability" } }
            item { ListEntry("APK / APKS import", "Validate an APK artifact and expose install flow", Icons.Default.FileOpen) { showMockup = "APK / APKS import and install" } }
            item { ListEntry("Storage / data preconditions", "Expose what can and cannot be measured", Icons.Default.Storage) { showMockup = "Storage preconditions" } }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppRestoreScreen(app: AppItem?, onBack: () -> Unit) {
    var showMockup by remember { mutableStateOf<String?>(null) }
    if (showMockup != null) AppMockupActionDialog(showMockup!!, app?.name ?: "App") { showMockup = null }
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Restore • " + (app?.name ?: "App")) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item { Text("Restore variants", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold) }
            item { ListEntry("Missing app", "Install/prepare the app before restoring its data", Icons.Default.Apps) { showMockup = "Missing-app restore" } }
            item { ListEntry("Newer backup version", "Resolve installed-versus-backup version mismatch", Icons.Default.Update) { showMockup = "Newer-version restore" } }
            item { ListEntry("Special data", "Expose optional special-data restore choices", Icons.Default.Extension) { showMockup = "Special-data restore" } }
            item { ListEntry("SSAAD", "Explicit optional SSAID restore choice with warning", Icons.Default.Fingerprint) { showMockup = "SSAAD restore" } }
            item { ListEntry("Restore selected backup", "Choose a backup version and continue through preconditions", Icons.Default.Restore) { showMockup = "Restore selected backup" } }
        }
    }
}

private fun formatRelativeAppTime(context: Context, timestamp: Long): String {
    if (timestamp <= 0L || timestamp > System.currentTimeMillis()) {
        return context.getString(R.string.relative_time_unavailable)
    }
    val delta = System.currentTimeMillis() - timestamp
    val minute = 60_000L
    val hour = 60L * minute
    val day = 24L * hour
    val days = delta / day
    return when {
        delta < minute -> context.getString(R.string.relative_time_just_now)
        delta < hour -> {
            val value = delta / minute
            context.getString(if (value == 1L) R.string.relative_time_minute else R.string.relative_time_minutes, value)
        }
        delta < day -> {
            val value = delta / hour
            context.getString(if (value == 1L) R.string.relative_time_hour else R.string.relative_time_hours, value)
        }
        days < 7 -> context.getString(if (days == 1L) R.string.relative_time_day else R.string.relative_time_days, days)
        days < 30 -> {
            val value = days / 7L
            context.getString(if (value == 1L) R.string.relative_time_week else R.string.relative_time_weeks, value)
        }
        days < 365 -> {
            val value = days / 30L
            context.getString(if (value == 1L) R.string.relative_time_month else R.string.relative_time_months, value)
        }
        else -> {
            val value = days / 365L
            context.getString(if (value == 1L) R.string.relative_time_year else R.string.relative_time_years, value)
        }
    }
}

private fun formatAppSize(bytes: Long): String {
    if (bytes <= 0L) return "0 B"
    val units = arrayOf("B", "KB", "MB", "GB")
    var value = bytes.toDouble()
    var index = 0
    while (value >= 1024 && index < units.lastIndex) {
        value /= 1024
        index++
    }
    return if (index == 0) "${bytes} ${units[index]}" else "%.1f %s".format(value, units[index])
}


@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppConfigScreen(app: AppItem?, onBack: () -> Unit) {
    var compression by remember { mutableStateOf(false) }
    var encryption by remember { mutableStateOf(false) }
    var cache by remember { mutableStateOf(false) }
    var protection by remember { mutableStateOf(false) }
    var notes by remember { mutableStateOf(false) }
    var schedule by remember { mutableStateOf(false) }
    var strategy by remember { mutableStateOf("Single") }
    var showMockup by remember { mutableStateOf<String?>(null) }

    if (showMockup != null) AppMockupActionDialog(showMockup!!, app?.name ?: "App") { showMockup = null }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Configuration • " + (app?.name ?: "App")) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            item {
                Text("App configuration", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                Text("The configuration flow is present now. Persistence and execution are downstream behavior.")
            }
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(14.dp)) {
                        Text("Backup parts", fontWeight = FontWeight.Bold)
                        listOf("APK", "Split APK", "App data", "External data", "Expansion / OBB", "Media", "Cache", "Shared libraries").forEach { Text("✓ " + it) }
                    }
                }
            }
            item {
                Text("Backup strategy", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    listOf("Single", "Dated", "Conditional").forEach {
                        FilterChip(selected = strategy == it, onClick = { strategy = it }, label = { Text(it) }, modifier = Modifier.weight(1f))
                    }
                }
            }
            item {
                AppSwitchRow("Compression", compression) { compression = it }
                AppSwitchRow("Encryption", encryption) { encryption = it }
                AppSwitchRow("Cache", cache) { cache = it }
                AppSwitchRow("Protected backup", protection) { protection = it }
                AppSwitchRow("Notes", notes) { notes = it }
                AppSwitchRow("Schedule binding", schedule) { schedule = it }
            }
            item {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Button(onClick = { showMockup = "Run configuration now" }, modifier = Modifier.weight(1f)) { Text("Run now") }
                    OutlinedButton(onClick = { showMockup = "Schedule configuration" }, modifier = Modifier.weight(1f)) { Text("Schedule") }
                }
            }
            item {
                Text("Limits and retention", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                ListEntry("Backup limits", "Local/cloud size limits and warnings", Icons.Default.Tune) { showMockup = "Backup limits" }
                ListEntry("Multiple backups", "Single / dated / conditional retention", Icons.Default.Sync) { showMockup = "Multiple-backup strategy" }
            }
        }
    }
}

@Composable
private fun AppSwitchRow(title: String, checked: Boolean, onCheckedChange: (Boolean) -> Unit) {
    Row(
        Modifier.fillMaxWidth().clickable { onCheckedChange(!checked) }.padding(vertical = 6.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(title, Modifier.weight(1f))
        Switch(checked = checked, onCheckedChange = onCheckedChange)
    }
}