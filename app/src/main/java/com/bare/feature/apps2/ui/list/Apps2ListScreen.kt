package com.bare.feature.apps2.ui.list

import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.FilterList
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Sort
import androidx.compose.material3.AssistChip
import androidx.compose.material3.Card
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.bare.feature.apps2.domain.Apps2App
import com.bare.feature.apps2.state.Apps2AppTypeFilter
import com.bare.feature.apps2.state.Apps2ListState
import com.bare.feature.apps2.state.Apps2SortMode
import com.bare.feature.apps2.ui.shell.Apps2Header

@Composable
fun Apps2ListScreen(
    apps: List<Apps2App>,
    state: Apps2ListState,
    onRefresh: () -> Unit,
    onBack: (() -> Unit)? = null,
) {
    val visibleApps = state.visibleApps(apps)
    var searchOpen by remember { mutableStateOf(false) }
    var filterOpen by remember { mutableStateOf(false) }
    var sortOpen by remember { mutableStateOf(false) }

    Column(Modifier.fillMaxSize()) {
        Apps2Header(
            title = "Apps",
            onBack = onBack,
            actions = {
                IconButton(onClick = { searchOpen = !searchOpen }) {
                    Icon(Icons.Default.Search, contentDescription = "Search")
                }
                IconButton(onClick = { filterOpen = true }) {
                    Icon(Icons.Default.FilterList, contentDescription = "Filter")
                }
                IconButton(onClick = onRefresh) {
                    Icon(Icons.Default.Refresh, contentDescription = "Refresh")
                }
                IconButton(onClick = { sortOpen = true }) {
                    Icon(Icons.Default.Sort, contentDescription = "Sort")
                }
            },
        )

        if (searchOpen) {
            OutlinedTextField(
                value = state.searchQuery,
                onValueChange = { state.searchQuery = it },
                modifier = Modifier.fillMaxWidth().padding(12.dp),
                singleLine = true,
                label = { Text("Search apps") },
            )
        }

        if (state.selectedPackages.isNotEmpty()) {
            Row(
                Modifier.fillMaxWidth().padding(horizontal = 12.dp, vertical = 4.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(state.selectedPackages.size.toString() + " selected", style = MaterialTheme.typography.labelLarge)
                Spacer(Modifier.weight(1f))
                AssistChip(
                    onClick = { state.selectAll(visibleApps) },
                    label = { Text("Select all") },
                )
                Spacer(Modifier.width(8.dp))
                AssistChip(onClick = state::clearSelection, label = { Text("Clear") })
            }
        }

        LazyColumn(
            modifier = Modifier.fillMaxSize(),
            verticalArrangement = Arrangement.spacedBy(6.dp),
        ) {
            items(visibleApps, key = { it.packageName }) { app ->
                Apps2AppListItem(
                    app = app,
                    selected = app.packageName in state.selectedPackages,
                    onToggleSelection = { state.toggleSelection(app.packageName) },
                )
            }
        }
    }

    DropdownMenu(expanded = filterOpen, onDismissRequest = { filterOpen = false }) {
        DropdownMenuItem(
            text = { Text("All apps") },
            onClick = { state.appTypeFilter = Apps2AppTypeFilter.ALL; filterOpen = false },
        )
        DropdownMenuItem(
            text = { Text("User apps") },
            onClick = { state.appTypeFilter = Apps2AppTypeFilter.USER; filterOpen = false },
        )
        DropdownMenuItem(
            text = { Text("System apps") },
            onClick = { state.appTypeFilter = Apps2AppTypeFilter.SYSTEM; filterOpen = false },
        )
    }

    DropdownMenu(expanded = sortOpen, onDismissRequest = { sortOpen = false }) {
        DropdownMenuItem(
            text = { Text("Name") },
            onClick = { state.sortMode = Apps2SortMode.NAME; sortOpen = false },
        )
        DropdownMenuItem(
            text = { Text("Install date") },
            onClick = { state.sortMode = Apps2SortMode.INSTALL_DATE; sortOpen = false },
        )
        DropdownMenuItem(
            text = { Text("Update date") },
            onClick = { state.sortMode = Apps2SortMode.UPDATE_DATE; sortOpen = false },
        )
        DropdownMenuItem(
            text = { Text(if (state.descending) "Ascending" else "Descending") },
            onClick = { state.descending = !state.descending; sortOpen = false },
        )
    }
}

@Composable
private fun Apps2AppListItem(
    app: Apps2App,
    selected: Boolean,
    onToggleSelection: () -> Unit,
) {
    var menuOpen by remember(app.packageName) { mutableStateOf(false) }
    val context = LocalContext.current

    Card(
        modifier = Modifier.fillMaxWidth().padding(horizontal = 8.dp),
        shape = RoundedCornerShape(4.dp),
    ) {
        Row(
            modifier = Modifier.fillMaxWidth().clickable(onClick = onToggleSelection).padding(12.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            if (app.icon != null) {
                val bitmap = remember(app.icon) {
                    android.graphics.Bitmap.createBitmap(64, 64, android.graphics.Bitmap.Config.ARGB_8888).also { bitmap ->
                        val canvas = android.graphics.Canvas(bitmap)
                        app.icon.setBounds(0, 0, canvas.width, canvas.height)
                        app.icon.draw(canvas)
                    }
                }
                Image(
                    bitmap = bitmap.asImageBitmap(),
                    contentDescription = app.name,
                    modifier = Modifier.size(48.dp),
                )
            }
            Spacer(Modifier.width(12.dp))
            Column(Modifier.weight(1f)) {
                Text(app.name, style = MaterialTheme.typography.titleMedium)
                Text(
                    app.packageName,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
                Text(
                    if (app.isSystem) "System app" else "User app",
                    style = MaterialTheme.typography.labelSmall,
                )
            }
            if (selected) {
                Icon(Icons.Default.Check, contentDescription = "Selected", modifier = Modifier.size(22.dp))
            }
            Box {
                IconButton(onClick = { menuOpen = true }) {
                    Icon(Icons.Default.MoreVert, contentDescription = "App actions")
                }
                DropdownMenu(expanded = menuOpen, onDismissRequest = { menuOpen = false }) {
                    Apps2AppItemActions.forApp(app).forEach { action ->
                        DropdownMenuItem(
                            text = { Text(action.title) },
                            onClick = {
                                menuOpen = false
                                action.run(context, app)
                            },
                        )
                    }
                }
            }
        }
    }
}
