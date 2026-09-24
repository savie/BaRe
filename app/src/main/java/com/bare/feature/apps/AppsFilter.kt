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
import androidx.compose.foundation.Image
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
import androidx.compose.material3.Switch
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
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.bare.R
import com.bare.app.AppItem
import com.bare.app.Screen
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.drawable.Drawable
import android.net.Uri
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.os.PowerManager
import android.provider.Settings

private enum class AppTypeFilter { ALL, USER, SYSTEM }
private enum class EnabledFilter { ALL, ENABLED, DISABLED }
private enum class GooglePlayFilter { ALL, GOOGLE_PLAY, NOT_GOOGLE_PLAY }
private enum class FavoriteFilter { ALL, FAVORITES, NOT_FAVORITES }
private enum class BlacklistMode { HIDE, APK_ONLY }
private enum class DestructiveAppAction { DISABLE, FORCE_STOP, CLEAR_DATA, UNINSTALL }
private enum class LabelFilter { ALL, LABELLED, UNLABELLED }
private enum class SortOption(val titleRes: Int, val icon: ImageVector, val available: Boolean) {
    NAME(R.string.sort_name, Icons.Default.Sort, true),
    INSTALL_DATE(R.string.install_date, Icons.Default.Event, true),
    UPDATE_DATE(R.string.update_date, Icons.Default.Update, true),
    BACKUP_DATE(R.string.backup_date, Icons.Default.Backup, false),
    BACKUP_SIZE(R.string.backup_size, Icons.Default.Storage, false),
    DATE_USED(R.string.date_used, Icons.Default.TouchApp, true),
    APP_SIZE(R.string.app_size, Icons.Default.Android, true),
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

private fun Drawable.toAppImageBitmap(sizePx: Int = 96): androidx.compose.ui.graphics.ImageBitmap {
    val bitmap = Bitmap.createBitmap(sizePx, sizePx, Bitmap.Config.ARGB_8888)
    val canvas = Canvas(bitmap)
    setBounds(0, 0, sizePx, sizePx)
    draw(canvas)
    return bitmap.asImageBitmap()
}

@Composable
private fun AppIcon(app: AppItem, size: androidx.compose.ui.unit.Dp, showFavoriteBadge: Boolean) {
    androidx.compose.foundation.layout.Box(
        Modifier.size(size),
        contentAlignment = Alignment.Center,
    ) {
        app.icon?.let { icon ->
            Image(
                bitmap = remember(icon) { icon.toAppImageBitmap() },
                contentDescription = app.name,
                modifier = Modifier.size(size).clip(CircleShape),
            )
        } ?: androidx.compose.foundation.layout.Box(
            Modifier.size(size).clip(CircleShape),
            contentAlignment = Alignment.Center,
        ) {
            Text(app.name.take(1).uppercase(), fontWeight = FontWeight.Bold)
        }
        if (showFavoriteBadge) {
            Surface(
                modifier = Modifier.align(Alignment.BottomEnd).size(18.dp),
                shape = CircleShape,
                color = MaterialTheme.colorScheme.primaryContainer,
            ) {
                Icon(
                    Icons.Default.Star,
                    contentDescription = stringResource(R.string.favorite),
                    tint = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(2.dp),
                )
            }
        }
    }
}

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
    val inventory = remember(context) { AppInventoryBehavior(context) }
    val organizationStore = remember(context) { AppOrganizationBehavior(context) }
    val usageRepository = remember(context) { AppUsageRepository(context) }
    val cachedApps = remember { inventory.cached() }
    var apps by remember { mutableStateOf(cachedApps) }
    var appsLoading by remember { mutableStateOf(cachedApps.isEmpty()) }
    var error by remember { mutableStateOf<String?>(null) }
    var usageAccess by remember { mutableStateOf(usageRepository.hasUsageAccess()) }
    var lastUsedTimes by remember { mutableStateOf<Map<String, Long>>(emptyMap()) }
    var showLabelPicker by remember { mutableStateOf(false) }
    var labelDraft by remember { mutableStateOf<Set<String>>(emptySet()) }
    var selectedApp by remember { mutableStateOf<AppItem?>(null) }
    var blacklistTarget by remember { mutableStateOf<AppItem?>(null) }
    var destructiveAction by remember { mutableStateOf<DestructiveAppAction?>(null) }
    var blacklistMode by remember { mutableStateOf(BlacklistMode.HIDE) }
    var activeFilter by remember { mutableStateOf(AppsFilterState()) }
    var pendingFilter by remember(activeFilter, filterOpen) { mutableStateOf(activeFilter) }
    fun reloadApps() {
        if (apps.isEmpty()) appsLoading = true
        Thread {
            val result = runCatching { inventory.load() }
            Handler(Looper.getMainLooper()).post {
                result
                    .onSuccess {
                        apps = it
                        onInventoryCountChange(it.size)
                        error = null
                        appsLoading = false
                    }
                    .onFailure {
                        onInventoryCountChange(0)
                        error = it.message ?: context.getString(R.string.unable_to_discover_installed_apps)
                        appsLoading = false
                    }
            }
        }.start()
    }

