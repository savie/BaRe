package com.bare.feature.apps

import androidx.activity.compose.BackHandler
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
import com.bare.R
import com.bare.app.AppItem
import com.bare.app.Screen
import com.bare.app.demoApps
import com.bare.ui.components.CheckRow
import com.bare.ui.components.ListEntry

private enum class AppScope { ALL, USER, SYSTEM }

private data class AppsCapability(
    val id: String,
    val title: String,
    val group: String,
    val description: String,
    val status: String = "Mockup",
)

private val appsCapabilities = listOf(
    AppsCapability("01", "Local apps / Cloud synced apps", "Browse & context", "Switch the Apps repository context without changing the primary Apps tab."),
    AppsCapability("02", "Search", "Browse & context", "Find apps by display name or package name and open the matching app detail.", status = "Functional"),
    AppsCapability("03", "Sort", "Browse & context", "Name and direction control for the installed-app inventory.", status = "Functional"),
    AppsCapability("04", "User/System + system-app filtering", "Browse & context", "App type filters with room for system-app subfilters."),
    AppsCapability("05", "Favorites", "Browse & context", "Favorite state and favorite-only filtering."),
    AppsCapability("06", "Labels", "Browse & context", "Custom labels attached to apps and usable as filters."),
    AppsCapability("07", "On-device backup status", "State & inventory", "Show whether a local backup exists, its state, date, and size."),
    AppsCapability("08", "Cloud sync status", "State & inventory", "Show cloud presence and synchronization state."),
    AppsCapability("09", "Install + enabled status", "State & inventory", "Installed/removed and enabled/disabled state."),
    AppsCapability("10", "Multiple backups filter", "State & inventory", "Find apps with multiple retained backup versions."),
    AppsCapability("11", "Protected backups filter", "State & inventory", "Find protected/retained backups."),
    AppsCapability("12", "Backup notes filter", "State & inventory", "Find backups carrying notes or annotations."),
    AppsCapability("13", "Older/newer APK relationship filter", "State & inventory", "Compare installed APK version against backup APK versions."),
    AppsCapability("14", "Google Play source filter", "State & inventory", "Filter by Google Play installation source."),
    AppsCapability("15", "App detail", "App detail", "Central app workspace for metadata, state, parts, actions, management, and diagnostics."),
    AppsCapability("16", "Device/cloud backup inventory", "App detail", "Show available local and cloud backup versions before restore/delete."),
    AppsCapability("17", "Backup parts", "App detail", "APK, split APK, app data, external data, OBB, media, cache, and shared libraries."),
    AppsCapability("18", "APK", "Backup parts", "Base APK backup/restore part."),
    AppsCapability("19", "Split APK", "Backup parts", "Split APK set backup/restore part."),
    AppsCapability("20", "App data", "Backup parts", "Application private data backup/restore part."),
    AppsCapability("21", "External data", "Backup parts", "External app data backup/restore part."),
    AppsCapability("22", "Expansion / OBB", "Backup parts", "Expansion/OBB backup/restore part."),
    AppsCapability("23", "Media", "Backup parts", "App-related media backup/restore part."),
    AppsCapability("24", "Cache", "Backup parts", "Optional cache backup with size/warning state."),
    AppsCapability("25", "Shared libraries", "Backup parts", "Reference-aware shared-library dependency/state."),
    AppsCapability("26", "Backup", "Operations", "Create an app backup using selected parts and configuration."),
    AppsCapability("27", "Restore", "Operations", "Restore an app from a selected backup with precondition states."),
    AppsCapability("28", "Delete backup", "Operations", "Delete selected backup versions with confirmation/protection checks."),
    AppsCapability("29", "Multiple-backup strategy", "Operations", "Single/dated/conditional retention strategy."),
    AppsCapability("30", "Backup limits", "Operations", "Local/cloud app-data size limits and warnings."),
    AppsCapability("31", "App-data encryption", "Operations", "Encryption state and policy for app-data backup."),
    AppsCapability("32", "Batch actions", "Management", "Select multiple apps, apply action, and show per-item plus aggregate results."),
    AppsCapability("33", "Blacklist", "Management", "Hide/exclude apps or apply APK-only policy."),
    AppsCapability("34", "Custom configurations", "Management", "Per-app backup/restore configuration editor."),
    AppsCapability("35", "Run configuration", "Management", "Run a saved configuration immediately."),
    AppsCapability("36", "Configuration → schedule", "Management", "Bind a saved app configuration to a schedule."),
    AppsCapability("37", "Quick actions", "Management", "Reusable app actions surfaced from the Apps workspace."),
    AppsCapability("38", "Per-app actions / swipe actions", "Management", "Contextual actions for a specific app item."),
    AppsCapability("39", "App visibility diagnostics", "Diagnostics & import", "Explain package visibility and why an app may be unavailable."),
    AppsCapability("40", "APK / APKS import and install", "Diagnostics & import", "Validate/import APK artifacts and expose install capability state."),
    AppsCapability("41", "Missing-app restore", "Diagnostics & import", "Restore an app when it is absent from the current device."),
    AppsCapability("42", "Newer-version restore", "Diagnostics & import", "Handle backup APK newer than the currently installed version."),
    AppsCapability("43", "Special-data + SSAID restore", "Diagnostics & import", "Explicit special-data and optional SSAID restore choices with warnings."),
)

