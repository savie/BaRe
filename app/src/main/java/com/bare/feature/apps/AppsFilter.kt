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
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.ListItem
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.bare.app.AppItem
import com.bare.app.Screen

private enum class AppTypeFilter { ALL, USER, SYSTEM }
private enum class EnabledFilter { ALL, ENABLED, DISABLED }
private enum class GooglePlayFilter { ALL, GOOGLE_PLAY, NOT_GOOGLE_PLAY }
private enum class SortOption(val title: String, val icon: ImageVector, val available: Boolean) {
    NAME("Name", Icons.Default.Sort, true),
    INSTALL_DATE("Install date", Icons.Default.Event, true),
    UPDATE_DATE("Update date", Icons.Default.Update, true),
    BACKUP_DATE("Backup date", Icons.Default.Backup, false),
    BACKUP_SIZE("Backup size", Icons.Default.Storage, false),
    DATE_USED("Date used", Icons.Default.TouchApp, false),
    APP_SIZE("App size", Icons.Default.Android, true),
}
private data class AppsFilterState(
    val sort: SortOption = SortOption.NAME,
    val descending: Boolean = false,
    val appType: AppTypeFilter = AppTypeFilter.ALL,
    val enabled: EnabledFilter = EnabledFilter.ALL,
    val googlePlay: GooglePlayFilter = GooglePlayFilter.ALL,
)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppsFilterScreen(
    onOpen: (Screen) -> Unit,
    onOpenApp: (AppItem) -> Unit,
    searchOpen: Boolean,
    onSearchOpenChange: (Boolean) -> Unit,
    filterOpen: Boolean,
    onFilterOpenChange: (Boolean) -> Unit,
) {
    val context = LocalContext.current
    val repository = remember(context) { InstalledAppRepository(context) }
    var apps by remember { mutableStateOf<List<AppItem>>(emptyList()) }
    var error by remember { mutableStateOf<String?>(null) }
    var searchQuery by remember { mutableStateOf("") }
    var activeFilter by remember { mutableStateOf(AppsFilterState()) }
    var pendingFilter by remember(activeFilter, filterOpen) { mutableStateOf(activeFilter) }
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

    LaunchedEffect(filterOpen) {
        if (filterOpen) pendingFilter = activeFilter
    }

    val visibleApps = remember(apps, activeFilter, searchQuery) {
        val query = searchQuery.trim().lowercase()
        val filtered = apps.asSequence()
            .filter { app -> when (activeFilter.appType) { AppTypeFilter.ALL -> true; AppTypeFilter.USER -> !app.isSystem; AppTypeFilter.SYSTEM -> app.isSystem } }
            .filter { app -> when (activeFilter.enabled) { EnabledFilter.ALL -> true; EnabledFilter.ENABLED -> app.isEnabled; EnabledFilter.DISABLED -> !app.isEnabled } }
            .filter { app -> when (activeFilter.googlePlay) { GooglePlayFilter.ALL -> true; GooglePlayFilter.GOOGLE_PLAY -> app.installedFromGooglePlay == true; GooglePlayFilter.NOT_GOOGLE_PLAY -> app.installedFromGooglePlay == false } }
            .filter { app -> query.isBlank() || app.name.lowercase().contains(query) || app.packageName.lowercase().contains(query) }
            .toList()
        when (activeFilter.sort) {
            SortOption.NAME -> filtered.sortedWith(if (activeFilter.descending) compareByDescending<AppItem> { it.name.lowercase() } else compareBy<AppItem> { it.name.lowercase() })
            SortOption.INSTALL_DATE -> filtered.sortedWith(compareBy<AppItem> { it.firstInstallTime ?: Long.MAX_VALUE }.let { c -> if (activeFilter.descending) c.reversed() else c })
            SortOption.UPDATE_DATE -> filtered.sortedWith(compareBy<AppItem> { it.lastUpdateTime ?: Long.MAX_VALUE }.let { c -> if (activeFilter.descending) c.reversed() else c })
            SortOption.APP_SIZE -> filtered.sortedWith(compareBy<AppItem> { it.apkSizeBytes ?: Long.MAX_VALUE }.let { c -> if (activeFilter.descending) c.reversed() else c })
            SortOption.BACKUP_DATE, SortOption.BACKUP_SIZE, SortOption.DATE_USED -> filtered.sortedBy { it.name.lowercase() }
        }
    }

    Column(Modifier.fillMaxHeight()) {
        if (searchOpen) {
            OutlinedTextField(
                value = searchQuery,
                onValueChange = { searchQuery = it },
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp, vertical = 8.dp),
                singleLine = true,
                maxLines = 1,
                placeholder = { Text("Search apps or package") },
                leadingIcon = { Icon(Icons.Default.Search, contentDescription = null) },
                trailingIcon = {
                    if (searchQuery.isNotBlank()) {
                        IconButton(onClick = { searchQuery = "" }) {
                            Icon(Icons.Default.Clear, contentDescription = "Clear search")
                        }
                    }
                },
            )
        }

        LazyColumn(
            Modifier.weight(1f),
            contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
        if (error != null) {
            item {
                Text(
                    error!!,
                    color = MaterialTheme.colorScheme.error,
                    modifier = Modifier.padding(vertical = 12.dp),
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
                            IconButton(onClick = { onOpenApp(app) }) {
                                Icon(Icons.Default.MoreVert, contentDescription = "App actions")
                            }
                        },
                    )
                }
            }
        }
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
                                            pendingFilter = if (selected) {
                                                pendingFilter.copy(descending = !pendingFilter.descending)
                                            } else {
                                                pendingFilter.copy(sort = option, descending = false)
                                            }
                                        },
                                    horizontalAlignment = Alignment.CenterHorizontally,
                                ) {
                                    androidx.compose.foundation.layout.Box(
                                        modifier = Modifier
                                            .size(64.dp)
                                            .clip(CircleShape),
                                        contentAlignment = Alignment.Center,
                                    ) {
                                        Surface(
                                            modifier = Modifier.size(64.dp),
                                            shape = CircleShape,
                                            color = if (selected) MaterialTheme.colorScheme.primaryContainer else Color.Transparent,
                                            border = androidx.compose.foundation.BorderStroke(1.dp, tint),
                                        ) {
                                            androidx.compose.foundation.layout.Box(contentAlignment = Alignment.Center) {
                                                Icon(option.icon, contentDescription = null, tint = tint, modifier = Modifier.size(30.dp))
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
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("All") })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("Favorites") })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("Not favorites") })
                        }
                    }
                    item {
                        Text("App Labels", fontWeight = FontWeight.SemiBold)
                        Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("All") })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("Labelled") })
                            FilterChip(enabled = false, selected = false, onClick = {}, label = { Text("Unlabelled") })
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
                    item { Text("Unavailable options stay disabled until BaRe has a verified local/cloud backup index or label/favorite source. No backup or cloud metadata is fabricated.", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant) }
                    item { if (activeFilter != AppsFilterState()) TextButton(onClick = { pendingFilter = AppsFilterState() }) { Text("Reset all options") } }
                }
            }
        }
    }
}