package com.bare.feature.apps

import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
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
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.bare.app.AppItem
import com.bare.app.Screen

private enum class AppTypeFilter { ALL, USER, SYSTEM }
private enum class EnabledFilter { ALL, ENABLED, DISABLED }

private data class AppsFilterState(
    val firstLetter: Char? = null,
    val appType: AppTypeFilter = AppTypeFilter.ALL,
    val enabled: EnabledFilter = EnabledFilter.ALL,
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
    var descending by remember { mutableStateOf(false) }

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

    val visibleApps = remember(apps, activeFilter, searchQuery, descending) {
        val query = searchQuery.trim().lowercase()
        apps.asSequence()
            .filter { app ->
                when (activeFilter.appType) {
                    AppTypeFilter.ALL -> true
                    AppTypeFilter.USER -> !app.isSystem
                    AppTypeFilter.SYSTEM -> app.isSystem
                }
            }
            .filter { app ->
                when (activeFilter.enabled) {
                    EnabledFilter.ALL -> true
                    EnabledFilter.ENABLED -> app.isEnabled
                    EnabledFilter.DISABLED -> !app.isEnabled
                }
            }
            .filter { app ->
                activeFilter.firstLetter == null ||
                    app.name.firstOrNull()?.uppercaseChar() == activeFilter.firstLetter
            }
            .filter { app ->
                query.isBlank() ||
                    app.name.lowercase().contains(query) ||
                    app.packageName.lowercase().contains(query)
            }
            .sortedWith(
                if (descending) compareByDescending<AppItem> { it.name.lowercase() }
                else compareBy<AppItem> { it.name.lowercase() }
            )
            .toList()
    }

    if (searchOpen) {
        Row(
            Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            OutlinedTextField(
                value = searchQuery,
                onValueChange = { searchQuery = it },
                modifier = Modifier.weight(1f),
                singleLine = true,
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
            Spacer(Modifier.width(8.dp))
            TextButton(onClick = {
                searchQuery = ""
                onSearchOpenChange(false)
            }) { Text("Close") }
        }
    }

    LazyColumn(
        Modifier.fillMaxHeight(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp),
    ) {
        item {
            Row(
                Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    "${visibleApps.size} apps",
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.weight(1f),
                )
                if (activeFilter != AppsFilterState()) {
                    TextButton(onClick = { activeFilter = AppsFilterState() }) { Text("Reset") }
                }
                TextButton(onClick = { descending = !descending }) {
                    Icon(Icons.Default.Sort, contentDescription = null)
                    Spacer(Modifier.width(4.dp))
                    Text(if (descending) "Name ↓" else "Name ↑")
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
            Column(
                Modifier.fillMaxWidth().fillMaxHeight(0.88f)
            ) {
                Row(
                    Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    TextButton(onClick = { onFilterOpenChange(false) }) { Text("✕") }
                    Spacer(Modifier.weight(1f))
                    Button(onClick = {
                        activeFilter = pendingFilter
                        onFilterOpenChange(false)
                    }) { Text("✓  APPLY OPTIONS") }
                }

                HorizontalDivider()

                LazyColumn(
                    Modifier.fillMaxWidth(),
                    contentPadding = PaddingValues(start = 16.dp, end = 16.dp, top = 16.dp, bottom = 32.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    item {
                        Text(
                            "SEARCH BY",
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                        )
                    }
                    item {
                        LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            item {
                                FilterChip(
                                    selected = pendingFilter.firstLetter == null,
                                    onClick = { pendingFilter = pendingFilter.copy(firstLetter = null) },
                                    label = { Text("ALL") },
                                )
                            }
                            items(('A'..'Z').toList()) { letter ->
                                FilterChip(
                                    selected = pendingFilter.firstLetter == letter,
                                    onClick = { pendingFilter = pendingFilter.copy(firstLetter = letter) },
                                    label = { Text(letter.toString()) },
                                )
                            }
                        }
                    }
                    item {
                        Text(
                            "FILTER BY",
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            modifier = Modifier.padding(top = 8.dp),
                        )
                    }
                    item {
                        Text("App type", fontWeight = FontWeight.SemiBold)
                        Row(
                            Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                        ) {
                            FilterChip(
                                selected = pendingFilter.appType == AppTypeFilter.ALL,
                                onClick = { pendingFilter = pendingFilter.copy(appType = AppTypeFilter.ALL) },
                                label = { Text("All") },
                            )
                            FilterChip(
                                selected = pendingFilter.appType == AppTypeFilter.USER,
                                onClick = { pendingFilter = pendingFilter.copy(appType = AppTypeFilter.USER) },
                                label = { Text("User apps") },
                            )
                            FilterChip(
                                selected = pendingFilter.appType == AppTypeFilter.SYSTEM,
                                onClick = { pendingFilter = pendingFilter.copy(appType = AppTypeFilter.SYSTEM) },
                                label = { Text("System apps") },
                            )
                        }
                    }
                    item {
                        Text("Enabled status", fontWeight = FontWeight.SemiBold)
                        Row(
                            Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                        ) {
                            FilterChip(
                                selected = pendingFilter.enabled == EnabledFilter.ALL,
                                onClick = { pendingFilter = pendingFilter.copy(enabled = EnabledFilter.ALL) },
                                label = { Text("All") },
                            )
                            FilterChip(
                                selected = pendingFilter.enabled == EnabledFilter.ENABLED,
                                onClick = { pendingFilter = pendingFilter.copy(enabled = EnabledFilter.ENABLED) },
                                label = { Text("Enabled") },
                            )
                            FilterChip(
                                selected = pendingFilter.enabled == EnabledFilter.DISABLED,
                                onClick = { pendingFilter = pendingFilter.copy(enabled = EnabledFilter.DISABLED) },
                                label = { Text("Disabled") },
                            )
                        }
                    }
                    item {
                        Text(
                            "Device-backed filters only",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Text(
                            "Filters are applied from installed-app data read from Android. Backup/cloud metadata is not fabricated.",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                }
            }
        }
    }
}
