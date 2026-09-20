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

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(details?.name ?: app?.name ?: stringResource(R.string.app_details)) },
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(Icons.Default.ArrowBack, stringResource(R.string.back))
                    }
                }
            )
        }
    ) { padding ->
        when {
            error != null -> {
                Column(
                    Modifier.fillMaxSize().padding(padding).padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Text(stringResource(R.string.app_detail_unavailable), fontWeight = FontWeight.Bold)
                    Text(error!!, color = MaterialTheme.colorScheme.error)
                }
            }
            details == null -> {
                Box(
                    Modifier.fillMaxSize().padding(padding),
                    contentAlignment = Alignment.Center
                ) { CircularProgressIndicator() }
            }
            else -> {
                val item = details!!
                LazyColumn(
                    Modifier.fillMaxSize().padding(padding).padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    item {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Box(
                                Modifier.size(64.dp).background(MaterialTheme.colorScheme.primaryContainer, CircleShape),
                                Alignment.Center
                            ) {
                                Text(
                                    item.name.take(1),
                                    style = MaterialTheme.typography.headlineSmall,
                                    fontWeight = FontWeight.Bold
                                )
                            }
                            Spacer(Modifier.width(14.dp))
                            Column {
                                Text(item.name, style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                                Text(item.packageName)
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
                        Card(Modifier.fillMaxWidth()) {
                            Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                                Text(stringResource(R.string.app_package_surface), style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                                Text(
                                    stringResource(
                                        R.string.app_version_value,
                                        item.versionName ?: stringResource(R.string.unknown_value),
                                        item.versionCode?.toString() ?: stringResource(R.string.unknown_value),
                                    )
                                )
                                Text(stringResource(R.string.app_apk_count_value, item.apkCount))
                                Text(stringResource(R.string.app_apk_size_value, formatAppSize(item.apkSizeBytes)))
                                Text(
                                    if (item.canLaunch) stringResource(R.string.app_launch_capable)
                                    else stringResource(R.string.app_launch_unavailable)
                                )
                                Text(
                                    if (item.canOpenAppInfo) stringResource(R.string.app_info_capable)
                                    else stringResource(R.string.app_info_unavailable)
                                )
                            }
                        }
                    }
                    item {
                        Card(Modifier.fillMaxWidth()) {
                            Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                                Text(stringResource(R.string.backup_inventory), style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                                Text(stringResource(R.string.backup_inventory_state), color = MaterialTheme.colorScheme.onSurfaceVariant)
                                Text(stringResource(R.string.backup_inventory_versions))
                                Text(stringResource(R.string.app_backup_surface_foundation_note), style = MaterialTheme.typography.bodySmall)
                            }
                        }
                    }
                    item {
                        Text(stringResource(R.string.backup_parts), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                    }
                    item {
                        val parts = listOf(
                            "APK" to true,
                            "Split APK" to (item.apkCount > 1),
                            "App data" to false,
                            "External data" to false,
                            "Expansion / OBB" to false,
                            "Media" to false,
                            stringResource(R.string.backup_parts_optional) to false,
                            stringResource(R.string.shared_libraries) to false
                        )
                        parts.forEach { (name, available) ->
                            CheckRow(
                                name + if (!available) stringResource(R.string.apps_capability_mockup_suffix) else "",
                                available
                            )
                        }
                    }
                    item {
                        Text(stringResource(R.string.app_actions), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                        Text(stringResource(R.string.app_actions_foundation_note), style = MaterialTheme.typography.bodySmall)
                    }
                    item {
                        ListEntry(
                            stringResource(R.string.multiple_backup_strategy),
                            stringResource(R.string.multiple_backup_strategy_value),
                            Icons.Default.Sync
                        ) { onOpen(Screen.APP_CONFIG) }
                    }
                    item {
                        ListEntry(
                            stringResource(R.string.management),
                            stringResource(R.string.management_summary_short),
                            Icons.Default.Build
                        ) { onOpen(Screen.MANAGEMENT) }
                    }
                    item {
                        ListEntry(
                            stringResource(R.string.configuration),
                            stringResource(R.string.configuration_summary),
                            Icons.Default.Settings
                        ) { onOpen(Screen.APP_CONFIG) }
                    }
                    item {
                        ListEntry(
                            stringResource(R.string.diagnostics),
                            stringResource(R.string.diagnostics_short),
                            Icons.Default.BugReport
                        ) { onOpen(Screen.DIAGNOSTICS) }
                    }
                    item {
                        ListEntry(
                            stringResource(R.string.restore_variants),
                            stringResource(R.string.restore_variants_short),
                            Icons.Default.Restore
                        ) { onOpen(Screen.TASK) }
                    }
                }
            }
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

@Composable
fun AppConfigScreen(app: AppItem?, onBack: () -> Unit) {
    val itemName = app?.name ?: stringResource(R.string.app_details)
    com.bare.feature.misc.GenericDomainScreen(
        stringResource(R.string.configuration_title, itemName),
        "BaRe-native Apps configuration mockup. Values are not stored in the backend yet.",
        listOf(
            stringResource(R.string.backup_parts), "Compression", "Encryption", "Multiple backups",
            "Backup limits", "Protection", "Notes", "Favorite", "Labels",
            "Blacklist", stringResource(R.string.cloud_destination), stringResource(R.string.run_now), stringResource(R.string.schedule_binding)
        ),
        onBack
    )
}
