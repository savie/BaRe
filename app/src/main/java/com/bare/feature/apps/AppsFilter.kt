package com.bare.feature.apps

import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.clickable
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Clear
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Sort
import androidx.compose.material.icons.filled.Event
import androidx.compose.material.icons.filled.Update
import androidx.compose.material.icons.filled.Backup
import androidx.compose.material.icons.filled.Storage
import androidx.compose.material.icons.filled.TouchApp
import androidx.compose.material.icons.filled.Android
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.PowerSettingsNew
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.DeleteSweep
import androidx.compose.material.icons.filled.Stop
import androidx.compose.material.icons.filled.ShoppingBag
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Share
import androidx.compose.material.icons.filled.Star
import androidx.compose.material.icons.filled.Label
import androidx.compose.material.icons.filled.Block
import androidx.compose.material.icons.filled.BatteryChargingFull
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.AssistChip
import androidx.compose.material3.AssistChipDefaults
import androidx.compose.material3.FilterChip
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.ListItem
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.Text
import androidx.compose.material3.Surface
import androidx.compose.material3.TextButton
import androidx.compose.material3.Checkbox
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import java.util.concurrent.TimeUnit
import com.bare.R
import com.bare.app.AppItem
import com.bare.app.Screen
import android.content.Intent
import android.net.Uri
import android.provider.Settings

private fun formatRelativeTime(timestamp: Long): String {
    val delta = (System.currentTimeMillis() - timestamp).coerceAtLeast(0L)
    val minutes = TimeUnit.MILLISECONDS.toMinutes(delta)
    return when {
        minutes < 1L -> "just now"
        minutes < 60L -> "$minutes minute${if (minutes == 1L) "" else "s"} ago"
        minutes < 1440L -> {
            val hours = minutes / 60L
            "$hours hour${if (hours == 1L) "" else "s"} ago"
        }
        else -> {
            val days = minutes / 1440L
            "$days day${if (days == 1L) "" else "s"} ago"
        }
    }
}

