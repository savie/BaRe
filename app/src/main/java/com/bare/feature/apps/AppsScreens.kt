package com.bare.feature.apps

import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.os.PowerManager
import android.provider.Settings
import android.widget.Toast
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.ExperimentalLayoutApi
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
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.compose.ui.viewinterop.AndroidView
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.util.concurrent.atomic.AtomicBoolean
import com.bare.R
import com.bare.app.AppItem
import com.bare.app.AppsSubHeader
import com.bare.app.GlobalHeader
import com.bare.app.Screen
import com.bare.ui.components.CheckRow
import com.bare.ui.components.ListEntry
import java.text.DateFormat
import java.util.Date

private enum class AppScope { ALL, USER, SYSTEM }
private enum class AppSort { NAME, UPDATE }

@Composable
fun AppsScreen(onOpen: (Screen) -> Unit, onOpenApp: (AppItem) -> Unit, searchOpen: Boolean, onSearchOpenChange: (Boolean) -> Unit) {
    val context = LocalContext.current
    val inventory = remember(context) { AppInventoryBehavior(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var backupInventory by remember { mutableStateOf<Map<String, AppBackupSnapshot>>(emptyMap()) }
    var error by remember { mutableStateOf<String?>(null) }
    var selectedMenuPackage by remember { mutableStateOf<String?>(null) }
    var scope by remember { mutableStateOf(AppScope.ALL) }
    var sort by remember { mutableStateOf(AppSort.NAME) }
    var descending by remember { mutableStateOf(false) }
    var showFilters by remember { mutableStateOf(false) }
    var appsContext by remember { mutableStateOf(AppsContext.LOCAL) }
    var searchQuery by remember { mutableStateOf("") }

    BackHandler(enabled = searchOpen) { onSearchOpenChange(false) }

    LaunchedEffect(inventory) {
        runCatching { inventory.load() }
            .onSuccess { apps = it; error = null }
            .onFailure { error = it.message ?: context.getString(R.string.unable_to_discover_installed_apps) }
    }

    LaunchedEffect(apps, appsContext) {
        if (appsContext == AppsContext.LOCAL && apps.isNotEmpty()) {
            backupInventory = withContext(Dispatchers.IO) {
                apps.mapNotNull { item ->
                    AppBackupInventoryBehavior(context).inspectLocal(item.packageName).firstOrNull()?.let {
                        item.packageName to it
                    }
                }.toMap()
            }
        } else {
            backupInventory = emptyMap()
        }
    }

    val visibleApps = remember(apps, appsContext, scope, sort, descending, searchQuery) {
        val query = searchQuery.trim().lowercase()
        if (appsContext == AppsContext.CLOUD) return@remember emptyList()
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
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    FilterChip(
                        selected = appsContext == AppsContext.LOCAL,
                        onClick = { appsContext = AppsContext.LOCAL },
                        label = { Box(Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) { Text(stringResource(R.string.apps_local), maxLines = 1) } },
                        modifier = Modifier.weight(1f).height(48.dp)
                    )
                    FilterChip(
                        selected = appsContext == AppsContext.CLOUD,
                        onClick = { appsContext = AppsContext.CLOUD },
                        label = { Box(Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) { Text(stringResource(R.string.apps_cloud_synced), maxLines = 1) } },
                        modifier = Modifier.weight(1f).height(48.dp)
                    )
                }
                Text(
                    if (appsContext == AppsContext.LOCAL) stringResource(R.string.apps_local_description)
                    else stringResource(R.string.apps_cloud_description),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
                if (appsContext == AppsContext.LOCAL) {
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
                OutlinedButton(
                    onClick = { showFilters = true },
                    enabled = appsContext == AppsContext.LOCAL,
                    modifier = Modifier.weight(1f),
                    contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)
                ) {
                    Icon(Icons.Default.FilterList, contentDescription = null)
                    Spacer(Modifier.width(6.dp))
                    Text(stringResource(R.string.apps_filter))
                }
            }
        }
        item {
            Text(
                if (appsContext == AppsContext.LOCAL) stringResource(R.string.installed_apps)
                else stringResource(R.string.apps_cloud_synced),
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold
            )
        }
        when {
            appsContext == AppsContext.CLOUD -> item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text(stringResource(R.string.apps_cloud_synced), fontWeight = FontWeight.Bold)
                        Text(stringResource(R.string.apps_cloud_description))
                        Text(stringResource(R.string.apps_context_mockup_note), style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                    }
                }
            }
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
                                stringResource(
                                    R.string.installed_at,
                                    app.firstInstallTime?.let { formatRelativeTime(context, it) }
                                        ?: stringResource(R.string.install_date_unavailable),
                                ),
                                style = MaterialTheme.typography.labelSmall,
                            )
                            Text(
                                stringResource(
                                    R.string.last_updated_at,
                                    app.lastUpdateTime?.let { formatRelativeTime(context, it) }
                                        ?: stringResource(R.string.update_date_unavailable),
                                ),
                                style = MaterialTheme.typography.labelSmall,
                            )
                            val latestBackup = backupInventory[app.packageName]
                            Text(
                                if (latestBackup == null) {
                                    stringResource(R.string.no_backup_on_device)
                                } else {
                                    stringResource(
                                        R.string.backup_status_at,
                                        DateFormat.getDateInstance(DateFormat.MEDIUM).format(Date(latestBackup.backupTime)),
                                    )
                                },
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
    val inventory = remember(context) { AppInventoryBehavior(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var query by remember { mutableStateOf("") }

    LaunchedEffect(inventory) { apps = runCatching { inventory.load() }.getOrDefault(emptyList()) }
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
    val context = LocalContext.current
    var message by remember { mutableStateOf<String?>(null) }
    if (message != null) {
        AlertDialog(
            onDismissRequest = { message = null },
            title = { Text(stringResource(R.string.quick_action)) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(message!!)
                    Text(stringResource(R.string.quick_action_backend_pending), style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                }
            },
            confirmButton = { TextButton(onClick = { message = null }) { Text(stringResource(R.string.close)) } },
        )
    }
    Scaffold(
        topBar = { TopAppBar(title = { Text(stringResource(R.string.apps_quick_actions)) }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }) }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(horizontal = 16.dp), verticalArrangement = Arrangement.spacedBy(8.dp), contentPadding = PaddingValues(vertical = 12.dp)) {
            item { Text(context.getString(R.string.quick_backup_apps), style = MaterialTheme.typography.labelMedium, color = MaterialTheme.colorScheme.primary) }
            item { QuickActionCard(context.getString(R.string.backup_all_apps), context.getString(R.string.backup_installed_apps_from_device), context.getString(R.string.to_device), context.getString(R.string.to_cloud)) { message = context.getString(R.string.backup_all_apps) } }
            item { QuickActionCard(context.getString(R.string.backup_pending_apps), context.getString(R.string.backup_apps_not_backed_up_yet), context.getString(R.string.to_device), context.getString(R.string.to_cloud)) { message = context.getString(R.string.backup_pending_apps) } }
            item { QuickActionCard(context.getString(R.string.backup_updated_apps), context.getString(R.string.backup_apps_newer_apks), context.getString(R.string.to_device), context.getString(R.string.to_cloud)) { message = context.getString(R.string.backup_updated_apps) } }
            item { QuickActionCard(context.getString(R.string.redo_existing_backups), context.getString(R.string.redo_all_current_backups), context.getString(R.string.to_device), context.getString(R.string.to_cloud)) { message = context.getString(R.string.redo_existing_backups) } }
            item { QuickActionCard(context.getString(R.string.sync_latest_device_backups), context.getString(R.string.sync_latest_backups_to_cloud)) { message = context.getString(R.string.sync_latest_device_backups) } }
            item { Spacer(Modifier.height(8.dp)); Text(context.getString(R.string.quick_restore_apps), style = MaterialTheme.typography.labelMedium, color = MaterialTheme.colorScheme.primary); Text(context.getString(R.string.root_or_shizuku_required), style = MaterialTheme.typography.bodySmall) }
            item { QuickActionCard(context.getString(R.string.restore_all_apps), context.getString(R.string.restore_all_backed_up_apps), context.getString(R.string.from_device), context.getString(R.string.from_cloud)) { message = context.getString(R.string.restore_all_apps) } }
            item { QuickActionCard(context.getString(R.string.restore_missing_apps), context.getString(R.string.restore_missing_apps_desc), context.getString(R.string.from_device), context.getString(R.string.from_cloud)) { message = context.getString(R.string.restore_missing_apps) } }
            item { QuickActionCard(context.getString(R.string.restore_new_versions), context.getString(R.string.restore_new_versions_desc), context.getString(R.string.from_device), context.getString(R.string.from_cloud)) { message = context.getString(R.string.restore_new_versions) } }
            item { Spacer(Modifier.height(8.dp)); Text(context.getString(R.string.other_quick_actions), style = MaterialTheme.typography.labelMedium, color = MaterialTheme.colorScheme.primary) }
            item { QuickActionCard(context.getString(R.string.delete_backups_missing_apps), context.getString(R.string.delete_backups_missing_apps_desc), context.getString(R.string.from_device), context.getString(R.string.from_cloud)) { message = context.getString(R.string.delete_backups_missing_apps) } }
            item { QuickActionCard(context.getString(R.string.enable_disable_apps), context.getString(R.string.change_app_enabled_state)) { message = context.getString(R.string.enable_disable_apps) } }
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
                OutlinedButton(onClick = onClick, modifier = Modifier.fillMaxWidth()) { Text(stringResource(R.string.open)) }
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class, ExperimentalMaterial3Api::class)
@Composable
private fun LabelsGlobalHeader() {
    Row(
        modifier = Modifier.fillMaxWidth().height(72.dp).padding(horizontal = 28.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text("B A R E", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold, letterSpacing = 5.sp)
        Spacer(Modifier.width(10.dp))
        Text("SAVE OUR DAY", style = MaterialTheme.typography.labelSmall, letterSpacing = 3.sp, color = MaterialTheme.colorScheme.onSurfaceVariant)
    }
}

@OptIn(ExperimentalLayoutApi::class, ExperimentalMaterial3Api::class)
@Composable
private fun LabelSurface(
    label: String,
    color: Int?,
    selected: Boolean = false,
    showAdd: Boolean = false,
    showEdit: Boolean = false,
    onClick: () -> Unit,
    onEdit: (() -> Unit)? = null,
) {
    val containerColor = color?.let { Color(it) } ?: MaterialTheme.colorScheme.surface
    Surface(
        onClick = onClick,
        shape = RoundedCornerShape(16.dp),
        color = if (selected) MaterialTheme.colorScheme.secondaryContainer else containerColor,
        border = BorderStroke(1.5.dp, MaterialTheme.colorScheme.outline),
        modifier = Modifier.padding(end = 8.dp, bottom = 8.dp)
    ) {
        Row(
            modifier = Modifier.defaultMinSize(minHeight = 36.dp).padding(horizontal = 12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            if (showAdd) {
                Icon(Icons.Default.Add, contentDescription = null, modifier = Modifier.size(20.dp))
                Spacer(Modifier.width(4.dp))
            }
            Text(label.uppercase(), style = MaterialTheme.typography.labelLarge, fontWeight = FontWeight.Bold, letterSpacing = 1.sp)
            if (showEdit && onEdit != null) {
                Spacer(Modifier.width(4.dp))
                IconButton(onClick = onEdit, modifier = Modifier.size(28.dp)) {
                    Icon(Icons.Default.Edit, contentDescription = stringResource(R.string.rename), modifier = Modifier.size(18.dp))
                }
            }
            if (selected) {
                Spacer(Modifier.width(4.dp))
                Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(18.dp))
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun LabelSubHeader(
    title: String,
    onBack: () -> Unit,
    onCreate: (() -> Unit)? = null,
    onDeleteAll: (() -> Unit)? = null,
) {
    TopAppBar(
        title = { Text(title) },
        navigationIcon = {
            IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, contentDescription = stringResource(R.string.back)) }
        },
        actions = {
            if (onCreate != null) {
                IconButton(onClick = onCreate) { Icon(Icons.Default.Add, contentDescription = "Create New Label") }
            }
            if (onDeleteAll != null) {
                IconButton(onClick = onDeleteAll) { Icon(Icons.Default.Delete, contentDescription = "Delete All") }
            }
        }
    )
}

@OptIn(ExperimentalLayoutApi::class, ExperimentalMaterial3Api::class)
@Composable
private fun AppLabelEditorSurface(
    initialLabel: String?,
    initialColor: Int?,
    appCount: Int,
    onBack: () -> Unit,
    onSaved: (String, Int?) -> Unit,
) {
    val palette = listOf(
        0xFFE57373.toInt(), 0xFFFFB74D.toInt(), 0xFFFFD54F.toInt(),
        0xFF81C784.toInt(), 0xFF64B5F6.toInt(), 0xFF9575CD.toInt(),
        0xFFF06292.toInt(), 0xFF90A4AE.toInt()
    )
    var name by remember(initialLabel) { mutableStateOf(initialLabel.orEmpty()) }
    var selectedColor by remember(initialColor) { mutableStateOf(initialColor) }
    Scaffold(
        topBar = {
            Column {
                LabelsGlobalHeader()
                LabelSubHeader(title = if (initialLabel == null) "Create New Label" else "Edit Label", onBack = onBack)
            }
        }
    ) { padding ->
        LazyColumn(
            Modifier.fillMaxSize().padding(padding).padding(horizontal = 16.dp),
            verticalArrangement = Arrangement.spacedBy(14.dp),
            contentPadding = PaddingValues(top = 16.dp, bottom = 24.dp)
        ) {
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
                        Text("LABEL PREVIEW", style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurfaceVariant, letterSpacing = 1.5.sp)
                        Box(Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) {
                            LabelSurface(label = name.ifBlank { "NEW LABEL" }, color = selectedColor, onClick = {})
                        }
                    }
                }
            }
            item {
                OutlinedTextField(
                    value = name,
                    onValueChange = { if (it.length <= 20) name = it },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    label = { Text("Label name") },
                    leadingIcon = { Icon(Icons.Default.Label, contentDescription = null) },
                    supportingText = { Text("${name.length} / 20") }
                )
            }
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
                        Text("Label color", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                            palette.forEach { color ->
                                Surface(
                                    onClick = { selectedColor = color },
                                    shape = CircleShape,
                                    color = Color(color),
                                    border = if (selectedColor == color) BorderStroke(3.dp, MaterialTheme.colorScheme.onSurface) else null,
                                    modifier = Modifier.size(42.dp)
                                ) {
                                    if (selectedColor == color) Box(contentAlignment = Alignment.Center) {
                                        Icon(Icons.Default.Check, contentDescription = null, tint = Color.White)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(4.dp)) {
                        Text("Apps using this label", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                        Text("${appCount} apps", style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
                    }
                }
            }
            item {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.End) {
                    TextButton(onClick = onBack) { Text(stringResource(R.string.cancel)) }
                    Spacer(Modifier.width(8.dp))
                    Button(enabled = name.trim().isNotBlank(), onClick = { onSaved(name.trim(), selectedColor) }) { Text(stringResource(R.string.save)) }
                }
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class, ExperimentalMaterial3Api::class)
@Composable
fun AppLabelsScreen(onBack: () -> Unit) {
    val context = LocalContext.current
    val store = remember(context) { AppOrganizationBehavior(context) }
    val inventory = remember(context) { AppInventoryBehavior(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var labels by remember { mutableStateOf<List<AppLabelDefinition>>(emptyList()) }
    var editorLabel by remember { mutableStateOf<AppLabelDefinition?>(null) }
    var creating by remember { mutableStateOf(false) }
    var confirmDelete by remember { mutableStateOf<String?>(null) }

    fun refresh() {
        apps = runCatching { inventory.load() }.getOrDefault(emptyList())
        labels = store.labelDefinitions(apps.map { it.packageName })
    }
    LaunchedEffect(inventory) { refresh() }

    if (creating || editorLabel != null) {
        AppLabelEditorSurface(
            initialLabel = editorLabel?.name,
            initialColor = editorLabel?.color,
            appCount = editorLabel?.let { label -> apps.count { label.name in store.labels(it.packageName) } } ?: 0,
            onBack = { creating = false; editorLabel = null },
            onSaved = { name, color ->
                val existing = editorLabel
                if (existing == null) store.addLabel(name, color)
                else {
                    store.renameLabel(existing.name, name, apps.map { it.packageName })
                    store.setLabelColor(name, color)
                }
                creating = false
                editorLabel = null
                refresh()
            }
        )
        return
    }

    if (confirmDelete != null) {
        AlertDialog(
            onDismissRequest = { confirmDelete = null },
            title = { Text("Delete label") },
            text = { Text("Remove this label from all apps and from the label list?") },
            confirmButton = {
                TextButton(onClick = {
                    confirmDelete?.let { store.deleteLabel(it, apps.map { app -> app.packageName }) }
                    confirmDelete = null
                    refresh()
                }) { Text(stringResource(R.string.delete)) }
            },
            dismissButton = { TextButton(onClick = { confirmDelete = null }) { Text(stringResource(R.string.cancel)) } }
        )
    }

    Scaffold(
        topBar = {
            Column {
                LabelsGlobalHeader()
                LabelSubHeader(
                    title = "App Labels",
                    onBack = onBack,
                    onCreate = { creating = true },
                    onDeleteAll = {
                        labels.forEach { store.deleteLabel(it.name, apps.map { app -> app.packageName }) }
                        refresh()
                    }
                )
            }
        }
    ) { padding ->
        LazyColumn(
            Modifier.fillMaxSize().padding(padding).padding(horizontal = 16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
            contentPadding = PaddingValues(top = 16.dp, bottom = 24.dp)
        ) {
            item { Text("Create and edit custom labels", style = MaterialTheme.typography.bodyLarge) }