    fun refreshUsageAccess() {
        usageAccess = usageRepository.hasUsageAccess()
        lastUsedTimes = if (usageAccess) usageRepository.loadLastUsed() else emptyMap()
    }

    fun openAppInfo(app: AppItem) {
        AppActionBehavior.openAppInfo(context, app.packageName)
        selectedApp = null
    }

    fun runRootActionOrFallback(
        app: AppItem,
        action: (String) -> AppActionBehavior.Result,
        fallback: () -> Unit = { openAppInfo(app) },
    ) {
        Thread {
            val result = runCatching { action(app.packageName) }
                .getOrDefault(AppActionBehavior.Result.FAILED)
            Handler(Looper.getMainLooper()).post {
                if (result == AppActionBehavior.Result.COMPLETED) {
                    selectedApp = null
                    reloadApps()
                } else {
                    fallback()
                }
            }
        }.start()
    }

    fun requestBatteryOptimizationChange(app: AppItem, enableOptimization: Boolean) {
        val result = AppActionBehavior.setBatteryOptimization(
            context,
            app.packageName,
            exempt = !enableOptimization,
        )
        if (result == AppActionBehavior.Result.COMPLETED ||
            result == AppActionBehavior.Result.OPENED_SYSTEM
        ) {
            selectedApp = null
            if (result == AppActionBehavior.Result.COMPLETED) reloadApps()
        } else {
            openAppInfo(app)
        }
    }

    fun launchSystemUninstall(app: AppItem) {
        val result = AppActionBehavior.uninstallWithSystemFallback(context, app.packageName)
        if (result != AppActionBehavior.Result.UNAVAILABLE) selectedApp = null
    }

    LaunchedEffect(inventory) { reloadApps() }
    LaunchedEffect(usageRepository) { refreshUsageAccess() }