private enum class AppTypeFilter { ALL, USER, SYSTEM }
private enum class EnabledFilter { ALL, ENABLED, DISABLED }
private enum class GooglePlayFilter { ALL, GOOGLE_PLAY, NOT_GOOGLE_PLAY }
private enum class FavoriteFilter { ALL, FAVORITES, NOT_FAVORITES }
private enum class LabelFilter { ALL, LABELLED, UNLABELLED }
private enum class SortOption(val title: String, val icon: ImageVector, val available: Boolean) {
    NAME("Name", Icons.Default.Sort, true),
    INSTALL_DATE("Install date", Icons.Default.Event, true),
    UPDATE_DATE("Update date", Icons.Default.Update, true),
    BACKUP_DATE("Backup date", Icons.Default.Backup, false),
    BACKUP_SIZE("Backup size", Icons.Default.Storage, false),
    DATE_USED("Date used", Icons.Default.TouchApp, true),
    APP_SIZE("App size", Icons.Default.Android, true),
}
private data class AppsFilterState(
    val sort: SortOption = SortOption.NAME,
    val descending: Boolean = false,
    val appType: AppTypeFilter = AppTypeFilter.ALL,
    val enabled: EnabledFilter = EnabledFilter.ALL,
    val googlePlay: GooglePlayFilter = GooglePlayFilter.ALL,
    val favorite: FavoriteFilter = FavoriteFilter.ALL,
    val label: LabelFilter = LabelFilter.ALL,
    val selectedLabels: Set<String> = emptySet(),
)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppsFilterScreen(
    onOpen: (Screen) -> Unit,
    onOpenApp: (AppItem) -> Unit,
    searchQuery: String,
    filterOpen: Boolean,
    onFilterOpenChange: (Boolean) -> Unit,
    onInventoryCountChange: (Int) -> Unit,
) {
    val context = LocalContext.current
    val lifecycleOwner = LocalLifecycleOwner.current
    val repository = remember(context) { InstalledAppRepository(context) }
    val organizationStore = remember(context) { AppOrganizationStore(context) }
    val usageRepository = remember(context) { AppUsageRepository(context) }
    val cachedApps = remember { InstalledAppRepository.cached() }
    var apps by remember { mutableStateOf(cachedApps) }
    var appsLoading by remember { mutableStateOf(cachedApps.isEmpty()) }
    var error by remember { mutableStateOf<String?>(null) }
    var usageAccess by remember { mutableStateOf(usageRepository.hasUsageAccess()) }
    var lastUsedTimes by remember { mutableStateOf<Map<String, Long>>(emptyMap()) }
    var showLabelPicker by remember { mutableStateOf(false) }
    var labelDraft by remember { mutableStateOf<Set<String>>(emptySet()) }
    var selectedApp by remember { mutableStateOf<AppItem?>(null) }
    var activeFilter by remember { mutableStateOf(AppsFilterState()) }
    var pendingFilter by remember(activeFilter, filterOpen) { mutableStateOf(activeFilter) }
    fun reloadApps() {
        runCatching { repository.load() }
            .onSuccess {
                apps = it
                onInventoryCountChange(it.size)
                error = null
                appsLoading = false
            }
            .onFailure {
                onInventoryCountChange(0)
                error = it.message ?: "Unable to discover installed apps"
                appsLoading = false
            }
    }

    fun refreshUsageAccess() {
        usageAccess = usageRepository.hasUsageAccess()
        lastUsedTimes = if (usageAccess) usageRepository.loadLastUsed() else emptyMap()
    }

    LaunchedEffect(repository) { reloadApps() }
    LaunchedEffect(usageRepository) { refreshUsageAccess() }

    DisposableEffect(lifecycleOwner, repository, usageRepository) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME) {
                reloadApps()
                refreshUsageAccess()
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
    }

    LaunchedEffect(filterOpen) {
        if (filterOpen) pendingFilter = activeFilter
    }

    val visibleApps = remember(apps, activeFilter, searchQuery, lastUsedTimes) {
        val query = searchQuery.trim().lowercase()
        val filtered = apps.asSequence()
            .filter { app -> !organizationStore.isBlacklisted(app.packageName) }
            .filter { app -> when (activeFilter.appType) { AppTypeFilter.ALL -> true; AppTypeFilter.USER -> !app.isSystem; AppTypeFilter.SYSTEM -> app.isSystem } }
            .filter { app -> when (activeFilter.enabled) { EnabledFilter.ALL -> true; EnabledFilter.ENABLED -> app.isEnabled; EnabledFilter.DISABLED -> !app.isEnabled } }
            .filter { app -> when (activeFilter.googlePlay) { GooglePlayFilter.ALL -> true; GooglePlayFilter.GOOGLE_PLAY -> app.installedFromGooglePlay == true; GooglePlayFilter.NOT_GOOGLE_PLAY -> app.installedFromGooglePlay == false } }
            .filter { app -> when (activeFilter.favorite) { FavoriteFilter.ALL -> true; FavoriteFilter.FAVORITES -> organizationStore.isFavorite(app.packageName); FavoriteFilter.NOT_FAVORITES -> !organizationStore.isFavorite(app.packageName) } }
            .filter { app -> when (activeFilter.label) { LabelFilter.ALL -> true; LabelFilter.LABELLED -> organizationStore.labels(app.packageName).isNotEmpty(); LabelFilter.UNLABELLED -> organizationStore.labels(app.packageName).isEmpty() } }
            .filter { app -> activeFilter.selectedLabels.isEmpty() || organizationStore.labels(app.packageName).intersect(activeFilter.selectedLabels).isNotEmpty() }
            .filter { app -> query.isBlank() || app.name.lowercase().contains(query) || app.packageName.lowercase().contains(query) }
            .toList()
        when (activeFilter.sort) {
            SortOption.NAME -> filtered.sortedWith(if (activeFilter.descending) compareByDescending<AppItem> { it.name.lowercase() } else compareBy<AppItem> { it.name.lowercase() })
            SortOption.INSTALL_DATE -> filtered.sortedWith(compareBy<AppItem> { it.firstInstallTime ?: Long.MAX_VALUE }.let { c -> if (activeFilter.descending) c.reversed() else c })
            SortOption.UPDATE_DATE -> filtered.sortedWith(compareBy<AppItem> { it.lastUpdateTime ?: Long.MAX_VALUE }.let { c -> if (activeFilter.descending) c.reversed() else c })
            SortOption.APP_SIZE -> filtered.sortedWith(compareBy<AppItem> { it.apkSizeBytes ?: Long.MAX_VALUE }.let { c -> if (activeFilter.descending) c.reversed() else c })
            SortOption.DATE_USED -> filtered.sortedWith(compareBy<AppItem> { lastUsedTimes[it.packageName] ?: Long.MIN_VALUE }.let { c -> if (activeFilter.descending) c.reversed() else c })
            SortOption.BACKUP_DATE, SortOption.BACKUP_SIZE -> filtered.sortedBy { it.name.lowercase() }
        }
    }

    Column(Modifier.fillMaxHeight()) {

        LazyColumn(
            Modifier.weight(1f),
            contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
        val activeChips = buildList {
            if (activeFilter.favorite == FavoriteFilter.FAVORITES) add("Favorites")
            if (activeFilter.favorite == FavoriteFilter.NOT_FAVORITES) add("Not favorites")
            if (activeFilter.label == LabelFilter.LABELLED) add("Labelled")
            if (activeFilter.label == LabelFilter.UNLABELLED) add("Not labelled")
            if (activeFilter.selectedLabels.isNotEmpty()) add("Labels: " + activeFilter.selectedLabels.joinToString(", "))
            if (activeFilter.appType == AppTypeFilter.USER) add("User apps")
            if (activeFilter.appType == AppTypeFilter.SYSTEM) add("System apps")
            if (activeFilter.enabled == EnabledFilter.ENABLED) add("Enabled")
            if (activeFilter.enabled == EnabledFilter.DISABLED) add("Disabled")
            if (activeFilter.googlePlay == GooglePlayFilter.GOOGLE_PLAY) add("Installed from Google Play")
            if (activeFilter.googlePlay == GooglePlayFilter.NOT_GOOGLE_PLAY) add("Not installed from Google Play")
        }

        if (activeChips.isNotEmpty()) {
            item {
                LazyRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    contentPadding = PaddingValues(vertical = 4.dp),
                ) {
                    items(activeChips) { chip ->
                        FilterChip(
                            selected = true,
                            onClick = {
                                activeFilter = when {
                                    chip == "Favorites" || chip == "Not favorites" -> activeFilter.copy(favorite = FavoriteFilter.ALL)
                                    chip == "Labelled" || chip == "Not labelled" || chip.startsWith("Labels:") -> activeFilter.copy(label = LabelFilter.ALL, selectedLabels = emptySet())
                                    chip == "User apps" || chip == "System apps" -> activeFilter.copy(appType = AppTypeFilter.ALL)
                                    chip == "Enabled" || chip == "Disabled" -> activeFilter.copy(enabled = EnabledFilter.ALL)
                                    chip == "Installed from Google Play" || chip == "Not installed from Google Play" -> activeFilter.copy(googlePlay = GooglePlayFilter.ALL)
                                    else -> activeFilter
                                }
                            },
                            label = { Text(chip) },
                            trailingIcon = { Icon(Icons.Default.Clear, contentDescription = "Remove $chip") },
                        )
                    }
                }
            }
        }

        if (error != null) {
            item {
                Text(
                    error!!,
                    color = MaterialTheme.colorScheme.error,
                    modifier = Modifier.padding(vertical = 12.dp),
                )
            }
        } else if (appsLoading) {
            item {
                Text(
                    "Loading installed apps…",
                    modifier = Modifier.padding(vertical = 24.dp),
                )
            }
        } else if (visibleApps.isEmpty()) {
            item { Text("No matching installed apps.", modifier = Modifier.padding(vertical = 24.dp)) }
        } else {
            items(visibleApps, key = { it.packageName }) { app ->
                Card(
                    Modifier.fillMaxWidth().clickable { onOpenApp(app) }
                ) {
                    ListItem(
                        headlineContent = {
                            Text(
                                app.name,
                                fontWeight = FontWeight.Bold,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                        },
                        supportingContent = {
                            Column {
                                Text(
                                    app.packageName,
                                    style = MaterialTheme.typography.bodySmall,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis,
                                )
                                Text(
                                    if (app.isSystem) "System app • ${app.size}" else "User app • ${app.size}",
                                    style = MaterialTheme.typography.labelSmall,
                                )
                                Text(
                                    when (activeFilter.sort) {
                                        SortOption.NAME -> "No backup on device"
                                        SortOption.INSTALL_DATE -> app.firstInstallTime?.let { "Installed: ${formatRelativeTime(it)}" } ?: "Install date unavailable"
                                        SortOption.UPDATE_DATE -> app.lastUpdateTime?.let { "Last updated: ${formatRelativeTime(it)}" } ?: "Update date unavailable"
                                        SortOption.BACKUP_DATE -> "No backup on device"
                                        SortOption.BACKUP_SIZE -> "No backup on device"
                                        SortOption.DATE_USED -> lastUsedTimes[app.packageName]?.let { "Last used: ${formatRelativeTime(it)}" } ?: "Usage unavailable"
                                        SortOption.APP_SIZE -> "App size: ${app.size}"
                                    },
                                    style = MaterialTheme.typography.labelSmall,
                                )
                            }
                        },
                        leadingContent = {
                            androidx.compose.foundation.layout.Box(
                                Modifier.size(44.dp).clip(CircleShape),
                                contentAlignment = Alignment.Center,
                            ) {
                                Text(app.name.take(1).uppercase(), fontWeight = FontWeight.Bold)
                            }
                        },
                        trailingContent = {
                            IconButton(onClick = { selectedApp = app }) {
                                Icon(Icons.Default.MoreVert, contentDescription = stringResource(R.string.app_actions))
                            }
                        },
                    )
                }
            }
        }
        }
    }


    if (selectedApp != null) {
        val app = selectedApp!!
        ModalBottomSheet(onDismissRequest = { selectedApp = null }) {
            Column(
                Modifier.fillMaxWidth().padding(horizontal = 16.dp).padding(bottom = 28.dp),
                verticalArrangement = Arrangement.spacedBy(10.dp),
            ) {
                Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                    androidx.compose.foundation.layout.Box(
                        Modifier.size(52.dp).clip(CircleShape),
                        contentAlignment = Alignment.Center,
                    ) {
                        Text(app.name.take(1).uppercase(), fontWeight = FontWeight.Bold, style = MaterialTheme.typography.titleLarge)
                    }
                    Spacer(Modifier.width(12.dp))
                    Column(Modifier.weight(1f)) {
                        Text(app.packageName, style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant, maxLines = 1, overflow = TextOverflow.Ellipsis)
                        Text(app.name, style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold, maxLines = 1, overflow = TextOverflow.Ellipsis)
                    }
                }
                LazyRow(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    item {
                        AppActionChip(stringResource(R.string.launch), Icons.Default.PlayArrow, app.isEnabled) {
                            context.packageManager.getLaunchIntentForPackage(app.packageName)?.let {
                                context.startActivity(it)
                                selectedApp = null
                            }
                        }
                    }
                    item {
                        AppActionChip(if (app.isEnabled) stringResource(R.string.disable) else stringResource(R.string.enable), Icons.Default.PowerSettingsNew) {
                            selectedApp = null
                            onOpenApp(app)
                            onOpen(Screen.MANAGEMENT)
                        }
                    }
                    item {
                        AppActionChip(stringResource(R.string.uninstall), Icons.Default.Delete) {
                            runCatching { context.startActivity(Intent(Intent.ACTION_DELETE, Uri.parse("package:${app.packageName}"))) }
                            selectedApp = null
                        }
                    }
                    item {
                        AppActionChip(stringResource(R.string.force_stop), Icons.Default.Stop) {
                            selectedApp = null
                            onOpenApp(app)
                            onOpen(Screen.MANAGEMENT)
                        }
                    }
                    item {
                        AppActionChip(stringResource(R.string.clear_data), Icons.Default.DeleteSweep) {
                            selectedApp = null
                            onOpenApp(app)
                            onOpen(Screen.MANAGEMENT)
                        }
                    }
                    item {
                        AppActionChip(stringResource(R.string.play_store), Icons.Default.ShoppingBag) {
                            val market = Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=${app.packageName}"))
                            val fallback = Intent(Intent.ACTION_VIEW, Uri.parse("https://play.google.com/store/apps/details?id=${app.packageName}"))
                            runCatching { context.startActivity(market) }.onFailure { context.startActivity(fallback) }
                            selectedApp = null
                        }
                    }
                    item {
                        AppActionChip(stringResource(R.string.app_info), Icons.Default.Info) {
                            context.startActivity(Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS, Uri.parse("package:${app.packageName}")))
                            selectedApp = null
                        }
                    }
                    item {
                        AppActionChip(stringResource(R.string.share_apk), Icons.Default.Share) {
                            selectedApp = null
                            onOpenApp(app)
                            onOpen(Screen.APP_BACKUP)
                        }
                    }
                }
                HorizontalDivider()
                ListItem(
                    headlineContent = { Text(stringResource(R.string.favorites)) },
                    leadingContent = { Icon(Icons.Default.Star, contentDescription = null) },
                    modifier = Modifier.clickable { organizationStore.setFavorite(app.packageName, !organizationStore.isFavorite(app.packageName)) },
                    trailingContent = { Text(if (organizationStore.isFavorite(app.packageName)) stringResource(R.string.favorite) else stringResource(R.string.add_to_favorites)) },
                )
                ListItem(
                    headlineContent = { Text(stringResource(R.string.backup_restore)) },
                    leadingContent = { Icon(Icons.Default.Backup, contentDescription = null) },
                    modifier = Modifier.clickable {
                        selectedApp = null
                        onOpenApp(app)
                        onOpen(Screen.APP_BACKUP)
                    },
                )
                ListItem(
                    headlineContent = { Text(stringResource(R.string.set_app_labels)) },
                    leadingContent = { Icon(Icons.Default.Label, contentDescription = null) },
                    modifier = Modifier.clickable {
                        selectedApp = null
                        onOpenApp(app)
                        onOpen(Screen.MANAGEMENT)
                    },
                )
                ListItem(
                    headlineContent = { Text(stringResource(R.string.add_to_blacklist)) },
                    leadingContent = { Icon(Icons.Default.Block, contentDescription = null) },
                    modifier = Modifier.clickable {
                        organizationStore.setBlacklisted(app.packageName, true)
                        selectedApp = null
                    },
                )
                ListItem(
                    headlineContent = { Text(stringResource(R.string.battery_optimization)) },
                    supportingContent = { Text(stringResource(R.string.battery_optimization_description)) },
                    leadingContent = { Icon(Icons.Default.BatteryChargingFull, contentDescription = null) },
                    modifier = Modifier.clickable { context.startActivity(Intent(Settings.ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS)) },
                )
            }
        }
    }

    if (showLabelPicker) {
        androidx.compose.material3.AlertDialog(
            onDismissRequest = { showLabelPicker = false },
            title = { Text("Select labels to filter") },
            text = {
                val labels = organizationStore.allLabels(apps.map { it.packageName }).toList()
                if (labels.isEmpty()) {
                    Text("No labels have been created yet.")
                } else {
                    Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                        labels.forEach { label ->
                            Row(
                                Modifier.fillMaxWidth().clickable {
                                    labelDraft = if (label in labelDraft) labelDraft - label else labelDraft + label
                                },
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                Checkbox(
                                    checked = label in labelDraft,
                                    onCheckedChange = { checked ->
                                        labelDraft = if (checked) labelDraft + label else labelDraft - label
                                    },
                                )
                                Text(label)
                            }
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = {
                    pendingFilter = pendingFilter.copy(label = LabelFilter.ALL, selectedLabels = labelDraft)
                    showLabelPicker = false
                }) { Text("APPLY") }
            },
            dismissButton = {
                TextButton(onClick = { showLabelPicker = false }) { Text("CANCEL") }
            },
        )
    }

    if (filterOpen) {
        ModalBottomSheet(onDismissRequest = { onFilterOpenChange(false) }) {
            Column(Modifier.fillMaxWidth().fillMaxHeight(0.88f)) {
                Row(Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp), verticalAlignment = Alignment.CenterVertically) {
                    TextButton(onClick = { onFilterOpenChange(false) }) { Text("✕") }
                    Spacer(Modifier.weight(1f))
                    Button(onClick = { activeFilter = pendingFilter; onFilterOpenChange(false) }) { Text("✓  APPLY OPTIONS") }
                }
                HorizontalDivider()
                LazyColumn(Modifier.fillMaxWidth(), contentPadding = PaddingValues(start = 16.dp, end = 16.dp, top = 16.dp, bottom = 32.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
                    item { Text("SORT", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold) }
                    item {
                        LazyRow(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(14.dp),
                            contentPadding = PaddingValues(horizontal = 2.dp),
                        ) {
                            items(SortOption.values().toList(), key = { it.name }) { option ->
                                val selected = pendingFilter.sort == option
                                val tint = if (!option.available) {
                                    MaterialTheme.colorScheme.onSurface.copy(alpha = 0.35f)
                                } else if (selected) {
                                    MaterialTheme.colorScheme.primary
                                } else {
                                    MaterialTheme.colorScheme.onSurfaceVariant
                                }
                                Column(
                                    modifier = Modifier
                                        .width(84.dp)
                                        .clickable(enabled = option.available) {
                                            if (option == SortOption.DATE_USED && !usageAccess) {
                                                context.startActivity(Intent(Settings.ACTION_USAGE_ACCESS_SETTINGS))
                                            } else {
                                                pendingFilter = if (selected) {
                                                    pendingFilter.copy(descending = !pendingFilter.descending)
                                                } else {
                                                    pendingFilter.copy(sort = option, descending = false)
                                                }
                                            }
                                        },
                                    horizontalAlignment = Alignment.CenterHorizontally,
                                ) {
                                    androidx.compose.foundation.layout.Box(
                                        modifier = Modifier
                                            .size(56.dp)
                                            .clip(CircleShape),
                                        contentAlignment = Alignment.Center,
                                    ) {
                                        Surface(
                                            modifier = Modifier.size(48.dp),
                                            shape = CircleShape,
                                            color = if (selected) MaterialTheme.colorScheme.primaryContainer else Color.Transparent,
                                            border = androidx.compose.foundation.BorderStroke(1.dp, tint),
                                        ) {
                                            androidx.compose.foundation.layout.Box(contentAlignment = Alignment.Center) {
                                                Icon(option.icon, contentDescription = null, tint = tint, modifier = Modifier.size(20.dp))
                                            }
                                        }
                                        if (selected) {
                                            Text(
                                                if (pendingFilter.descending) "↓" else "↑",
                                                style = MaterialTheme.typography.labelSmall,
                                                color = tint,
                                                fontWeight = FontWeight.Bold,
                                                modifier = Modifier.align(Alignment.BottomCenter).padding(bottom = 3.dp),
                                            )
                                        }
                                    }
                                    Text(
                                        option.title,
                                        style = MaterialTheme.typography.labelMedium,
                                        color = tint,
                                        maxLines = 2,
                                        overflow = TextOverflow.Ellipsis,
                                        textAlign = androidx.compose.ui.text.style.TextAlign.Center,
                                        modifier = Modifier.padding(top = 6.dp),
                                    )
                                }
                            }
                        }
                    }
                    item {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            Text("FILTER", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                            Spacer(Modifier.weight(1f))
                            TextButton(
                                onClick = { pendingFilter = AppsFilterState() },
                                enabled = pendingFilter != AppsFilterState(),
                            ) {
                                Text("RESET FILTERS")
                            }
                        }
                    }
                    item {
                        Text("Favorites", fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(selected = pendingFilter.favorite == FavoriteFilter.ALL, onClick = { pendingFilter = pendingFilter.copy(favorite = FavoriteFilter.ALL) }, label = { Text("All") })
                            FilterChip(selected = pendingFilter.favorite == FavoriteFilter.FAVORITES, onClick = { pendingFilter = pendingFilter.copy(favorite = FavoriteFilter.FAVORITES) }, label = { Text("Favorites") })
                            FilterChip(selected = pendingFilter.favorite == FavoriteFilter.NOT_FAVORITES, onClick = { pendingFilter = pendingFilter.copy(favorite = FavoriteFilter.NOT_FAVORITES) }, label = { Text("Not favorites") })
                        }
                    }
                    item {
                        Text("App Labels", fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(selected = pendingFilter.label == LabelFilter.ALL && pendingFilter.selectedLabels.isEmpty(), onClick = { pendingFilter = pendingFilter.copy(label = LabelFilter.ALL, selectedLabels = emptySet()) }, label = { Text("All") })
                            TextButton(onClick = {
                                labelDraft = pendingFilter.selectedLabels
                                showLabelPicker = true
                            }) {
                                Text(if (pendingFilter.selectedLabels.isEmpty()) "Select labels to filter" else pendingFilter.selectedLabels.size.toString() + " labels selected")
                            }
                            FilterChip(selected = pendingFilter.label == LabelFilter.LABELLED && pendingFilter.selectedLabels.isEmpty(), onClick = { pendingFilter = pendingFilter.copy(label = LabelFilter.LABELLED, selectedLabels = emptySet()) }, label = { Text("Labelled") })
                            FilterChip(selected = pendingFilter.label == LabelFilter.UNLABELLED && pendingFilter.selectedLabels.isEmpty(), onClick = { pendingFilter = pendingFilter.copy(label = LabelFilter.UNLABELLED, selectedLabels = emptySet()) }, label = { Text("Unlabelled") })
                        }
                    }

                    item {
                        Text("App type", fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(selected = pendingFilter.appType == AppTypeFilter.ALL, onClick = { pendingFilter = pendingFilter.copy(appType = AppTypeFilter.ALL) }, label = { Text("All") })
                            FilterChip(selected = pendingFilter.appType == AppTypeFilter.USER, onClick = { pendingFilter = pendingFilter.copy(appType = AppTypeFilter.USER) }, label = { Text("User apps") })
                            FilterChip(selected = pendingFilter.appType == AppTypeFilter.SYSTEM, onClick = { pendingFilter = pendingFilter.copy(appType = AppTypeFilter.SYSTEM) }, label = { Text("System apps") })
                        }
                    }
                    item {
                        Text("On-device backup", fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("All") })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("Backed up") })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("Not backed up") })
                        }
                    }
                    item {
                        Text("Cloud sync", fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("All") })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("Synced") })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("Not synced") })
                        }
                    }
                    item {
                        Text("Install status", fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("All") })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("Installed") })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("Not installed") })
                        }
                    }

                    item {
                        Text("Enabled status", fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(selected = pendingFilter.enabled == EnabledFilter.ALL, onClick = { pendingFilter = pendingFilter.copy(enabled = EnabledFilter.ALL) }, label = { Text("All") })
                            FilterChip(selected = pendingFilter.enabled == EnabledFilter.ENABLED, onClick = { pendingFilter = pendingFilter.copy(enabled = EnabledFilter.ENABLED) }, label = { Text("Enabled") })
                            FilterChip(selected = pendingFilter.enabled == EnabledFilter.DISABLED, onClick = { pendingFilter = pendingFilter.copy(enabled = EnabledFilter.DISABLED) }, label = { Text("Disabled") })
                        }
                    }
                    item {
                        Text("Google Play install source", fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(selected = pendingFilter.googlePlay == GooglePlayFilter.ALL, onClick = { pendingFilter = pendingFilter.copy(googlePlay = GooglePlayFilter.ALL) }, label = { Text("All") })
                            FilterChip(selected = pendingFilter.googlePlay == GooglePlayFilter.GOOGLE_PLAY, onClick = { pendingFilter = pendingFilter.copy(googlePlay = GooglePlayFilter.GOOGLE_PLAY) }, label = { Text("Installed from Google Play") })
                            FilterChip(selected = pendingFilter.googlePlay == GooglePlayFilter.NOT_GOOGLE_PLAY, onClick = { pendingFilter = pendingFilter.copy(googlePlay = GooglePlayFilter.NOT_GOOGLE_PLAY) }, label = { Text("Not installed from Google Play") })
                        }
                    }
                    item {
                        Text("Miscellaneous", fontWeight = FontWeight.SemiBold)
                        Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                            listOf("Apps with multiple backups", "Apps with Protected backups", "Backups with notes", "Backups with older APKs", "Backups with newer APKs").forEach { label -> FilterChip(enabled = false, selected = false, onClick = {}, label = { Text(label) }) }
                        }
                    }
                    item {
                        Text(
                            if (usageAccess) "Date used uses Android Usage Access data." else "Date used requires Usage Access. Tap it to open Android settings.",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                    item { Text("Backup/cloud options stay disabled until BaRe has a verified backup index. No backup or cloud metadata is fabricated.", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant) }
                }
            }
        }
    }
}
@Composable
private fun AppActionChip(text: String, icon: ImageVector, enabled: Boolean = true, onClick: () -> Unit) {
    AssistChip(
        onClick = onClick,
        enabled = enabled,
        label = { Text(text) },
        leadingIcon = { Icon(icon, contentDescription = null) },
        colors = AssistChipDefaults.assistChipColors(
            containerColor = MaterialTheme.colorScheme.primaryContainer,
            labelColor = MaterialTheme.colorScheme.onPrimaryContainer,
            leadingIconContentColor = MaterialTheme.colorScheme.onPrimaryContainer,
        ),
    )
}
