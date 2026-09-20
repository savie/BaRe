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
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.bare.R
import com.bare.app.AppItem
import com.bare.app.Screen
import com.bare.ui.components.CheckRow
import com.bare.ui.components.ListEntry

private enum class AppScope { ALL, USER, SYSTEM }

private data class AppsCapability(
    val id: String,
    val titleRes: Int,
    val groupRes: Int,
    val descriptionRes: Int,
    val statusRes: Int,
)

private val appsCapabilities = listOf(
    AppsCapability("01", R.string.apps_cap_01_title, R.string.apps_cap_01_group, R.string.apps_cap_01_description, R.string.apps_cap_01_status),
    AppsCapability("02", R.string.apps_cap_02_title, R.string.apps_cap_02_group, R.string.apps_cap_02_description, R.string.apps_cap_02_status),
    AppsCapability("03", R.string.apps_cap_03_title, R.string.apps_cap_03_group, R.string.apps_cap_03_description, R.string.apps_cap_03_status),
    AppsCapability("04", R.string.apps_cap_04_title, R.string.apps_cap_04_group, R.string.apps_cap_04_description, R.string.apps_cap_04_status),
    AppsCapability("05", R.string.apps_cap_05_title, R.string.apps_cap_05_group, R.string.apps_cap_05_description, R.string.apps_cap_05_status),
    AppsCapability("06", R.string.apps_cap_06_title, R.string.apps_cap_06_group, R.string.apps_cap_06_description, R.string.apps_cap_06_status),
    AppsCapability("07", R.string.apps_cap_07_title, R.string.apps_cap_07_group, R.string.apps_cap_07_description, R.string.apps_cap_07_status),
    AppsCapability("08", R.string.apps_cap_08_title, R.string.apps_cap_08_group, R.string.apps_cap_08_description, R.string.apps_cap_08_status),
    AppsCapability("09", R.string.apps_cap_09_title, R.string.apps_cap_09_group, R.string.apps_cap_09_description, R.string.apps_cap_09_status),
    AppsCapability("10", R.string.apps_cap_10_title, R.string.apps_cap_10_group, R.string.apps_cap_10_description, R.string.apps_cap_10_status),
    AppsCapability("11", R.string.apps_cap_11_title, R.string.apps_cap_11_group, R.string.apps_cap_11_description, R.string.apps_cap_11_status),
    AppsCapability("12", R.string.apps_cap_12_title, R.string.apps_cap_12_group, R.string.apps_cap_12_description, R.string.apps_cap_12_status),
    AppsCapability("13", R.string.apps_cap_13_title, R.string.apps_cap_13_group, R.string.apps_cap_13_description, R.string.apps_cap_13_status),
    AppsCapability("14", R.string.apps_cap_14_title, R.string.apps_cap_14_group, R.string.apps_cap_14_description, R.string.apps_cap_14_status),
    AppsCapability("15", R.string.apps_cap_15_title, R.string.apps_cap_15_group, R.string.apps_cap_15_description, R.string.apps_cap_15_status),
    AppsCapability("16", R.string.apps_cap_16_title, R.string.apps_cap_16_group, R.string.apps_cap_16_description, R.string.apps_cap_16_status),
    AppsCapability("17", R.string.apps_cap_17_title, R.string.apps_cap_17_group, R.string.apps_cap_17_description, R.string.apps_cap_17_status),
    AppsCapability("18", R.string.apps_cap_18_title, R.string.apps_cap_18_group, R.string.apps_cap_18_description, R.string.apps_cap_18_status),
    AppsCapability("19", R.string.apps_cap_19_title, R.string.apps_cap_19_group, R.string.apps_cap_19_description, R.string.apps_cap_19_status),
    AppsCapability("20", R.string.apps_cap_20_title, R.string.apps_cap_20_group, R.string.apps_cap_20_description, R.string.apps_cap_20_status),
    AppsCapability("21", R.string.apps_cap_21_title, R.string.apps_cap_21_group, R.string.apps_cap_21_description, R.string.apps_cap_21_status),
    AppsCapability("22", R.string.apps_cap_22_title, R.string.apps_cap_22_group, R.string.apps_cap_22_description, R.string.apps_cap_22_status),
    AppsCapability("23", R.string.apps_cap_23_title, R.string.apps_cap_23_group, R.string.apps_cap_23_description, R.string.apps_cap_23_status),
    AppsCapability("24", R.string.apps_cap_24_title, R.string.apps_cap_24_group, R.string.apps_cap_24_description, R.string.apps_cap_24_status),
    AppsCapability("25", R.string.apps_cap_25_title, R.string.apps_cap_25_group, R.string.apps_cap_25_description, R.string.apps_cap_25_status),
    AppsCapability("26", R.string.apps_cap_26_title, R.string.apps_cap_26_group, R.string.apps_cap_26_description, R.string.apps_cap_26_status),
    AppsCapability("27", R.string.apps_cap_27_title, R.string.apps_cap_27_group, R.string.apps_cap_27_description, R.string.apps_cap_27_status),
    AppsCapability("28", R.string.apps_cap_28_title, R.string.apps_cap_28_group, R.string.apps_cap_28_description, R.string.apps_cap_28_status),
    AppsCapability("29", R.string.apps_cap_29_title, R.string.apps_cap_29_group, R.string.apps_cap_29_description, R.string.apps_cap_29_status),
    AppsCapability("30", R.string.apps_cap_30_title, R.string.apps_cap_30_group, R.string.apps_cap_30_description, R.string.apps_cap_30_status),
    AppsCapability("31", R.string.apps_cap_31_title, R.string.apps_cap_31_group, R.string.apps_cap_31_description, R.string.apps_cap_31_status),
    AppsCapability("32", R.string.apps_cap_32_title, R.string.apps_cap_32_group, R.string.apps_cap_32_description, R.string.apps_cap_32_status),
    AppsCapability("33", R.string.apps_cap_33_title, R.string.apps_cap_33_group, R.string.apps_cap_33_description, R.string.apps_cap_33_status),
    AppsCapability("34", R.string.apps_cap_34_title, R.string.apps_cap_34_group, R.string.apps_cap_34_description, R.string.apps_cap_34_status),
    AppsCapability("35", R.string.apps_cap_35_title, R.string.apps_cap_35_group, R.string.apps_cap_35_description, R.string.apps_cap_35_status),
    AppsCapability("36", R.string.apps_cap_36_title, R.string.apps_cap_36_group, R.string.apps_cap_36_description, R.string.apps_cap_36_status),
    AppsCapability("37", R.string.apps_cap_37_title, R.string.apps_cap_37_group, R.string.apps_cap_37_description, R.string.apps_cap_37_status),
    AppsCapability("38", R.string.apps_cap_38_title, R.string.apps_cap_38_group, R.string.apps_cap_38_description, R.string.apps_cap_38_status),
    AppsCapability("39", R.string.apps_cap_39_title, R.string.apps_cap_39_group, R.string.apps_cap_39_description, R.string.apps_cap_39_status),
    AppsCapability("40", R.string.apps_cap_40_title, R.string.apps_cap_40_group, R.string.apps_cap_40_description, R.string.apps_cap_40_status),
    AppsCapability("41", R.string.apps_cap_41_title, R.string.apps_cap_41_group, R.string.apps_cap_41_description, R.string.apps_cap_41_status),
    AppsCapability("42", R.string.apps_cap_42_title, R.string.apps_cap_42_group, R.string.apps_cap_42_description, R.string.apps_cap_42_status),
    AppsCapability("43", R.string.apps_cap_43_title, R.string.apps_cap_43_group, R.string.apps_cap_43_description, R.string.apps_cap_43_status),
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
            .onFailure { error = it.message ?: context.getString(R.string.unable_to_discover_installed_apps) }
    }

    val visibleApps = remember(apps, scope, descending, searchQuery) {
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
        if (descending) filtered.sortedByDescending { it.name.lowercase() } else filtered.sortedBy { it.name.lowercase() }
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
                OutlinedButton(onClick = { descending = !descending }, modifier = Modifier.weight(1f), contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)) {
                    Icon(Icons.Default.Sort, contentDescription = null)
                    Spacer(Modifier.width(6.dp))
                    Text(if (descending) stringResource(R.string.apps_name_descending) else stringResource(R.string.apps_name_ascending))
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
fun AppsToolsScreen(onOpen: (Screen) -> Unit, onBack: () -> Unit) {
    var selected by remember { mutableStateOf<AppsCapability?>(null) }
    val groups = appsCapabilities.groupBy { it.groupRes }

    if (selected != null) {
        AlertDialog(
            onDismissRequest = { selected = null },
            title = { Text(stringResource(selected!!.titleRes)) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    AssistChip(onClick = {}, label = { Text(stringResource(selected!!.statusRes)) })
                    Text(stringResource(selected!!.descriptionRes))
                    Text(stringResource(R.string.apps_mockup_placement_note), style = MaterialTheme.typography.bodySmall)
                }
            },
            confirmButton = { TextButton(onClick = { selected = null }) { Text(stringResource(R.string.close)) } }
        )
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.apps_tools_capability_map)) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, contentDescription = stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text(stringResource(R.string.apps_capability_mockups), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                Text(stringResource(R.string.apps_capability_mockups_description))
            }
            groups.forEach { (group, capabilities) ->
                item {
                    Text(stringResource(group), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                }
                items(capabilities, key = { it.id }) { capability ->
                    Card(Modifier.fillMaxWidth().clickable { selected = capability }) {
                        Row(Modifier.padding(14.dp), verticalAlignment = Alignment.CenterVertically) {
                            Column(Modifier.weight(1f)) {
                                Text(capability.id + " · " + stringResource(capability.titleRes), fontWeight = FontWeight.Bold)
                                Text(stringResource(capability.descriptionRes), style = MaterialTheme.typography.bodySmall)
                            }
                            AssistChip(onClick = { selected = capability }, label = { Text(stringResource(capability.statusRes)) })
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
    val context = LocalContext.current
    val packageName = app?.packageName
    val repository = remember(context) { AppDetailsRepository(context) }
    var details by remember(packageName) { mutableStateOf<AppDetails?>(null) }
    var error by remember(packageName) { mutableStateOf<String?>(null) }
    var showActions by remember { mutableStateOf(false) }
    var mockupAction by remember { mutableStateOf<String?>(null) }
    var selectedParts by remember { mutableStateOf(setOf("APK")) }

    LaunchedEffect(repository, packageName) {
        details = null
        error = null
        if (packageName.isNullOrBlank()) {
            error = context.getString(R.string.app_detail_missing_package)
        } else {
            runCatching { repository.load(packageName) }
                .onSuccess { details = it }
                .onFailure { error = it.message ?: context.getString(R.string.app_detail_unavailable) }
        }
    }

    if (mockupAction != null) {
        AppMockupActionDialog(
            title = mockupAction!!,
            appName = details?.name ?: app?.name ?: "App",
            onDismiss = { mockupAction = null },
        )
    }

    if (showActions && details != null) {
        ModalBottomSheet(onDismissRequest = { showActions = false }) {
            Column(
                Modifier.fillMaxWidth().padding(horizontal = 20.dp).padding(bottom = 28.dp),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text("App actions", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Text(
                    "Actions are presented here first. Runtime execution can be filled in independently.",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                AppActionMenuItem("Play Store", Icons.Default.ShoppingBag) {
                    showActions = false; mockupAction = "Play Store"
                }
                AppActionMenuItem("Android App Info", Icons.Default.Info) {
                    showActions = false; mockupAction = "Android App Info"
                }
                AppActionMenuItem("Share APK", Icons.Default.Share) {
                    showActions = false; mockupAction = "Share APK"
                }
                AppActionMenuItem("Favorite / labels / blacklist", Icons.Default.Star) {
                    showActions = false; onOpen(Screen.APP_MANAGEMENT)
                }
                AppActionMenuItem("Battery optimization", Icons.Default.BatteryChargingFull) {
                    showActions = false; mockupAction = "Battery optimization"
                }
                AppActionMenuItem("Add to Home screen", Icons.Default.Home) {
                    showActions = false; mockupAction = "Add to Home screen"
                }
                AppActionMenuItem("Force stop", Icons.Default.Stop) {
                    showActions = false; mockupAction = "Force stop"
                }
                AppActionMenuItem("Uninstall", Icons.Default.Delete) {
                    showActions = false; mockupAction = "Uninstall"
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
                LazyColumn(
                    Modifier.fillMaxSize().padding(padding).padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    item {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Box(
                                Modifier.size(64.dp).background(MaterialTheme.colorScheme.primaryContainer, CircleShape),
                                Alignment.Center
                            ) {
                                Text(item.name.take(1), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                            }
                            Spacer(Modifier.width(14.dp))
                            Column(Modifier.weight(1f)) {
                                Text(item.name, style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                                Text(item.packageName, maxLines = 1, overflow = TextOverflow.Ellipsis)
                                Text(item.category)
                                Text(
                                    if (item.isEnabled) stringResource(R.string.enabled) else stringResource(R.string.disabled),
                                    style = MaterialTheme.typography.bodySmall,
                                    color = if (item.isEnabled) MaterialTheme.colorScheme.onSurfaceVariant else MaterialTheme.colorScheme.error,
                                )
                            }
                        }
                    }
                    item {
                        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            Button(enabled = item.canLaunch, onClick = { mockupAction = "Launch" }, modifier = Modifier.weight(1f)) { Text("Launch") }
                            OutlinedButton(onClick = { onOpen(Screen.APP_BACKUP) }, modifier = Modifier.weight(1f)) { Text("Backup") }
                            OutlinedButton(onClick = { onOpen(Screen.APP_RESTORE) }, modifier = Modifier.weight(1f)) { Text("Restore") }
                        }
                    }
                    item {
                        Card(Modifier.fillMaxWidth()) {
                            Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                                Text(stringResource(R.string.app_package_surface), style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                                Text(stringResource(
                                    R.string.app_version_value,
                                    item.versionName ?: stringResource(R.string.unknown_value),
                                    item.versionCode?.toString() ?: stringResource(R.string.unknown_value)
                                ))
                                Text(stringResource(R.string.app_apk_count_value, item.apkCount))
                                Text(stringResource(R.string.app_apk_size_value, formatAppSize(item.apkSizeBytes)))
                                Text(if (item.canLaunch) "Launch capability: available" else "Launch capability: unavailable")
                                Text(if (item.canOpenAppInfo) "Android App Info: available" else "Android App Info: unavailable")
                            }
                        }
                    }
                    item {
                        Card(Modifier.fillMaxWidth()) {
                            Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
                                Row(verticalAlignment = Alignment.CenterVertically) {
                                    Column(Modifier.weight(1f)) {
                                        Text(stringResource(R.string.backup_inventory), style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                                        Text("Device: no verified backup")
                                        Text("Cloud: not synced")
                                    }
                                    TextButton(onClick = { onOpen(Screen.APP_BACKUPS) }) { Text("View backups") }
                                }
                                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                                    OutlinedButton(onClick = { onOpen(Screen.APP_BACKUP) }, modifier = Modifier.weight(1f)) { Text("Device") }
                                    OutlinedButton(onClick = { onOpen(Screen.APP_BACKUP) }, modifier = Modifier.weight(1f)) { Text("Cloud") }
                                    OutlinedButton(onClick = { onOpen(Screen.APP_BACKUP) }, modifier = Modifier.weight(1f)) { Text("Both") }
                                }
                            }
                        }
                    }
                    item {
                        Text(stringResource(R.string.backup_parts), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                    }
                    item {
                        val parts = listOf(
                            "APK", "Split APK", "App data", "External data", "Expansion / OBB",
                            "Media", stringResource(R.string.backup_parts_optional), stringResource(R.string.shared_libraries)
                        )
                        Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
                            parts.forEach { part ->
                                val selected = selectedParts.contains(part)
                                Row(
                                    Modifier.fillMaxWidth().clickable {
                                        selectedParts = if (selected) selectedParts - part else selectedParts + part
                                    }.padding(vertical = 4.dp),
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Checkbox(
                                        checked = selected,
                                        onCheckedChange = { checked ->
                                            selectedParts = if (checked) selectedParts + part else selectedParts - part
                                        }
                                    )
                                    Text(part + if (part != "APK" && !selected) " • mockup" else "")
                                }
                            }
                        }
                    }
                    item {
                        Text(stringResource(R.string.app_actions), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                        Text(
                            "Each entry below is a real navigation/action surface. Pending runtime behavior is marked inside the destination.",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    item {
                        ListEntry("Management", "Enable / disable • force stop • uninstall • favorite • labels • blacklist", Icons.Default.Build) {
                            onOpen(Screen.APP_MANAGEMENT)
                        }
                    }
                    item {
                        ListEntry(stringResource(R.string.configuration), "Parts • compression • encryption • limits • cache • notes • schedule", Icons.Default.Settings) {
                            onOpen(Screen.APP_CONFIG)
                        }
                    }
                    item {
                        ListEntry(stringResource(R.string.diagnostics), "Visibility • capability • preconditions • APK/APKS import", Icons.Default.BugReport) {
                            onOpen(Screen.APP_DIAGNOSTICS)
                        }
                    }
                    item {
                        ListEntry(stringResource(R.string.restore_variants), "Missing app • newer version • special data • SSAID", Icons.Default.Restore) {
                            onOpen(Screen.APP_RESTORE)
                        }
                    }
                    item {
                        ListEntry("Backup history", "Device/cloud versions • protected state • notes • delete", Icons.Default.History) {
                            onOpen(Screen.APP_BACKUPS)
                        }
                    }
                }
            }
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
    var destination by remember { mutableStateOf("Device") }
    var showMockup by remember { mutableStateOf(false) }
    if (showMockup) AppMockupActionDialog("Run backup", app?.name ?: "App") { showMockup = false }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Backup • " + (app?.name ?: "App")) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            item {
                Text("Backup destination", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    listOf("Device", "Cloud", "Device + Cloud").forEach { value ->
                        FilterChip(selected = destination == value, onClick = { destination = value }, label = { Text(value) }, modifier = Modifier.weight(1f))
                    }
                }
            }
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        Text("Selected backup parts", fontWeight = FontWeight.Bold)
                        Text("APK • split APK • app data • external data • OBB • media • cache • shared libraries")
                        Text("Part selection is represented in the App Detail workspace; persistent configuration is pending.")
                    }
                }
            }
            item {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Button(onClick = { showMockup = true }, modifier = Modifier.weight(1f)) { Text("Run backup") }
                    OutlinedButton(onClick = { showMockup = true }, modifier = Modifier.weight(1f)) { Text("Share APK") }
                }
            }
            item {
                ListEntry("Device backups", "View backup versions and retention state", Icons.Default.History) { onOpen(Screen.APP_BACKUPS) }
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
    var showMockup by remember { mutableStateOf<String?>(null) }
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
                Text("The controls are present now; execution is connected later to the appropriate Android capability/provider.")
            }
            item { ListEntry(if (app?.isEnabled == true) "Disable app" else "Enable app", "Change installed application enabled state", Icons.Default.PowerSettingsNew) { showMockup = if (app?.isEnabled == true) "Disable app" else "Enable app" } }
            item { ListEntry("Force stop", "Stop the running application", Icons.Default.Stop) { showMockup = "Force stop" } }
            item { ListEntry("Uninstall", "Open uninstall workflow with confirmation", Icons.Default.Delete) { showMockup = "Uninstall" } }
            item { ListEntry("Favorite / labels / blacklist", "Manage per-app organization and protection state", Icons.Default.Star) { showMockup = "Favorite / labels / blacklist" } }
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