@Composable
fun AppsScreen(onOpen: (Screen) -> Unit, onOpenApp: (AppItem) -> Unit, searchOpen: Boolean, onSearchOpenChange: (Boolean) -> Unit) {
    val context = LocalContext.current
    val repository = remember(context) { InstalledAppRepository(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var error by remember { mutableStateOf<String?>(null) }
    var selectedMenuPackage by remember { mutableStateOf<String?>(null) }
    var scope by remember { mutableStateOf(AppScope.ALL) }
    var descending by remember { mutableStateOf(false) }
    var showFilters by remember { mutableStateOf(false) }
    var showContext by remember { mutableStateOf(false) }
    var searchQuery by remember { mutableStateOf("") }

    BackHandler(enabled = searchOpen) { onSearchOpenChange(false) }

    LaunchedEffect(repository) {
        runCatching { repository.load() }
            .onSuccess { apps = it; error = null }
            .onFailure { error = it.message ?: "Unable to discover installed apps" }
    }

    val visibleApps = remember(apps, scope, descending, searchQuery) {
        val query = searchQuery.trim().lowercase()
        val filtered = apps.filter { app ->
            val matchesScope = when (scope) {
                AppScope.ALL -> true
                AppScope.USER -> app.category == "User app"
                AppScope.SYSTEM -> app.category == "System app"
            }
            val matchesQuery = query.isBlank() ||
                app.name.lowercase().contains(query) ||
                app.packageName.lowercase().contains(query)
            matchesScope && matchesQuery
        }
        if (descending) filtered.sortedByDescending { it.name.lowercase() } else filtered.sortedBy { it.name.lowercase() }
    }

    if (showFilters) {
        AlertDialog(
            onDismissRequest = { showFilters = false },
            title = { Text("Apps filters") },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text("Mockup filter model", fontWeight = FontWeight.Bold)
                    Text("Favorites • Labels • Backup status • Cloud sync • Install/enabled status")
                    Text("Multiple backups • Protected • Notes • Older/newer APKs")
                    Text("Installed from Google Play • Not installed from Google Play")
                    Text("System-app subfilters can be added without changing this surface.")
                }
            },
            confirmButton = {
                TextButton(onClick = { showFilters = false }) { Text("Close") }
            }
        )
    }

    if (showContext) {
        AlertDialog(
            onDismissRequest = { showContext = false },
            title = { Text("Apps context") },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text("Local apps", fontWeight = FontWeight.Bold)
                    Text("Installed inventory and on-device backup state.")
                    Text("Cloud synced apps", fontWeight = FontWeight.Bold)
                    Text("Cloud inventory and synchronization state.")
                    Text("Context switching is a mockup until cloud repository capability exists.")
                }
            },
            confirmButton = {
                TextButton(onClick = { showContext = false }) { Text("Close") }
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
                        placeholder = { Text("Search apps or package name", maxLines = 1) },
                        leadingIcon = { Icon(Icons.Default.Search, contentDescription = null) },
                        trailingIcon = {
                            if (searchQuery.isNotBlank()) {
                                IconButton(onClick = { searchQuery = "" }) {
                                    Icon(Icons.Default.Clear, contentDescription = "Clear search")
                                }
                            }
                        }
                    )
                    Spacer(Modifier.width(8.dp))
                    TextButton(onClick = {
                        searchQuery = ""
                        onSearchOpenChange(false)
                    }) { Text("Close") }
                }
            }
        } else {
            item {
                Text(stringResource(R.string.apps_summary))
            }
        }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                FilterChip(
                    selected = scope == AppScope.ALL,
                    onClick = { scope = AppScope.ALL },
                    label = { Text(stringResource(R.string.all_apps)) },
                    modifier = Modifier.weight(1.3f),
                    contentPadding = PaddingValues(vertical = 10.dp)
                )
                FilterChip(
                    selected = scope == AppScope.USER,
                    onClick = { scope = AppScope.USER },
                    label = { Text(stringResource(R.string.user_apps)) },
                    modifier = Modifier.weight(1f),
                    contentPadding = PaddingValues(vertical = 10.dp)
                )
                FilterChip(
                    selected = scope == AppScope.SYSTEM,
                    onClick = { scope = AppScope.SYSTEM },
                    label = { Text(stringResource(R.string.system)) },
                    modifier = Modifier.weight(0.9f),
                    contentPadding = PaddingValues(vertical = 10.dp)
                )
            }
        }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                OutlinedButton(onClick = { descending = !descending }, modifier = Modifier.weight(1f), contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)) {
                    Icon(Icons.Default.Sort, contentDescription = null)
                    Spacer(Modifier.width(6.dp))
                    Text(if (descending) "Name ↓" else "Name ↑")
                }
                OutlinedButton(onClick = { showFilters = true }, modifier = Modifier.weight(1f), contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)) {
                    Icon(Icons.Default.FilterList, contentDescription = null)
                    Spacer(Modifier.width(6.dp))
                    Text("Filter")
                }
                OutlinedButton(onClick = { showContext = true }, modifier = Modifier.weight(1f), contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)) {
                    Icon(Icons.Default.Cloud, contentDescription = null)
                    Spacer(Modifier.width(6.dp))
                    Text("Context")
                }
            }
        }
        item {
            Text(stringResource(R.string.installed_apps), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
        }
        when {
            error != null -> item { Text(error!!, color = MaterialTheme.colorScheme.error) }
            visibleApps.isEmpty() -> item { Text("No visible installed apps") }
            else -> items(visibleApps, key = { it.packageName }) { app ->
                Card(Modifier.fillMaxWidth().clickable { onOpenApp(app) }) {
                    Row(Modifier.padding(14.dp), verticalAlignment = Alignment.CenterVertically) {
                        Box(
                            Modifier.size(44.dp).background(MaterialTheme.colorScheme.primaryContainer, CircleShape),
                            Alignment.Center
                        ) { Text(app.name.take(1), fontWeight = FontWeight.Bold) }
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
                                    onClick = { selectedMenuPackage = null; onOpenApp(app) }
                                )
                                DropdownMenuItem(
                                    text = { Text("Custom configuration") },
                                    leadingIcon = { Icon(Icons.Default.Settings, contentDescription = null) },
                                    onClick = { selectedMenuPackage = null; onOpenApp(app); onOpen(Screen.APP_CONFIG) }
                                )
                                DropdownMenuItem(
                                    text = { Text("Management") },
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
                        placeholder = { Text("Search apps or package name") },
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
                Text("Apps-local search", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Text("Search stays inside Apps. Global search remains available elsewhere.")
            }
            if (query.isNotBlank() && matches.isEmpty()) {
                item { Text("No matching apps") }
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
fun AppsToolsScreen(onOpen: (Screen) -> Unit, onBack: () -> Unit) {
    var selected by remember { mutableStateOf<AppsCapability?>(null) }
    val groups = appsCapabilities.groupBy { it.group }

    if (selected != null) {
        AlertDialog(
            onDismissRequest = { selected = null },
            title = { Text(selected!!.title) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    AssistChip(onClick = {}, label = { Text(selected!!.status) })
                    Text(selected!!.description)
                    Text("BaRe-native placement/flow is intentionally open for review.", style = MaterialTheme.typography.bodySmall)
                }
            },
            confirmButton = { TextButton(onClick = { selected = null }) { Text("Close") } }
        )
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Apps tools & capability map") },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, contentDescription = stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text("43 capability mockups", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                Text("All target Apps capabilities are represented here before deeper implementation. Mockup coverage is not runtime verification.")
            }
            groups.forEach { (group, capabilities) ->
                item {
                    Text(group, style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                }
                items(capabilities, key = { it.id }) { capability ->
                    Card(Modifier.fillMaxWidth().clickable { selected = capability }) {
                        Row(Modifier.padding(14.dp), verticalAlignment = Alignment.CenterVertically) {
                            Column(Modifier.weight(1f)) {
                                Text(capability.id + " · " + capability.title, fontWeight = FontWeight.Bold)
                                Text(capability.description, style = MaterialTheme.typography.bodySmall)
                            }
                            AssistChip(onClick = { selected = capability }, label = { Text(capability.status) })
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
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(item.name) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
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
                        Text(item.category + " • " + item.size)
                    }
                }
            }
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text("Backup inventory", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                        Text("On device: No backup • Cloud: Not synced", color = MaterialTheme.colorScheme.onSurfaceVariant)
                        Text("Versions: 0 • Protected: No • Notes: None")
                    }
                }
            }
            item { Text("Backup parts", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
            item {
                val parts = listOf(
                    "APK" to true, "Split APK" to false, "App data" to false, "External data" to false,
                    "Expansion / OBB" to false, "Media" to false, "Cache (optional)" to false, "Shared libraries" to false
                )
                parts.forEach { (name, available) ->
                    CheckRow(name + if (!available) " · mockup" else "", available)
                }
            }
            item { Text("Operations", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
            item {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Button(onClick = {}, modifier = Modifier.weight(1f)) { Text("Backup") }
                    OutlinedButton(onClick = {}, modifier = Modifier.weight(1f)) { Text("Restore") }
                }
            }
            item {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    OutlinedButton(onClick = {}, modifier = Modifier.weight(1f)) { Text("History") }
                    OutlinedButton(onClick = {}, modifier = Modifier.weight(1f)) { Text("Delete backup") }
                }
            }
            item {
                ListEntry("Multiple-backup strategy", "Single / dated / conditional", Icons.Default.Sync) { onOpen(Screen.APP_CONFIG) }
            }
            item {
                ListEntry("Management", "Favorite • labels • blacklist • protection", Icons.Default.Build) { onOpen(Screen.MANAGEMENT) }
            }
            item {
                ListEntry("Configuration", "Parts • compression • encryption • limits • notes • schedule", Icons.Default.Settings) { onOpen(Screen.APP_CONFIG) }
            }
            item {
                ListEntry("Diagnostics", "Visibility • capability • preconditions", Icons.Default.BugReport) { onOpen(Screen.DIAGNOSTICS) }
            }
            item {
                ListEntry("Restore variants", "Missing app • newer version • special data • SSAID", Icons.Default.Restore) { onOpen(Screen.TASK) }
            }
        }
    }
}

@Composable
fun AppConfigScreen(app: AppItem?, onBack: () -> Unit) {
    val item = app ?: demoApps.first()
    com.bare.feature.misc.GenericDomainScreen(
        stringResource(R.string.configuration_title, item.name),
        "BaRe-native Apps configuration mockup. Values are not stored in the backend yet.",
        listOf(
            "Backup parts", "Compression", "Encryption", "Multiple backups",
            "Backup limits", "Protection", "Notes", "Favorite", "Labels",
            "Blacklist", "Cloud destination", "Run now", "Schedule binding"
        ),
        onBack
    )
}
