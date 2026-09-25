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
            if (labels.isEmpty()) {
                item {
                    Card(Modifier.fillMaxWidth()) {
                        Column(Modifier.fillMaxWidth().padding(24.dp), horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.spacedBy(12.dp)) {
                            Icon(Icons.Default.Label, contentDescription = null, modifier = Modifier.size(48.dp))
                            Text("Create labels and use them to categorize your apps the way you want!")
                            Button(onClick = { creating = true }) {
                                Icon(Icons.Default.Add, contentDescription = null)
                                Spacer(Modifier.width(8.dp))
                                Text("Create New Label")
                            }
                        }
                    }
                }
            } else {
                items(labels, key = { it.name }) { label ->
                    Card(Modifier.fillMaxWidth()) {
                        ListItem(
                            headlineContent = {
                                LabelSurface(label = label.name, color = label.color, showEdit = true, onClick = { editorLabel = label }, onEdit = { editorLabel = label })
                            },
                            supportingContent = { Text("Apps using this label: ${apps.count { label.name in store.labels(it.packageName) }}") },
                            leadingContent = { Icon(Icons.Default.Label, contentDescription = null) },
                            trailingContent = {
                                IconButton(onClick = { confirmDelete = label.name }) {
                                    Icon(Icons.Default.Delete, contentDescription = stringResource(R.string.delete))
                                }
                            }
                        )
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class, ExperimentalMaterial3Api::class)
@Composable
fun AppLabelSelectionScreen(app: AppItem?, onBack: () -> Unit) {
    val context = LocalContext.current
    val store = remember(context) { AppOrganizationBehavior(context) }
    val inventory = remember(context) { AppInventoryBehavior(context) }
    val packageName = app?.packageName
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var labels by remember { mutableStateOf<List<AppLabelDefinition>>(emptyList()) }
    var selected by remember(packageName) { mutableStateOf<Set<String>>(emptySet()) }
    var creating by remember { mutableStateOf(false) }

    fun refresh() {
        apps = runCatching { inventory.load() }.getOrDefault(emptyList())
        labels = store.labelDefinitions(apps.map { it.packageName })
    }
    LaunchedEffect(inventory, packageName) {
        refresh()
        if (packageName != null) selected = store.labels(packageName)
    }

    if (creating) {
        AppLabelEditorSurface(
            initialLabel = null,
            initialColor = null,
            appCount = 0,
            onBack = { creating = false },
            onSaved = { name, color ->
                store.addLabel(name, color)
                selected = selected + name
                creating = false
                refresh()
            }
        )
        return
    }

    Scaffold(
        topBar = {
            Column {
                LabelsGlobalHeader()
                LabelSubHeader(title = "Set App Labels", onBack = onBack, onCreate = { creating = true })
            }
        },
        floatingActionButton = {
            ExtendedFloatingActionButton(
                onClick = {
                    if (packageName != null) store.setLabels(packageName, selected)
                    onBack()
                },
                icon = { Icon(Icons.Default.Check, contentDescription = null) },
                text = { Text("Apply") }
            )
        }
    ) { padding ->
        LazyColumn(
            Modifier.fillMaxSize().padding(padding).padding(horizontal = 16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
            contentPadding = PaddingValues(top = 16.dp, bottom = 96.dp)
        ) {
            item {
                Card(Modifier.fillMaxWidth()) {
                    Row(Modifier.fillMaxWidth().padding(16.dp), verticalAlignment = Alignment.Top) {
                        Box(Modifier.size(40.dp)) {
                            AndroidView(
                                factory = { android.widget.ImageView(it) },
                                update = { imageView ->
                                    imageView.setImageDrawable(app?.icon)
                                    imageView.scaleType = android.widget.ImageView.ScaleType.CENTER_INSIDE
                                },
                                modifier = Modifier.fillMaxSize()
                            )
                        }
                        Spacer(Modifier.width(12.dp))
                        Column(Modifier.weight(1f)) {
                            Text(app?.packageName ?: "Unknown package", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                            Text(app?.name ?: "App", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                            Text("${selected.size} labels", style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
                            if (selected.isNotEmpty()) {
                                FlowRow(Modifier.padding(top = 6.dp)) {
                                    selected.forEach { name ->
                                        LabelSurface(label = name, color = labels.firstOrNull { it.name.equals(name, true) }?.color, selected = true, onClick = { selected = selected - name })
                                    }
                                }
                            }
                        }
                        IconButton(onClick = { selected = emptySet() }) {
                            Icon(Icons.Default.Delete, contentDescription = "Clear labels")
                        }
                    }
                }
            }
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(16.dp)) {
                        Text("Selected Labels", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                        if (selected.isEmpty()) {
                            Text("No labels selected", color = MaterialTheme.colorScheme.onSurfaceVariant, modifier = Modifier.padding(top = 8.dp))
                        } else {
                            FlowRow(Modifier.padding(top = 12.dp)) {
                                selected.forEach { name ->
                                    LabelSurface(label = name, color = labels.firstOrNull { it.name.equals(name, true) }?.color, selected = true, onClick = { selected = selected - name })
                                }
                            }
                        }
                    }
                }
            }
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(16.dp)) {
                        Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                            Text("Existing Labels", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold, modifier = Modifier.weight(1f))
                            Text("${labels.size}", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                        }
                        if (labels.isEmpty()) {
                            Text("No labels yet", modifier = Modifier.padding(top = 8.dp))
                            Button(onClick = { creating = true }, modifier = Modifier.padding(top = 8.dp)) {
                                Icon(Icons.Default.Add, contentDescription = null)
                                Spacer(Modifier.width(8.dp))
                                Text("Create New Label")
                            }
                        } else {
                            FlowRow(Modifier.padding(top = 12.dp)) {
                                labels.forEach { label ->
                                    val isSelected = selected.any { it.equals(label.name, true) }
                                    LabelSurface(
                                        label = label.name,
                                        color = label.color,
                                        selected = isSelected,
                                        showAdd = !isSelected,
                                        onClick = {
                                            selected = if (isSelected) selected.filterNot { it.equals(label.name, true) }.toSet()
                                            else if (selected.size < 5) selected + label.name
                                            else selected
                                        }
                                    )
                                }
                            }
                            if (selected.size >= 5) Text("Maximum 5 labels", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                        }
                    }
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
            title = { Text(stringResource(R.string.create_custom_configuration)) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(stringResource(R.string.configurations_bind_rules))
                    OutlinedTextField(value = draft, onValueChange = { draft = it }, singleLine = true, label = { Text(stringResource(R.string.configuration_name)) })
                }
            },
            confirmButton = {
                TextButton(onClick = { val value = draft.trim(); if (value.isNotBlank()) configs = configs + value; draft = ""; showCreate = false }) { Text(stringResource(R.string.create)) }
            },
            dismissButton = { TextButton(onClick = { showCreate = false }) { Text(stringResource(R.string.cancel)) } },
        )
    }
    Scaffold(
        topBar = { TopAppBar(title = { Text(stringResource(R.string.custom_configurations)) }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }) }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text(stringResource(R.string.app_specific_backup_restore_rules), style = MaterialTheme.typography.bodyLarge)
                Text(stringResource(R.string.configuration_backend_pending), style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
            }
            item { Button(onClick = { showCreate = true }, modifier = Modifier.fillMaxWidth()) { Text(stringResource(R.string.create_configuration)) } }
            if (configs.isEmpty()) item { Text(stringResource(R.string.no_configurations_yet)) }
            else items(configs, key = { it }) { config ->
                Card(Modifier.fillMaxWidth()) {
                    ListItem(headlineContent = { Text(config) }, supportingContent = { Text(stringResource(R.string.label_backup_restore_not_executed)) }, trailingContent = { Icon(Icons.Default.ChevronRight, contentDescription = null) })
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppBlacklistScreen(onBack: () -> Unit) {
    val context = LocalContext.current
    val store = remember(context) { AppOrganizationBehavior(context) }
    val inventory = remember(context) { AppInventoryBehavior(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var blacklisted by remember { mutableStateOf<Set<String>>(emptySet()) }
    var showPicker by remember { mutableStateOf(false) }
    var draft by remember { mutableStateOf<Set<String>>(emptySet()) }
    fun refresh() {
        apps = runCatching { inventory.load() }.getOrDefault(emptyList())
        blacklisted = store.blacklistedPackages()
    }
    LaunchedEffect(inventory) { refresh() }
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
            confirmButton = { TextButton(onClick = { store.setBlacklistedPackages(draft); blacklisted = draft; showPicker = false }) { Text(stringResource(R.string.add_apps)) } },
            dismissButton = { TextButton(onClick = { showPicker = false }) { Text(stringResource(R.string.cancel)) } },
        )
    }
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Column { Text(stringResource(R.string.blacklist_apps)); Text(blacklisted.size.toString() + " / 100", style = MaterialTheme.typography.bodySmall) } },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } },
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), horizontalAlignment = Alignment.CenterHorizontally) {
            item {
                Spacer(Modifier.height(120.dp))
                Icon(Icons.Default.Block, contentDescription = null, modifier = Modifier.size(72.dp), tint = MaterialTheme.colorScheme.primary)
                Spacer(Modifier.height(20.dp))
                Text(stringResource(R.string.blacklist_policy_description), style = MaterialTheme.typography.bodyLarge)
                Spacer(Modifier.height(16.dp))
                Button(onClick = { draft = blacklisted; showPicker = true }) { Text(stringResource(R.string.add_apps)) }
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
        topBar = { TopAppBar(title = { Text(stringResource(R.string.app_backups)) }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }) }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(2.dp)) {
            item { Text(stringResource(R.string.general), color = MaterialTheme.colorScheme.primary, style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(vertical = 10.dp)) }
            item { SettingsSwitchEntry(stringResource(R.string.show_system_apps), stringResource(R.string.show_system_apps_desc), showSystemApps) { showSystemApps = it; save("show_system_apps", it) } }
            item { SettingsLinkEntry(stringResource(R.string.swipe_actions), stringResource(R.string.swipe_actions_desc)) { } }
            item { SettingsLinkEntry(stringResource(R.string.manage_app_labels), stringResource(R.string.create_edit_labels)) { onOpen(Screen.APP_LABELS) } }
            item { SettingsLinkEntry(stringResource(R.string.custom_configurations), stringResource(R.string.app_specific_backup_restore_rules)) { onOpen(Screen.APP_CUSTOM_CONFIG) } }
            item { SettingsLinkEntry(stringResource(R.string.blacklist), stringResource(R.string.blacklist_policy_description)) { onOpen(Screen.APP_BLACKLIST) } }
            item { Text(stringResource(R.string.multiple_backups), color = MaterialTheme.colorScheme.primary, style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(vertical = 10.dp)) }
            item { SettingsLinkEntry(stringResource(R.string.multiple_backups_strategy), stringResource(R.string.single_backup)) { } }
            item { Text(stringResource(R.string.encryption_compression), color = MaterialTheme.colorScheme.primary, style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(vertical = 10.dp)) }
            item { SettingsLinkEntry(stringResource(R.string.encrypt_app_data_backups), stringResource(R.string.encryption_strategy_shared)) { onOpen(Screen.ENCRYPTION_PASSWORD_STRATEGY) } }
            item { SettingsLinkEntry(stringResource(R.string.compression_level), stringResource(R.string.fastest)) { } }
            item { Text(stringResource(R.string.app_data), color = MaterialTheme.colorScheme.primary, style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(vertical = 10.dp)) }
            item { SettingsSwitchEntry(stringResource(R.string.restore_runtime_permissions), stringResource(R.string.restore_runtime_permissions_desc), restorePermissions) { restorePermissions = it; save("restore_runtime_permissions", it) } }
            item { SettingsSwitchEntry(stringResource(R.string.restore_special_data), stringResource(R.string.enabled), restoreSpecialData) { restoreSpecialData = it; save("restore_special_data", it) } }
            item { SettingsSwitchEntry(stringResource(R.string.restore_app_ssaids), stringResource(R.string.restore_app_ssaids_desc), restoreSsaid) { restoreSsaid = it; save("restore_ssaid", it) } }
            item { SettingsLinkEntry(stringResource(R.string.app_data_backup_size_limits), stringResource(R.string.no_limit)) { } }
            item { SettingsSwitchEntry(stringResource(R.string.backup_app_cache), stringResource(R.string.backup_app_cache_desc), backupCache) { backupCache = it; save("backup_cache", it) } }
            item { SettingsSwitchEntry(stringResource(R.string.in_place_app_downgrades), stringResource(R.string.in_place_app_downgrades_desc), allowDowngrade) { allowDowngrade = it; save("allow_downgrade", it) } }
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



@Composable
private fun AppDetailSubHeader(
    appName: String,
    onBack: () -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(56.dp)
            .padding(horizontal = 8.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        IconButton(onClick = onBack) {
            Icon(
                Icons.Default.ArrowBack,
                contentDescription = stringResource(R.string.back),
            )
        }
        Text(
            text = appName,
            style = MaterialTheme.typography.titleLarge,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
    }
    HorizontalDivider()
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppDetailScreen(
    app: AppItem?,
    onOpen: (Screen) -> Unit,
    onBack: () -> Unit,
    appCount: Int,
    appsContext: AppsContext,
    onAppsContextChange: (AppsContext) -> Unit,
) {
    val context = LocalContext.current
    val packageName = app?.packageName
    val repository = remember(context) { AppDetailsRepository(context) }
    val organizationStore = remember(context) { AppOrganizationBehavior(context) }
    val shareBehavior = remember(context) { AppShareBehavior(context) }
    var details by remember(packageName) { mutableStateOf<AppDetails?>(null) }
    var error by remember(packageName) { mutableStateOf<String?>(null) }
    var detailReloadToken by remember(packageName) { mutableStateOf(0) }
    var showActions by remember { mutableStateOf(false) }
    var batteryOptimizing by remember(packageName) {
        mutableStateOf(
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                context.getSystemService(PowerManager::class.java)
                    ?.isIgnoringBatteryOptimizations(packageName) != true
            } else {
                false
            }
        )
    }
    var showBackupSelector by remember { mutableStateOf(false) }
    var backupPartNames by remember { mutableStateOf<Set<String>>(emptySet()) }
    var backupDestination by remember { mutableStateOf("Device") }
    var confirmAction by remember { mutableStateOf<String?>(null) }

    val lifecycleOwner = LocalLifecycleOwner.current
    DisposableEffect(lifecycleOwner, packageName) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME) {
                val currentPackage = packageName ?: return@LifecycleEventObserver
                val stillInstalled = runCatching {
                    context.packageManager.getApplicationInfo(currentPackage, 0)
                    true
                }.getOrDefault(false)
                if (!stillInstalled) onBack()
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
    }

    fun reloadDetails() {
        detailReloadToken++
    }

    LaunchedEffect(packageName, detailReloadToken) {
        val currentPackage = packageName ?: return@LaunchedEffect
        val result = runCatching {
            withContext(Dispatchers.IO) {
                repository.load(currentPackage)
            }
        }
        result
            .onSuccess { details = it; error = null }
            .onFailure { error = it.message ?: context.getString(R.string.app_detail_unavailable) }
    }

    fun toast(message: String) {
        Toast.makeText(context, message, Toast.LENGTH_SHORT).show()
    }

    fun handleAction(result: AppActionBehavior.Result, reloadOnSuccess: Boolean = true) {
        when (result) {
            AppActionBehavior.Result.COMPLETED -> {
                if (reloadOnSuccess) reloadDetails()
            }
            AppActionBehavior.Result.ROOT_REQUIRED ->
                toast(context.getString(R.string.root_required))
            AppActionBehavior.Result.FAILED ->
                toast(context.getString(R.string.action_failed))
            AppActionBehavior.Result.UNAVAILABLE ->
                toast(context.getString(R.string.app_action_unavailable))
            AppActionBehavior.Result.OPENED_SYSTEM -> Unit
        }
    }

    fun runRootAction(action: (String) -> AppActionBehavior.Result) {
        val currentPackage = packageName ?: return
        handleAction(action(currentPackage))
    }

    fun launchApp() {
        val currentPackage = packageName ?: return
        handleAction(AppActionBehavior.launch(context, currentPackage), reloadOnSuccess = false)
    }

    fun openAppInfo() {
        val currentPackage = packageName ?: return
        handleAction(AppActionBehavior.openAppInfo(context, currentPackage), reloadOnSuccess = false)
    }

    fun openPlayStore() {
        val currentPackage = packageName ?: return
        handleAction(AppActionBehavior.openPlayStore(context, currentPackage), reloadOnSuccess = false)
    }

    fun uninstallApp() {
        val currentPackage = packageName ?: return
        when (val result = AppActionBehavior.uninstallWithSystemFallback(context, currentPackage)) {
            AppActionBehavior.Result.COMPLETED -> {
                onBack()
            }
            AppActionBehavior.Result.OPENED_SYSTEM -> Unit
            else -> handleAction(result, reloadOnSuccess = false)
        }
    }

    fun requestBatteryOptimization(exempt: Boolean) {
        val currentPackage = packageName ?: return
        handleAction(
            AppActionBehavior.setBatteryOptimization(context, currentPackage, exempt),
            reloadOnSuccess = true,
        )
    }

    fun addToHomeScreen() {
        val currentPackage = packageName ?: return
        val label = details?.name ?: currentPackage
        handleAction(
            AppActionBehavior.addToHomeScreen(context, currentPackage, label),
            reloadOnSuccess = false,
        )
    }

    if (confirmAction != null && details != null) {
        val action = confirmAction!!
        AlertDialog(
            onDismissRequest = { confirmAction = null },
            title = { Text(action) },
            text = {
                Text(
                    if (action == context.getString(R.string.uninstall)) {
                        context.getString(R.string.confirm_uninstall_app, details!!.name)
                    } else {
                        details!!.name
                    }
                )
            },
            confirmButton = {
                TextButton(onClick = {
                    confirmAction = null
                    val currentPackage = packageName
                    if (currentPackage != null) {
                        when (action) {
                            context.getString(R.string.disable) ->
                                handleAction(AppActionBehavior.disable(currentPackage))
                            context.getString(R.string.enable) ->
                                handleAction(AppActionBehavior.enable(currentPackage))
                            context.getString(R.string.force_stop) ->
                                handleAction(AppActionBehavior.forceStop(currentPackage))
                            context.getString(R.string.clear_data) ->
                                handleAction(AppActionBehavior.clearData(currentPackage))
                            context.getString(R.string.uninstall) ->
                                uninstallApp()
                        }
                    }
                }) {
                    Text(stringResource(R.string.confirm))
                }
            },
            dismissButton = {
                TextButton(onClick = { confirmAction = null }) {
                    Text(stringResource(R.string.cancel))
                }
            }
        )
    }

    if (showBackupSelector && details != null) {
        val availableParts = buildList {
            add(context.getString(R.string.apks_part))
            add(context.getString(R.string.data_part))
            if ((details!!.externalDataSizeBytes ?: 0L) > 0L) add(context.getString(R.string.external_data_part))
            if ((details!!.mediaSizeBytes ?: 0L) > 0L) add(context.getString(R.string.media_part))
        }
        ModalBottomSheet(
            onDismissRequest = { showBackupSelector = false },
            dragHandle = { BottomSheetDefaults.DragHandle() }
        ) {
            Column(
                Modifier.fillMaxWidth().padding(horizontal = 20.dp).padding(bottom = 24.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
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
                            AppStorageSelectionChip(
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
                                backupPartNames = if (part in backupPartNames) backupPartNames - part else backupPartNames + part
                            }
                        }
                        if (rowParts.size == 1) Spacer(Modifier.weight(1f))
                    }
                }
                Text(stringResource(R.string.select_backup_locations), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
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
                    FilterChip(
                        selected = backupDestination == "Device + Cloud",
                        onClick = { backupDestination = "Device + Cloud" },
                        label = { Text(stringResource(R.string.device_cloud)) },
                        modifier = Modifier.weight(1f)
                    )
                }
                Button(
                    enabled = backupPartNames.isNotEmpty(),
                    onClick = {
                        showBackupSelector = false
                        toast(context.getString(R.string.app_action_unavailable))
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
            Column(Modifier.fillMaxWidth()) {
                GlobalHeader()
                AppDetailSubHeader(
                    appName = details?.name ?: app?.name ?: stringResource(R.string.app_fallback),
                    onBack = onBack,
                )
            }
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
                val appDetails = details!!
                val isFavorite = organizationStore.isFavorite(appDetails.packageName)
                val appLabels = organizationStore.labels(appDetails.packageName).toList()
                val cacheBytes = appDetails.cacheSizeBytes ?: 0L
                val appSizeBytes = appDetails.apkSizeBytes +
                    (appDetails.dataSizeBytes ?: 0L) +
                    (appDetails.externalDataSizeBytes ?: 0L) +
                    (appDetails.mediaSizeBytes ?: 0L)
                val parts = buildList {
                    add(Triple(context.getString(R.string.apks_part), formatAppSize(appDetails.apkSizeBytes), Icons.Default.Android))
                    add(Triple(context.getString(R.string.data_part), formatAppSize(appDetails.dataSizeBytes ?: 0L), Icons.Default.Storage))
                    if ((appDetails.externalDataSizeBytes ?: 0L) > 0L) add(Triple(context.getString(R.string.external_data_part), formatAppSize(appDetails.externalDataSizeBytes!!), Icons.Default.Folder))
                    if ((appDetails.mediaSizeBytes ?: 0L) > 0L) add(Triple(context.getString(R.string.media_part), formatAppSize(appDetails.mediaSizeBytes!!), Icons.Default.PhotoLibrary))
                }

                LazyColumn(
                    Modifier.fillMaxSize().padding(padding).padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                    contentPadding = PaddingValues(bottom = 16.dp)
                ) {
                    item {
                        Card(Modifier.fillMaxWidth()) {
                            Column(
                                Modifier.padding(16.dp),
                                verticalArrangement = Arrangement.spacedBy(8.dp)
                            ) {
                                Box(Modifier.fillMaxWidth()) {
                                    Row(
                                        Modifier.fillMaxWidth().padding(end = 44.dp),
                                        verticalAlignment = Alignment.Top
                                    ) {
                                        Box(Modifier.size(40.dp)) {
                                            AndroidView(
                                                factory = { android.widget.ImageView(it) },
                                                update = { imageView ->
                                                    imageView.setImageDrawable(app?.icon)
                                                    imageView.scaleType = android.widget.ImageView.ScaleType.CENTER_INSIDE
                                                },
                                                modifier = Modifier.fillMaxSize()
                                            )
                                            if (isFavorite) {
                                                Box(
                                                    modifier = Modifier
                                                        .align(Alignment.BottomEnd)
                                                        .size(16.dp)
                                                        .background(MaterialTheme.colorScheme.surfaceVariant, CircleShape)
                                                ) {
                                                    Icon(
                                                        Icons.Default.Star,
                                                        contentDescription = stringResource(R.string.favorites),
                                                        tint = MaterialTheme.colorScheme.onSurface,
                                                        modifier = Modifier.fillMaxSize().padding(1.dp)
                                                    )
                                                }
                                            }
                                        }
                                        Spacer(Modifier.width(12.dp))
                                        Column(Modifier.weight(1f)) {
                                            Text(
                                                appDetails.packageName,
                                                style = MaterialTheme.typography.bodySmall,
                                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                                                maxLines = 2,
                                                overflow = TextOverflow.Ellipsis
                                            )
                                            Text(
                                                appDetails.name,
                                                style = MaterialTheme.typography.titleLarge,
                                                fontWeight = FontWeight.Bold,
                                                maxLines = 2,
                                                overflow = TextOverflow.Ellipsis
                                            )
                                            Text(
                                                stringResource(
                                                    R.string.app_version_value,
                                                    appDetails.versionName ?: stringResource(R.string.unknown_value),
                                                    appDetails.versionCode?.toString() ?: stringResource(R.string.unknown_value)
                                                ),
                                                style = MaterialTheme.typography.bodyMedium,
                                                color = MaterialTheme.colorScheme.onSurfaceVariant
                                            )
                                            if (appLabels.isNotEmpty()) {
                                                Row(
                                                    Modifier.horizontalScroll(rememberScrollState()),
                                                    horizontalArrangement = Arrangement.spacedBy(6.dp),
                                                    verticalAlignment = Alignment.CenterVertically
                                                ) {
                                                    appLabels.forEach { label ->
                                                        Surface(
                                                            shape = RoundedCornerShape(11.dp),
                                                            border = BorderStroke(1.5.dp, MaterialTheme.colorScheme.outline),
                                                            tonalElevation = 0.dp
                                                        ) {
                                                            Text(
                                                                label.uppercase(),
                                                                modifier = Modifier.padding(horizontal = 12.dp, vertical = 4.dp),
                                                                style = MaterialTheme.typography.labelSmall,
                                                                fontWeight = FontWeight.Bold,
                                                                maxLines = 1,
                                                                overflow = TextOverflow.Ellipsis
                                                            )
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    Box(Modifier.align(Alignment.TopEnd)) {
                                        IconButton(
                                            enabled = details != null,
                                            onClick = { showActions = true }
                                        ) {
                                            Icon(
                                                Icons.Default.MoreVert,
                                                contentDescription = stringResource(R.string.app_actions)
                                            )
                                        }
                                        DropdownMenu(
                                            expanded = showActions,
                                            onDismissRequest = { showActions = false },
                                            modifier = Modifier.width(340.dp)
                                        ) {
                                            LaunchedEffect(showActions, appDetails.packageName) {
                                                if (showActions) {
                                                    batteryOptimizing = runCatching {
                                                        context.getSystemService(PowerManager::class.java)
                                                            ?.isIgnoringBatteryOptimizations(appDetails.packageName) != true
                                                    }.getOrDefault(false)
                                                }
                                            }

                                            Row(
                                                Modifier
                                                    .fillMaxWidth()
                                                    .horizontalScroll(rememberScrollState())
                                                    .padding(horizontal = 8.dp, vertical = 8.dp),
                                                horizontalArrangement = Arrangement.spacedBy(6.dp)
                                            ) {
                                                if (appDetails.isEnabled) {
                                                    FilledTonalButton(
                                                        onClick = {
                                                            showActions = false
                                                            confirmAction = context.getString(R.string.disable)
                                                        },
                                                        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
                                                        shape = RoundedCornerShape(24.dp)
                                                    ) {
                                                        Icon(Icons.Default.VisibilityOff, contentDescription = null, modifier = Modifier.size(18.dp))
                                                        Spacer(Modifier.width(6.dp))
                                                        Text(stringResource(R.string.disable), maxLines = 1)
                                                    }
                                                } else {
                                                    FilledTonalButton(
                                                        onClick = {
                                                            showActions = false
                                                            confirmAction = context.getString(R.string.enable)
                                                        },
                                                        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
                                                        shape = RoundedCornerShape(24.dp)
                                                    ) {
                                                        Icon(Icons.Default.Visibility, contentDescription = null, modifier = Modifier.size(18.dp))
                                                        Spacer(Modifier.width(6.dp))
                                                        Text(stringResource(R.string.enable), maxLines = 1)
                                                    }
                                                }
                                                FilledTonalButton(
                                                    onClick = {
                                                        showActions = false
                                                        confirmAction = context.getString(R.string.force_stop)
                                                    },
                                                    contentPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
                                                    shape = RoundedCornerShape(24.dp)
                                                ) {
                                                    Icon(Icons.Default.Stop, contentDescription = null, modifier = Modifier.size(18.dp))
                                                    Spacer(Modifier.width(6.dp))
                                                    Text(stringResource(R.string.force_stop), maxLines = 1)
                                                }
                                                FilledTonalButton(
                                                    onClick = {
                                                        showActions = false
                                                        confirmAction = context.getString(R.string.clear_data)
                                                    },
                                                    contentPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
                                                    shape = RoundedCornerShape(24.dp)
                                                ) {
                                                    Icon(Icons.Default.DeleteSweep, contentDescription = null, modifier = Modifier.size(18.dp))
                                                    Spacer(Modifier.width(6.dp))
                                                    Text(stringResource(R.string.clear_data), maxLines = 1)
                                                }
                                                FilledTonalButton(
                                                    onClick = { showActions = false; openPlayStore() },
                                                    contentPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
                                                    shape = RoundedCornerShape(24.dp)
                                                ) {
                                                    Icon(Icons.Default.ShoppingBag, contentDescription = null, modifier = Modifier.size(18.dp))
                                                    Spacer(Modifier.width(6.dp))
                                                    Text(stringResource(R.string.play_store), maxLines = 1)
                                                }
                                                FilledTonalButton(
                                                    onClick = { showActions = false; openAppInfo() },
                                                    contentPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
                                                    shape = RoundedCornerShape(24.dp)
                                                ) {
                                                    Icon(Icons.Default.Info, contentDescription = null, modifier = Modifier.size(18.dp))
                                                    Spacer(Modifier.width(6.dp))
                                                    Text(stringResource(R.string.app_info), maxLines = 1)
                                                }
                                                FilledTonalButton(
                                                    onClick = {
                                                        showActions = false
                                                        val currentPackage = packageName
                                                        if (currentPackage != null) {
                                                            when (val result = shareBehavior.shareApk(currentPackage)) {
                                                                is AppShareResult.Ready -> context.startActivity(result.intent)
                                                                is AppShareResult.Failed -> toast(result.reason)
                                                            }
                                                        } else {
                                                            toast(context.getString(R.string.app_action_unavailable))
                                                        }
                                                    },
                                                    enabled = packageName != null,
                                                    contentPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
                                                    shape = RoundedCornerShape(24.dp)
                                                ) {
                                                    Icon(Icons.Default.Share, contentDescription = null, modifier = Modifier.size(18.dp))
                                                    Spacer(Modifier.width(6.dp))
                                                    Text(stringResource(R.string.share_apk), maxLines = 1)
                                                }
                                            }

                                            HorizontalDivider()

                                            DropdownMenuItem(
                                                text = { Text(stringResource(R.string.favorites)) },
                                                leadingIcon = { Icon(Icons.Default.Star, contentDescription = null) },
                                                onClick = {
                                                    showActions = false
                                                    val currentPackage = details?.packageName
                                                    if (currentPackage != null) {
                                                        val next = !organizationStore.isFavorite(currentPackage)
                                                        organizationStore.setFavorite(currentPackage, next)
                                                    }
                                                }
                                            )
                                            DropdownMenuItem(
                                                text = { Text(stringResource(R.string.set_app_labels)) },
                                                leadingIcon = { Icon(Icons.Default.Label, contentDescription = null) },
                                                onClick = {
                                                    showActions = false
                                                    onOpen(Screen.APP_LABEL_SELECTION)
                                                }
                                            )
                                            DropdownMenuItem(
                                                text = { Text(stringResource(R.string.add_to_blacklist)) },
                                                leadingIcon = { Icon(Icons.Default.Block, contentDescription = null) },
                                                onClick = {
                                                    showActions = false
                                                    val currentPackage = details?.packageName
                                                    if (currentPackage != null) {
                                                        val next = !organizationStore.isBlacklisted(currentPackage)
                                                        organizationStore.setBlacklisted(currentPackage, next)
                                                    }
                                                }
                                            )
                                            DropdownMenuItem(
                                                text = {
                                                    Column {
                                                        Text(stringResource(R.string.battery_optimization))
                                                        Text(
                                                            if (batteryOptimizing) stringResource(R.string.battery_optimization_status_optimizing)
                                                            else stringResource(R.string.battery_optimization_status_exempt),
                                                            style = MaterialTheme.typography.bodySmall,
                                                            color = MaterialTheme.colorScheme.onSurfaceVariant
                                                        )
                                                    }
                                                },
                                                leadingIcon = { Icon(Icons.Default.BatteryChargingFull, contentDescription = null) },
                                                trailingIcon = {
                                                    Switch(
                                                        checked = batteryOptimizing,
                                                        onCheckedChange = { enabled ->
                                                            batteryOptimizing = enabled
                                                            requestBatteryOptimization(enabled)
                                                        }
                                                    )
                                                },
                                                onClick = {
                                                    val enabled = !batteryOptimizing
                                                    batteryOptimizing = enabled
                                                    requestBatteryOptimization(enabled)
                                                }
                                            )
                                            HorizontalDivider()
                                            DropdownMenuItem(
                                                text = { Text(stringResource(R.string.add_to_home_screen)) },
                                                leadingIcon = { Icon(Icons.Default.Home, contentDescription = null) },
                                                onClick = { showActions = false; addToHomeScreen() }
                                            )
                                            DropdownMenuItem(
                                                text = { Text(stringResource(R.string.settings)) },
                                                leadingIcon = { Icon(Icons.Default.Settings, contentDescription = null) },
                                                onClick = { showActions = false; onOpen(Screen.APP_BACKUP_SETTINGS) }
                                            )
                                        }
                                    }
                                }
                                Row(
                                    Modifier.horizontalScroll(rememberScrollState()),
                                    horizontalArrangement = Arrangement.spacedBy(6.dp)
                                ) {
                                    if (appDetails.canLaunch) {
                                        FilledTonalButton(
                                            onClick = { launchApp() },
                                            contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)
                                        ) {
                                            Icon(Icons.Default.PlayArrow, contentDescription = null, modifier = Modifier.size(18.dp))
                                            Spacer(Modifier.width(4.dp))
                                            Text(stringResource(R.string.launch))
                                        }
                                    }
                                    if (!appDetails.isEnabled) {
                                        FilledTonalButton(
                                            onClick = { runRootAction { AppActionBehavior.enable(it) } },
                                            contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)
                                        ) {
                                            Icon(Icons.Default.Visibility, contentDescription = null, modifier = Modifier.size(18.dp))
                                            Spacer(Modifier.width(4.dp))
                                            Text(stringResource(R.string.enable))
                                        }
                                    }
                                    FilledTonalButton(
                                        onClick = { confirmAction = context.getString(R.string.uninstall) },
                                        contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)
                                    ) {
                                        Icon(Icons.Default.DeleteOutline, contentDescription = null, modifier = Modifier.size(18.dp))
                                        Spacer(Modifier.width(4.dp))
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
                                        appDetails.lastUpdateTime?.let { formatRelativeTime(context, it) }
                                            ?: stringResource(R.string.update_date_unavailable),
                                        formatAppSize(appSizeBytes),
                                        formatAppSize(cacheBytes)
                                    ),
                                    style = MaterialTheme.typography.bodyMedium,
                                    fontWeight = FontWeight.SemiBold
                                )
                                Text(
                                    stringResource(
                                        R.string.installed_at,
                                        formatRelativeTime(context, appDetails.firstInstallTime),
                                    ),
                                    style = MaterialTheme.typography.bodySmall,
                                )
                                if (parts.isNotEmpty()) {
                                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                                        parts.chunked(2).forEach { rowParts ->
                                            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                                                rowParts.forEach { (title, subtitle, icon) ->
                                                    AppStorageChip(
                                                        title = title,
                                                        subtitle = subtitle,
                                                        icon = icon,
                                                        modifier = Modifier.weight(1f),
                                                        onBackup = { destination ->
                                                            backupPartNames = setOf(title)
                                                            backupDestination = destination
                                                            showBackupSelector = true
                                                        },
                                                        onShare = {
                                                            packageName?.let { currentPackage ->
                                                                when (val result = shareBehavior.shareApk(currentPackage)) {
                                                                    is AppShareResult.Ready -> context.startActivity(result.intent)
                                                                    is AppShareResult.Failed -> toast(result.reason)
                                                                }
                                                            }
                                                        },
                                                        onUnavailable = {
                                                            toast(context.getString(R.string.app_action_unavailable))
                                                        }
                                                    )
                                                }
                                                if (rowParts.size == 1) Spacer(Modifier.weight(1f))
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
                            packageName = packageName,
                            onOpenBackups = { onOpen(Screen.APP_BACKUPS) },
                        )
                    }
                    item {
                        AppBackupCloudStateCard(
                            onOpenBackups = { onOpen(Screen.APP_BACKUPS) },
                            onOpenCloud = { onOpen(Screen.CLOUD) },
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
    onBackup: (String) -> Unit,
    onShare: () -> Unit,
    onUnavailable: () -> Unit,
) {
    var menuOpen by remember(title) { mutableStateOf(false) }

    Box(modifier) {
        Surface(
            Modifier
                .fillMaxWidth()
                .height(64.dp)
                .clickable { menuOpen = true },
            shape = RoundedCornerShape(24.dp),
            color = MaterialTheme.colorScheme.surfaceVariant,
            border = androidx.compose.foundation.BorderStroke(
                1.dp,
                MaterialTheme.colorScheme.outline.copy(alpha = 0.55f)
            ),
        ) {
            Row(
                Modifier.fillMaxSize().padding(horizontal = 14.dp, vertical = 8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Icon(
                    icon,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.size(24.dp)
                )
                Spacer(Modifier.width(10.dp))
                Column(
                    Modifier.weight(1f),
                    verticalArrangement = Arrangement.Center
                ) {
                    Text(
                        title,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        fontWeight = FontWeight.SemiBold,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        subtitle,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
            }
        }
        DropdownMenu(
            expanded = menuOpen,
            onDismissRequest = { menuOpen = false }
        ) {
            DropdownMenuItem(
                text = { Text(stringResource(R.string.backup_to_device)) },
                leadingIcon = { Icon(Icons.Default.PhoneAndroid, contentDescription = null) },
                onClick = {
                    menuOpen = false
                    onBackup("Device")
                }
            )
            DropdownMenuItem(
                text = { Text(stringResource(R.string.backup_to_cloud)) },
                leadingIcon = { Icon(Icons.Default.CloudUpload, contentDescription = null) },
                onClick = {
                    menuOpen = false
                    onBackup("Cloud")
                }
            )
            DropdownMenuItem(
                text = { Text(stringResource(R.string.backup_to_device_cloud)) },
                leadingIcon = { Icon(Icons.Default.CloudQueue, contentDescription = null) },
                onClick = {
                    menuOpen = false
                    onBackup("Device + Cloud")
                }
            )
            if (title == stringResource(R.string.apks_part)) {
                DropdownMenuItem(
                    text = { Text(stringResource(R.string.share_apk)) },
                    leadingIcon = { Icon(Icons.Default.Share, contentDescription = null) },
                    onClick = {
                        menuOpen = false
                        onShare()
                    }
                )
            }
            DropdownMenuItem(
                text = { Text(stringResource(R.string.delete)) },
                leadingIcon = { Icon(Icons.Default.Delete, contentDescription = null) },
                onClick = {
                    menuOpen = false
                    onUnavailable()
                }
            )
        }
    }
}

@Composable
private fun AppStorageSelectionChip(
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
                Text(title, fontWeight = FontWeight.SemiBold, maxLines = 1, overflow = TextOverflow.Ellipsis)
                Text(
                    subtitle,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

@Composable
private fun AppBackupStateCard(
    packageName: String?,
    onOpenBackups: () -> Unit,
) {
    val context = LocalContext.current
    val inventory by produceState<List<AppBackupSnapshot>>(emptyList(), context, packageName) {
        value = if (packageName.isNullOrBlank()) {
            emptyList()
        } else {
            withContext(Dispatchers.IO) {
                AppBackupInventoryBehavior(context).inspectLocal(packageName)
            }
        }
    }
    val latest = inventory.firstOrNull()

    Card(
        Modifier
            .fillMaxWidth()
            .clickable(onClick = onOpenBackups),
    ) {
        Column(
            Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            if (latest == null) {
                Text(
                    stringResource(R.string.device_backups),
                    modifier = Modifier.fillMaxWidth(),
                    textAlign = androidx.compose.ui.text.style.TextAlign.Center,
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.SemiBold,
                )
                Surface(
                    modifier = Modifier.size(72.dp),
                    shape = CircleShape,
                    color = MaterialTheme.colorScheme.surfaceVariant,
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        Icon(
                            Icons.Default.FolderOpen,
                            contentDescription = null,
                            modifier = Modifier.size(44.dp),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                }
                Text(
                    stringResource(R.string.no_backup_on_device),
                    modifier = Modifier.fillMaxWidth(),
                    textAlign = androidx.compose.ui.text.style.TextAlign.Center,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            } else {
                Text(
                    stringResource(R.string.device_backups_count, inventory.size),
                    modifier = Modifier.fillMaxWidth(),
                    textAlign = androidx.compose.ui.text.style.TextAlign.Center,
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.SemiBold,
                )
                HorizontalDivider()
                Row(
                    Modifier.fillMaxWidth(),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Column(Modifier.weight(1f)) {
                        Text(
                            DateFormat.getDateInstance(DateFormat.MEDIUM).format(Date(latest.backupTime)),
                            fontWeight = FontWeight.SemiBold,
                        )
                        Text(
                            stringResource(R.string.backup_version_format, latest.versionName ?: latest.versionCode.toString()),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                    IconButton(onClick = onOpenBackups) {
                        Icon(Icons.Default.MoreVert, contentDescription = stringResource(R.string.backup_actions))
                    }
                }
                if (!latest.note.isNullOrBlank()) {
                    Text(
                        latest.note,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
                Row(
                    Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    BackupPartChip(
                        title = stringResource(R.string.apk_part),
                        size = latest.apkBytes,
                        icon = Icons.Default.Android,
                        modifier = Modifier.weight(1f),
                    )
                    BackupPartChip(
                        title = stringResource(R.string.data_part),
                        size = latest.dataBytes,
                        icon = Icons.Default.Folder,
                        modifier = Modifier.weight(1f),
                        protected = latest.protectedBackup,
                    )
                }
                Button(
                    onClick = onOpenBackups,
                    modifier = Modifier.align(Alignment.End),
                    enabled = false,
                    shape = RoundedCornerShape(24.dp),
                ) {
                    Icon(Icons.Default.Restore, contentDescription = null)
                    Spacer(Modifier.width(8.dp))
                    Text(stringResource(R.string.restore))
                }
            }
        }
    }
}

@Composable
private fun BackupPartChip(
    title: String,
    size: Long,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    modifier: Modifier = Modifier,
    protected: Boolean = false,
) {
    Surface(
        modifier = modifier.height(64.dp),
        shape = RoundedCornerShape(24.dp),
        color = MaterialTheme.colorScheme.surfaceVariant,
    ) {
        Row(
            Modifier.padding(horizontal = 14.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Icon(icon, contentDescription = null, modifier = Modifier.size(24.dp))
            Spacer(Modifier.width(10.dp))
            Column(Modifier.weight(1f), verticalArrangement = Arrangement.Center) {
                Text(title, fontWeight = FontWeight.SemiBold)
                Text(
                    formatBackupSize(size) + if (protected) " 🔒" else "",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }
    }
}

@Composable
private fun AppBackupCloudStateCard(
    onOpenBackups: () -> Unit,
    onOpenCloud: () -> Unit,
) {
    Card(
        Modifier
            .fillMaxWidth()
            .clickable(onClick = onOpenBackups),
    ) {
        Column(
            Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Text(
                stringResource(R.string.cloud_backups),
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.SemiBold,
            )
            Surface(
                modifier = Modifier.size(72.dp),
                shape = CircleShape,
                color = MaterialTheme.colorScheme.surfaceVariant,
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        Icons.Default.CloudOff,
                        contentDescription = null,
                        modifier = Modifier.size(44.dp),
                        tint = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
            }
            Text(
                stringResource(R.string.cloud_not_connected),
                modifier = Modifier.fillMaxWidth(),
                textAlign = androidx.compose.ui.text.style.TextAlign.Center,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
            Button(
                onClick = onOpenCloud,
                shape = RoundedCornerShape(24.dp),
            ) {
                Text(stringResource(R.string.connect_account))
            }
        }
    }
}

private fun formatBackupSize(bytes: Long): String {
    if (bytes <= 0L) return "0 B"
    val units = listOf("B", "KB", "MB", "GB")
    var value = bytes.toDouble()
    var index = 0
    while (value >= 1024 && index < units.lastIndex) {
        value /= 1024
        index++
    }
    return if (index == 0) value.toLong().toString() + " " + units[index]
    else String.format("%.1f %s", value, units[index])
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
                Text(stringResource(R.string.apps_action_flow))
                Text(stringResource(R.string.apps_runtime_pending_mockup))
                Text(stringResource(R.string.apps_capability_execution_pending))
            }
        },
        confirmButton = { TextButton(onClick = onDismiss) { Text(stringResource(R.string.close)) } }
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppBackupScreen(app: AppItem?, onBack: () -> Unit, onOpen: (Screen) -> Unit) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val backupBehavior = remember(context) { AppBackupBehavior(context) }
    val shareBehavior = remember(context) { AppShareBehavior(context) }
    val parts = listOf(
        context.getString(R.string.apks_part),
        context.getString(R.string.data_part),
        context.getString(R.string.external_data_part),
        context.getString(R.string.media_part)
    )
    var selectedParts by remember { mutableStateOf(parts.toSet()) }
    var destination by remember { mutableStateOf("Device") }
    var backupRunning by remember { mutableStateOf(false) }
    var backupMessage by remember { mutableStateOf<String?>(null) }

    if (backupMessage != null) {
        AlertDialog(
            onDismissRequest = { backupMessage = null },
            title = { Text(stringResource(R.string.run_backup)) },
            text = { Text(backupMessage!!) },
            confirmButton = {
                TextButton(onClick = { backupMessage = null }) { Text(stringResource(R.string.close)) }
            }
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
                    enabled = selectedParts.isNotEmpty() && !backupRunning && app?.packageName != null,
                    onClick = {
                        val packageName = app?.packageName ?: return@Button
                        val destinationValue = when (destination) {
                            "Cloud" -> BackupDestination.CLOUD
                            "Device + Cloud" -> BackupDestination.DEVICE_AND_CLOUD
                            else -> BackupDestination.DEVICE
                        }
                        val selectedPartKeys = selectedParts.mapNotNull { part ->
                            when (part) {
                                context.getString(R.string.apks_part) -> AppBackupPart.APK
                                context.getString(R.string.data_part) -> AppBackupPart.DATA
                                context.getString(R.string.external_data_part) -> AppBackupPart.EXTERNAL_DATA
                                context.getString(R.string.media_part) -> AppBackupPart.MEDIA
                                else -> null
                            }
                        }.toSet()
                        backupRunning = true
                        scope.launch {
                            val result = withContext(Dispatchers.IO) {
                                backupBehavior.backup(
                                    AppBackupRequest(
                                        packageName = packageName,
                                        parts = selectedPartKeys,
                                        destination = destinationValue,
                                    )
                                )
                            }
                            backupRunning = false
                            backupMessage = when (result) {
                                is AppBackupResult.Completed ->
                                    context.getString(R.string.backup_completed, result.parts.joinToString { it.name }, result.files.size)
                                is AppBackupResult.Unsupported -> result.reason
                                is AppBackupResult.Failed -> result.reason
                            }
                        }
                    },
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(
                        if (backupRunning) "BACKING UP…" else stringResource(R.string.backup).uppercase()
                    )
                }
            }
            item {
                OutlinedButton(
                    onClick = {
                        val packageName = app?.packageName ?: return@OutlinedButton
                        when (val result = shareBehavior.shareApk(packageName)) {
                            is AppShareResult.Ready -> context.startActivity(result.intent)
                            is AppShareResult.Failed -> backupMessage = result.reason
                        }
                    },
                    modifier = Modifier.fillMaxWidth(),
                    enabled = selectedParts.contains(context.getString(R.string.apks_part)) && !backupRunning
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
    if (showMockup) AppMockupActionDialog(stringResource(R.string.backup_action), app?.name ?: stringResource(R.string.app_fallback)) { showMockup = false }
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.backups_title, app?.name ?: stringResource(R.string.app_fallback))) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text(stringResource(R.string.device_backups), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Text(stringResource(R.string.backup_inventory_unverified))
            }
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text(stringResource(R.string.no_verified_backup_version), fontWeight = FontWeight.Bold)
                        Text(stringResource(R.string.protected_notes_version_size))
                        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            OutlinedButton(onClick = { showMockup = true }) { Text(stringResource(R.string.restore)) }
                            OutlinedButton(onClick = { showMockup = true }) { Text(stringResource(R.string.delete)) }
                        }
                    }
                }
            }
            item {
                Text(stringResource(R.string.cloud_backups), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Text(stringResource(R.string.cloud_inventory_downstream))
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppManagementScreen(app: AppItem?, onBack: () -> Unit) {
    val context = LocalContext.current
    val organizationStore = remember(context) { AppOrganizationBehavior(context) }
    var showMockup by remember { mutableStateOf<String?>(null) }
    var favorite by remember(app?.packageName) { mutableStateOf(app?.packageName?.let(organizationStore::isFavorite) == true) }
    var labelsText by remember(app?.packageName) { mutableStateOf(app?.packageName?.let { organizationStore.labels(it).joinToString(", ") }.orEmpty()) }

    if (showMockup != null) AppMockupActionDialog(showMockup!!, app?.name ?: stringResource(R.string.app_fallback)) { showMockup = null }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.management_title, app?.name ?: stringResource(R.string.app_fallback))) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text(stringResource(R.string.app_management), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                Text(stringResource(R.string.organization_local_device))
            }
            item {
                ListEntry(if (app?.isEnabled == true) stringResource(R.string.disable_app) else stringResource(R.string.enable_app), stringResource(R.string.change_app_enabled_state), Icons.Default.PowerSettingsNew) { showMockup = if (app?.isEnabled == true) context.getString(R.string.disable_app) else context.getString(R.string.enable_app) }
                ListEntry(stringResource(R.string.force_stop), stringResource(R.string.stop_running_app), Icons.Default.Stop) { showMockup = context.getString(R.string.force_stop) }
                ListEntry(stringResource(R.string.uninstall), stringResource(R.string.uninstall_workflow_desc), Icons.Default.Delete) { showMockup = context.getString(R.string.uninstall) }
            }
            item {
                Text(stringResource(R.string.favorites_and_labels), style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                Row(Modifier.fillMaxWidth().clickable { favorite = !favorite }.padding(vertical = 8.dp), verticalAlignment = Alignment.CenterVertically) {
                    Icon(Icons.Default.Star, contentDescription = null)
                    Spacer(Modifier.width(12.dp))
                    Text(if (favorite) stringResource(R.string.favorite) else stringResource(R.string.not_favorite), Modifier.weight(1f))
                    Switch(checked = favorite, onCheckedChange = { favorite = it })
                }
                OutlinedTextField(
                    value = labelsText,
                    onValueChange = { labelsText = it },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    label = { Text(stringResource(R.string.labels)) },
                    placeholder = { Text(stringResource(R.string.labels_placeholder)) },
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
                    Text(stringResource(R.string.save_organization))
                }
            }
            item { ListEntry(stringResource(R.string.protected_backup), stringResource(R.string.protect_retained_backups), Icons.Default.Lock) { showMockup = context.getString(R.string.protected_backup) } }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppDiagnosticsScreen(app: AppItem?, onBack: () -> Unit) {
    val context = LocalContext.current
    var showMockup by remember { mutableStateOf<String?>(null) }
    if (showMockup != null) AppMockupActionDialog(showMockup!!, app?.name ?: stringResource(R.string.app_fallback)) { showMockup = null }
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.diagnostics_title, app?.name ?: stringResource(R.string.app_fallback))) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item { Text(stringResource(R.string.capability_diagnostics), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold) }
            item { ListEntry(stringResource(R.string.app_visibility), stringResource(R.string.app_visibility_desc), Icons.Default.Visibility) { showMockup = context.getString(R.string.app_visibility_diagnostics) } }
            item { ListEntry(stringResource(R.string.execution_capability), stringResource(R.string.execution_capability_desc), Icons.Default.Security) { showMockup = context.getString(R.string.execution_capability) } }
            item { ListEntry(stringResource(R.string.apk_apks_import), stringResource(R.string.apk_apks_import_desc), Icons.Default.FileOpen) { showMockup = context.getString(R.string.apk_apks_import) } }
            item { ListEntry(stringResource(R.string.storage_data_preconditions), stringResource(R.string.storage_data_preconditions_desc), Icons.Default.Storage) { showMockup = context.getString(R.string.storage_data_preconditions) } }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppRestoreScreen(app: AppItem?, onBack: () -> Unit) {
    val context = LocalContext.current
    var showMockup by remember { mutableStateOf<String?>(null) }
    if (showMockup != null) AppMockupActionDialog(showMockup!!, app?.name ?: stringResource(R.string.app_fallback)) { showMockup = null }
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.restore_title, app?.name ?: stringResource(R.string.app_fallback))) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item { Text(stringResource(R.string.restore_variants), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold) }
            item { ListEntry(stringResource(R.string.missing_app), stringResource(R.string.missing_app_desc), Icons.Default.Apps) { showMockup = context.getString(R.string.missing_app) } }
            item { ListEntry(stringResource(R.string.newer_backup_version), stringResource(R.string.newer_backup_version_desc), Icons.Default.Update) { showMockup = context.getString(R.string.newer_backup_version) } }
            item { ListEntry(stringResource(R.string.special_data), stringResource(R.string.special_data_desc), Icons.Default.Extension) { showMockup = context.getString(R.string.special_data) } }
            item { ListEntry(stringResource(R.string.ssaid), stringResource(R.string.ssaid_desc), Icons.Default.Fingerprint) { showMockup = context.getString(R.string.ssaid) } }
            item { ListEntry(stringResource(R.string.restore_selected_backup), stringResource(R.string.restore_selected_backup_desc), Icons.Default.Restore) { showMockup = context.getString(R.string.restore_selected_backup) } }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppConfigScreen(app: AppItem?, onBack: () -> Unit) {
    val context = LocalContext.current
    var compression by remember { mutableStateOf(false) }
    var encryption by remember { mutableStateOf(false) }
    var cache by remember { mutableStateOf(false) }
    var protection by remember { mutableStateOf(false) }
    var notes by remember { mutableStateOf(false) }
    var schedule by remember { mutableStateOf(false) }
    val defaultStrategy = stringResource(R.string.single)
    var strategy by remember { mutableStateOf(defaultStrategy) }
    var showMockup by remember { mutableStateOf<String?>(null) }

    if (showMockup != null) AppMockupActionDialog(showMockup!!, app?.name ?: stringResource(R.string.app_fallback)) { showMockup = null }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.configuration_title, app?.name ?: stringResource(R.string.app_fallback))) },
                navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) } }
            )
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            item {
                Text(stringResource(R.string.app_configuration), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                Text(stringResource(R.string.configuration_downstream_behavior))
            }
            item {
                Card(Modifier.fillMaxWidth()) {
                    Column(Modifier.padding(14.dp)) {
                        Text(stringResource(R.string.backup_parts), fontWeight = FontWeight.Bold)
                        listOf(context.getString(R.string.apk), context.getString(R.string.split_apk), context.getString(R.string.app_data), context.getString(R.string.external_data), context.getString(R.string.expansion_obb), context.getString(R.string.media), context.getString(R.string.cache), context.getString(R.string.shared_libraries)).forEach { Text(context.getString(R.string.selected_mark) + " " + it) }
                    }
                }
            }
            item {
                Text(stringResource(R.string.backup_strategy), style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    listOf(context.getString(R.string.single), context.getString(R.string.dated), context.getString(R.string.conditional)).forEach {
                        FilterChip(selected = strategy == it, onClick = { strategy = it }, label = { Text(it) }, modifier = Modifier.weight(1f))
                    }
                }
            }
            item {
                AppSwitchRow(stringResource(R.string.compression), compression) { compression = it }
                AppSwitchRow(stringResource(R.string.encryption), encryption) { encryption = it }
                AppSwitchRow(stringResource(R.string.cache), cache) { cache = it }
                AppSwitchRow(stringResource(R.string.protected_backup), protection) { protection = it }
                AppSwitchRow(stringResource(R.string.notes), notes) { notes = it }
                AppSwitchRow(stringResource(R.string.schedule_binding), schedule) { schedule = it }
            }
            item {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Button(onClick = { showMockup = context.getString(R.string.run_configuration_now) }, modifier = Modifier.weight(1f)) { Text(stringResource(R.string.run_now)) }
                    OutlinedButton(onClick = { showMockup = context.getString(R.string.schedule_configuration) }, modifier = Modifier.weight(1f)) { Text(stringResource(R.string.schedule)) }
                }
            }
            item {
                Text(stringResource(R.string.limits_retention), style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                ListEntry(stringResource(R.string.backup_limits), stringResource(R.string.backup_limits_desc), Icons.Default.Tune) { showMockup = context.getString(R.string.backup_limits) }
                ListEntry(stringResource(R.string.multiple_backups), stringResource(R.string.multiple_backups_retention_desc), Icons.Default.Sync) { showMockup = context.getString(R.string.multiple_backups_strategy) }
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