    DisposableEffect(lifecycleOwner, inventory, usageRepository) {
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
            if (activeFilter.favorite == FavoriteFilter.FAVORITES) add(context.getString(R.string.favorite))
            if (activeFilter.favorite == FavoriteFilter.NOT_FAVORITES) add(context.getString(R.string.not_favorite))
            if (activeFilter.label == LabelFilter.LABELLED) add(context.getString(R.string.labelled))
            if (activeFilter.label == LabelFilter.UNLABELLED) add(context.getString(R.string.unlabelled))
            if (activeFilter.selectedLabels.isNotEmpty()) add(context.getString(R.string.labels_prefix, activeFilter.selectedLabels.joinToString(", ")))
            if (activeFilter.appType == AppTypeFilter.USER) add(context.getString(R.string.user_apps))
            if (activeFilter.appType == AppTypeFilter.SYSTEM) add(context.getString(R.string.system_apps))
            if (activeFilter.enabled == EnabledFilter.ENABLED) add(context.getString(R.string.enabled))
            if (activeFilter.enabled == EnabledFilter.DISABLED) add(context.getString(R.string.disabled))
            if (activeFilter.googlePlay == GooglePlayFilter.GOOGLE_PLAY) add(context.getString(R.string.installed_from_google_play))
            if (activeFilter.googlePlay == GooglePlayFilter.NOT_GOOGLE_PLAY) add(context.getString(R.string.not_installed_from_google_play))
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
                                    chip == context.getString(R.string.favorite) || chip == context.getString(R.string.not_favorite) -> activeFilter.copy(favorite = FavoriteFilter.ALL)
                                    chip == context.getString(R.string.labelled) || chip == "Not labelled" || chip.startsWith("Labels:") -> activeFilter.copy(label = LabelFilter.ALL, selectedLabels = emptySet())
                                    chip == context.getString(R.string.user_apps) || chip == context.getString(R.string.system_apps) -> activeFilter.copy(appType = AppTypeFilter.ALL)
                                    chip == context.getString(R.string.enabled) || chip == context.getString(R.string.disabled) -> activeFilter.copy(enabled = EnabledFilter.ALL)
                                    chip == context.getString(R.string.installed_from_google_play) || chip == context.getString(R.string.not_installed_from_google_play) -> activeFilter.copy(googlePlay = GooglePlayFilter.ALL)
                                    else -> activeFilter
                                }
                            },
                            label = { Text(chip) },
                            trailingIcon = { Icon(Icons.Default.Clear, contentDescription = context.getString(R.string.apps_remove_filter, chip)) },
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
                    stringResource(R.string.apps_loading),
                    modifier = Modifier.padding(vertical = 24.dp),
                )
            }
        } else if (visibleApps.isEmpty()) {
            item { Text(stringResource(R.string.apps_no_matching_installed_apps), modifier = Modifier.padding(vertical = 24.dp)) }
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
                                    when (activeFilter.sort) {
                                        SortOption.NAME -> context.getString(R.string.no_backup_on_device)
                                        SortOption.INSTALL_DATE -> app.firstInstallTime?.let { context.getString(R.string.installed_at, formatRelativeTime(context, it)) } ?: context.getString(R.string.install_date_unavailable)
                                        SortOption.UPDATE_DATE -> app.lastUpdateTime?.let { context.getString(R.string.last_updated_at, formatRelativeTime(context, it)) } ?: context.getString(R.string.update_date_unavailable)
                                        SortOption.BACKUP_DATE -> context.getString(R.string.no_backup_on_device)
                                        SortOption.BACKUP_SIZE -> context.getString(R.string.no_backup_on_device)
                                        SortOption.DATE_USED -> lastUsedTimes[app.packageName]?.let { context.getString(R.string.last_used_at, formatRelativeTime(context, it)) } ?: context.getString(R.string.usage_unavailable)
                                        SortOption.APP_SIZE -> context.getString(R.string.app_size_value, app.size)
                                    },
                                    style = MaterialTheme.typography.labelSmall,
                                )
                            }
                        },
                        leadingContent = {
                            AppIcon(
                                app = app,
                                size = 48.dp,
                                showFavoriteBadge = organizationStore.isFavorite(app.packageName),
                            )
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
        var favorite by remember(app.packageName) {
            mutableStateOf(organizationStore.isFavorite(app.packageName))
        }
        var batteryOptimizing by remember(app.packageName) {
            mutableStateOf(
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                    val powerManager = context.getSystemService(Context.POWER_SERVICE) as? PowerManager
                    powerManager?.isIgnoringBatteryOptimizations(app.packageName) != true
                } else {
                    false
                }
            )
        }
        ModalBottomSheet(onDismissRequest = { selectedApp = null }) {
            Column(
                Modifier.fillMaxWidth().padding(horizontal = 16.dp).padding(bottom = 28.dp),
                verticalArrangement = Arrangement.spacedBy(10.dp),
            ) {
                Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                    AppIcon(
                        app = app,
                        size = 52.dp,
                        showFavoriteBadge = organizationStore.isFavorite(app.packageName),
                    )
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
                            if (app.isEnabled) {
                                destructiveAction = DestructiveAppAction.DISABLE
                            } else {
                                runRootActionOrFallback(app, AppActionBehavior::enable)
                            }
                        }
                    }
                    item {
                        AppActionChip(stringResource(R.string.uninstall), Icons.Default.Delete) {
                            destructiveAction = DestructiveAppAction.UNINSTALL
                        }
                    }
                    item {
                        AppActionChip(stringResource(R.string.force_stop), Icons.Default.Stop) {
                            destructiveAction = DestructiveAppAction.FORCE_STOP
                        }
                    }
                    item {
                        AppActionChip(stringResource(R.string.clear_data), Icons.Default.DeleteSweep) {
                            destructiveAction = DestructiveAppAction.CLEAR_DATA
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
                            openAppInfo(app)
                        }
                    }
                    item {
                        AppActionChip(stringResource(R.string.share_apk), Icons.Default.Share, enabled = false) {
                            // APK sharing backend is not verified yet.
                        }
                    }
                }
                HorizontalDivider()
                ListItem(
                    headlineContent = {
                        Text(
                            if (favorite) stringResource(R.string.remove_from_favorites)
                            else stringResource(R.string.add_to_favorites),
                        )
                    },
                    leadingContent = { Icon(Icons.Default.Star, contentDescription = null) },
                    modifier = Modifier.clickable {
                        favorite = !favorite
                        organizationStore.setFavorite(app.packageName, favorite)
                        reloadApps()
                    },
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
                        blacklistTarget = app
                        blacklistMode = when {
                            organizationStore.isBlacklisted(app.packageName) -> BlacklistMode.HIDE
                            organizationStore.isApkOnlyInBatch(app.packageName) -> BlacklistMode.APK_ONLY
                            else -> BlacklistMode.HIDE
                        }
                    },
                )
                ListItem(
                    headlineContent = { Text(stringResource(R.string.battery_optimization)) },
                    supportingContent = {
                        Text(
                            if (batteryOptimizing) {
                                stringResource(R.string.battery_optimization_status_optimizing)
                            } else {
                                stringResource(R.string.battery_optimization_status_exempt)
                            }
                        )
                    },
                    leadingContent = { Icon(Icons.Default.BatteryChargingFull, contentDescription = null) },
                    trailingContent = {
                        Switch(
                            checked = batteryOptimizing,
                            onCheckedChange = { enableOptimization ->
                                Thread {
                                    val success = runCatching {
                                        RootAppActionExecutor.setBatteryOptimizationExempt(
                                            app.packageName,
                                            exempt = !enableOptimization,
                                        )
                                    }.getOrDefault(false)
                                    Handler(Looper.getMainLooper()).post {
                                        if (success) {
                                            batteryOptimizing = enableOptimization
                                            reloadApps()
                                        } else {
                                            selectedApp = null
                                            requestBatteryOptimizationChange(app, enableOptimization)
                                        }
                                    }
                                }.start()
                            },
                        )
                    },
                )
            }
        }
    }

    if (destructiveAction != null && selectedApp != null) {
        val target = selectedApp!!
        val action = destructiveAction!!
        val title = when (action) {
            DestructiveAppAction.DISABLE -> stringResource(R.string.disable)
            DestructiveAppAction.FORCE_STOP -> stringResource(R.string.force_stop)
            DestructiveAppAction.CLEAR_DATA -> stringResource(R.string.clear_data)
            DestructiveAppAction.UNINSTALL -> stringResource(R.string.uninstall)
        }
        val message = when (action) {
            DestructiveAppAction.DISABLE -> stringResource(R.string.confirm_disable_app, target.name)
            DestructiveAppAction.FORCE_STOP -> stringResource(R.string.confirm_force_stop_app, target.name)
            DestructiveAppAction.CLEAR_DATA -> stringResource(R.string.confirm_clear_data_app, target.name)
            DestructiveAppAction.UNINSTALL -> stringResource(R.string.confirm_uninstall_app, target.name)
        }
        androidx.compose.material3.AlertDialog(
            onDismissRequest = { destructiveAction = null },
            title = { Text(title) },
            text = { Text(message) },
            confirmButton = {
                TextButton(onClick = {
                    destructiveAction = null
                    when (action) {
                        DestructiveAppAction.DISABLE ->
                            runRootActionOrFallback(target, AppActionBehavior::disable)
                        DestructiveAppAction.FORCE_STOP ->
                            runRootActionOrFallback(target, AppActionBehavior::forceStop)
                        DestructiveAppAction.CLEAR_DATA ->
                            runRootActionOrFallback(target, AppActionBehavior::clearData)
                        DestructiveAppAction.UNINSTALL ->
                            runRootActionOrFallback(target, { packageName -> AppActionBehavior.uninstallWithSystemFallback(context, packageName) }) {
                                launchSystemUninstall(target)
                            }
                    }
                }) { Text(stringResource(R.string.ok)) }
            },
            dismissButton = {
                TextButton(onClick = { destructiveAction = null }) { Text(stringResource(R.string.cancel)) }
            },
        )
    }

    if (blacklistTarget != null) {
        val target = blacklistTarget!!
        androidx.compose.material3.AlertDialog(
            onDismissRequest = { blacklistTarget = null },
            title = { Text(target.name) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                    Row(
                        Modifier.fillMaxWidth().clickable { blacklistMode = BlacklistMode.HIDE },
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        androidx.compose.material3.RadioButton(
                            selected = blacklistMode == BlacklistMode.HIDE,
                            onClick = { blacklistMode = BlacklistMode.HIDE },
                        )
                        Text(stringResource(R.string.blacklist_hide_app), modifier = Modifier.weight(1f))
                    }
                    Row(
                        Modifier.fillMaxWidth().clickable { blacklistMode = BlacklistMode.APK_ONLY },
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        androidx.compose.material3.RadioButton(
                            selected = blacklistMode == BlacklistMode.APK_ONLY,
                            onClick = { blacklistMode = BlacklistMode.APK_ONLY },
                        )
                        Text(stringResource(R.string.blacklist_apk_only_batch), modifier = Modifier.weight(1f))
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = {
                    when (blacklistMode) {
                        BlacklistMode.HIDE -> {
                            organizationStore.setBlacklisted(target.packageName, true)
                            organizationStore.setApkOnlyInBatch(target.packageName, false)
                        }
                        BlacklistMode.APK_ONLY -> {
                            organizationStore.setBlacklisted(target.packageName, false)
                            organizationStore.setApkOnlyInBatch(target.packageName, true)
                        }
                    }
                    blacklistTarget = null
                    selectedApp = null
                    reloadApps()
                }) { Text(stringResource(R.string.ok)) }
            },
            dismissButton = {
                TextButton(onClick = { blacklistTarget = null }) { Text(stringResource(R.string.cancel)) }
            },
        )
    }

    if (showLabelPicker) {
        androidx.compose.material3.AlertDialog(
            onDismissRequest = { showLabelPicker = false },
            title = { Text(context.getString(R.string.select_labels_to_filter)) },
            text = {
                val labels = organizationStore.allLabels(apps.map { it.packageName }).toList()
                if (labels.isEmpty()) {
                    Text(stringResource(R.string.apps_no_labels_created))
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
                }) { Text(stringResource(R.string.apply)) }
            },
            dismissButton = {
                TextButton(onClick = { showLabelPicker = false }) { Text(stringResource(R.string.cancel)) }
            },
        )
    }

    if (filterOpen) {
        ModalBottomSheet(onDismissRequest = { onFilterOpenChange(false) }) {
            Column(Modifier.fillMaxWidth().fillMaxHeight(0.88f)) {
                Row(Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp), verticalAlignment = Alignment.CenterVertically) {
                    TextButton(onClick = { onFilterOpenChange(false) }) { Text(stringResource(R.string.close_mark)) }
                    Spacer(Modifier.weight(1f))
                    Button(onClick = { activeFilter = pendingFilter; onFilterOpenChange(false) }) { Text(stringResource(R.string.apps_apply_options)) }
                }
                HorizontalDivider()
                LazyColumn(Modifier.fillMaxWidth(), contentPadding = PaddingValues(start = 16.dp, end = 16.dp, top = 16.dp, bottom = 32.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
                    item { Text(stringResource(R.string.sort), style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold) }
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
                                                if (pendingFilter.descending) stringResource(R.string.sort_descending) else stringResource(R.string.sort_ascending),
                                                style = MaterialTheme.typography.labelSmall,
                                                color = tint,
                                                fontWeight = FontWeight.Bold,
                                                modifier = Modifier.align(Alignment.BottomCenter).padding(bottom = 3.dp),
                                            )
                                        }
                                    }
                                    Text(
                                        stringResource(option.titleRes),
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
                            Text(stringResource(R.string.filter), style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                            Spacer(Modifier.weight(1f))
                            TextButton(
                                onClick = { pendingFilter = AppsFilterState() },
                                enabled = pendingFilter != AppsFilterState(),
                            ) {
                                Text(stringResource(R.string.reset_filters))
                            }
                        }
                    }
                    item {
                        Text(stringResource(R.string.favorite), fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(selected = pendingFilter.favorite == FavoriteFilter.ALL, onClick = { pendingFilter = pendingFilter.copy(favorite = FavoriteFilter.ALL) }, label = { Text(stringResource(R.string.all)) })
                            FilterChip(selected = pendingFilter.favorite == FavoriteFilter.FAVORITES, onClick = { pendingFilter = pendingFilter.copy(favorite = FavoriteFilter.FAVORITES) }, label = { Text(stringResource(R.string.favorite)) })
                            FilterChip(selected = pendingFilter.favorite == FavoriteFilter.NOT_FAVORITES, onClick = { pendingFilter = pendingFilter.copy(favorite = FavoriteFilter.NOT_FAVORITES) }, label = { Text(stringResource(R.string.not_favorite)) })
                        }
                    }
                    item {
                        Text(stringResource(R.string.app_labels), fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(selected = pendingFilter.label == LabelFilter.ALL && pendingFilter.selectedLabels.isEmpty(), onClick = { pendingFilter = pendingFilter.copy(label = LabelFilter.ALL, selectedLabels = emptySet()) }, label = { Text(stringResource(R.string.all)) })
                            TextButton(onClick = {
                                labelDraft = pendingFilter.selectedLabels
                                showLabelPicker = true
                            }) {
                                Text(if (pendingFilter.selectedLabels.isEmpty()) context.getString(R.string.select_labels_to_filter) else pendingFilter.selectedLabels.size.toString() + " labels selected")
                            }
                            FilterChip(selected = pendingFilter.label == LabelFilter.LABELLED && pendingFilter.selectedLabels.isEmpty(), onClick = { pendingFilter = pendingFilter.copy(label = LabelFilter.LABELLED, selectedLabels = emptySet()) }, label = { Text(context.getString(R.string.labelled)) })
                            FilterChip(selected = pendingFilter.label == LabelFilter.UNLABELLED && pendingFilter.selectedLabels.isEmpty(), onClick = { pendingFilter = pendingFilter.copy(label = LabelFilter.UNLABELLED, selectedLabels = emptySet()) }, label = { Text(context.getString(R.string.unlabelled)) })
                        }
                    }

                    item {
                        Text(stringResource(R.string.app_type), fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(selected = pendingFilter.appType == AppTypeFilter.ALL, onClick = { pendingFilter = pendingFilter.copy(appType = AppTypeFilter.ALL) }, label = { Text(stringResource(R.string.all)) })
                            FilterChip(selected = pendingFilter.appType == AppTypeFilter.USER, onClick = { pendingFilter = pendingFilter.copy(appType = AppTypeFilter.USER) }, label = { Text(context.getString(R.string.user_apps)) })
                            FilterChip(selected = pendingFilter.appType == AppTypeFilter.SYSTEM, onClick = { pendingFilter = pendingFilter.copy(appType = AppTypeFilter.SYSTEM) }, label = { Text(context.getString(R.string.system_apps)) })
                        }
                    }
                    item {
                        Text(stringResource(R.string.on_device_backup), fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text(stringResource(R.string.all)) })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text(context.getString(R.string.backed_up)) })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text(context.getString(R.string.not_backed_up)) })
                        }
                    }
                    item {
                        Text(stringResource(R.string.cloud_sync), fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text(stringResource(R.string.all)) })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text(context.getString(R.string.synced)) })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text(context.getString(R.string.not_synced)) })
                        }
                    }
                    item {
                        Text(stringResource(R.string.install_status), fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text(stringResource(R.string.all)) })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text(context.getString(R.string.installed)) })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text(context.getString(R.string.not_installed)) })
                        }
                    }

                    item {
                        Text(stringResource(R.string.enabled_status), fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(selected = pendingFilter.enabled == EnabledFilter.ALL, onClick = { pendingFilter = pendingFilter.copy(enabled = EnabledFilter.ALL) }, label = { Text(stringResource(R.string.all)) })
                            FilterChip(selected = pendingFilter.enabled == EnabledFilter.ENABLED, onClick = { pendingFilter = pendingFilter.copy(enabled = EnabledFilter.ENABLED) }, label = { Text(context.getString(R.string.enabled)) })
                            FilterChip(selected = pendingFilter.enabled == EnabledFilter.DISABLED, onClick = { pendingFilter = pendingFilter.copy(enabled = EnabledFilter.DISABLED) }, label = { Text(context.getString(R.string.disabled)) })
                        }
                    }
                    item {
                        Text(stringResource(R.string.google_play_install_source), fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(selected = pendingFilter.googlePlay == GooglePlayFilter.ALL, onClick = { pendingFilter = pendingFilter.copy(googlePlay = GooglePlayFilter.ALL) }, label = { Text(stringResource(R.string.all)) })
                            FilterChip(selected = pendingFilter.googlePlay == GooglePlayFilter.GOOGLE_PLAY, onClick = { pendingFilter = pendingFilter.copy(googlePlay = GooglePlayFilter.GOOGLE_PLAY) }, label = { Text(context.getString(R.string.installed_from_google_play)) })
                            FilterChip(selected = pendingFilter.googlePlay == GooglePlayFilter.NOT_GOOGLE_PLAY, onClick = { pendingFilter = pendingFilter.copy(googlePlay = GooglePlayFilter.NOT_GOOGLE_PLAY) }, label = { Text(context.getString(R.string.not_installed_from_google_play)) })
                        }
                    }
                    item {
                        Text(stringResource(R.string.miscellaneous), fontWeight = FontWeight.SemiBold)
                        Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                            listOf(context.getString(R.string.apps_with_multiple_backups), context.getString(R.string.apps_with_protected_backups), context.getString(R.string.backups_with_notes), context.getString(R.string.backups_with_older_apks), context.getString(R.string.backups_with_newer_apks)).forEach { label -> FilterChip(enabled = false, selected = false, onClick = {}, label = { Text(label) }) }
                        }
                    }
                    item {
                        Text(
                            if (usageAccess) context.getString(R.string.date_used_usage_access) else context.getString(R.string.date_used_requires_usage_access),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                    item { Text(context.getString(R.string.backup_cloud_options_unavailable), style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant) }
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
