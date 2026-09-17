package com.savie.bare

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Apps
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Build
import androidx.compose.material.icons.filled.Call
import androidx.compose.material.icons.filled.Cloud
import androidx.compose.material.icons.filled.Folder
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Message
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Wallpaper
import androidx.compose.material.icons.filled.Wifi
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.unit.dp

private enum class Screen(val title: String, val icon: ImageVector) {
    HOME("BaRe", Icons.Default.Home),
    APPS("Apps", Icons.Default.Apps),
    FOLDERS("Folders", Icons.Default.Folder),
    MESSAGES("Messages", Icons.Default.Message),
    CALL_LOGS("Call Logs", Icons.Default.Call),
    WIFI("Wi-Fi", Icons.Default.Wifi),
    WALLPAPERS("Wallpapers", Icons.Default.Wallpaper),
    SCHEDULES("Schedules", Icons.Default.Schedule),
    STORAGE("Storage", Icons.Default.Folder),
    CLOUD("Remote / Cloud", Icons.Default.Cloud),
    MANAGEMENT("Management", Icons.Default.Build),
    DIAGNOSTICS("Diagnostics", Icons.Default.Info),
    SETTINGS("Settings", Icons.Default.Settings),
    IMPORT_EXPORT("Import / Export", Icons.Default.Folder),
    SEARCH("Search", Icons.Default.Search),
}

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent { BaReApp() }
    }
}

@Composable
private fun BaReApp() {
    var screen by remember { mutableStateOf(Screen.HOME) }
    var backStack by remember { mutableStateOf(listOf<Screen>()) }

    MaterialTheme {
        Surface(modifier = Modifier.fillMaxSize()) {
            Scaffold(
                topBar = {
                    BaReTopBar(
                        screen = screen,
                        canGoBack = backStack.isNotEmpty(),
                        onBack = {
                            val previous = backStack.lastOrNull()
                            if (previous != null) {
                                backStack = backStack.dropLast(1)
                                screen = previous
                            }
                        },
                        onSearch = {
                            if (screen != Screen.SEARCH) {
                                backStack = backStack + screen
                                screen = Screen.SEARCH
                            }
                        }
                    )
                },
                bottomBar = {
                    if (screen in setOf(Screen.HOME, Screen.APPS, Screen.FOLDERS, Screen.SCHEDULES, Screen.SETTINGS)) {
                        NavigationBar {
                            val items = listOf(Screen.HOME, Screen.APPS, Screen.FOLDERS, Screen.SCHEDULES, Screen.SETTINGS)
                            items.forEach { item ->
                                NavigationBarItem(
                                    selected = screen == item,
                                    onClick = { screen = item; backStack = emptyList() },
                                    icon = { Icon(item.icon, contentDescription = item.title) },
                                    label = { Text(item.title) }
                                )
                            }
                        }
                    }
                }
            ) { padding ->
                ScreenContent(
                    screen = screen,
                    modifier = Modifier.padding(padding),
                    onNavigate = { target ->
                        if (target != screen) backStack = backStack + screen
                        screen = target
                    }
                )
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun BaReTopBar(
    screen: Screen,
    canGoBack: Boolean,
    onBack: () -> Unit,
    onSearch: () -> Unit
) {
    TopAppBar(
        title = { Text(screen.title) },
        navigationIcon = {
            if (canGoBack) IconButton(onClick = onBack) {
                Icon(Icons.Default.ArrowBack, contentDescription = "Back")
            }
        },
        actions = {
            if (screen != Screen.SEARCH) {
                IconButton(onClick = onSearch) {
                    Icon(Icons.Default.Search, contentDescription = "Search")
                }
            }
        }
    )
}

@Composable
private fun ScreenContent(screen: Screen, modifier: Modifier, onNavigate: (Screen) -> Unit) {
    when (screen) {
        Screen.HOME -> HomeScreen(modifier, onNavigate)
        Screen.SEARCH -> PlaceholderScreen(modifier, "Search", "Search across apps, backups, folders, and configuration.")
        Screen.APPS -> AreaScreen(modifier, Screen.APPS, listOf("All apps", "User apps", "System apps", "Favorites", "Labels", "Backup history", "Protected backups"), onNavigate)
        Screen.FOLDERS -> AreaScreen(modifier, Screen.FOLDERS, listOf("Folder setups", "Backup", "Restore", "Incremental backups", "Multiple versions", "Protected backups", "Tags & notes"), onNavigate)
        Screen.MESSAGES -> AreaScreen(modifier, Screen.MESSAGES, listOf("SMS / MMS", "Attachments", "Backup", "Restore", "Default SMS app", "History"), onNavigate)
        Screen.CALL_LOGS -> AreaScreen(modifier, Screen.CALL_LOGS, listOf("Call history", "Backup", "Restore", "Permissions", "History"), onNavigate)
        Screen.WIFI -> AreaScreen(modifier, Screen.WIFI, listOf("Saved networks", "Backup", "Restore", "Android limitations", "Manual fallback"), onNavigate)
        Screen.WALLPAPERS -> AreaScreen(modifier, Screen.WALLPAPERS, listOf("Current wallpaper", "Backup", "Restore", "Apply", "Launcher diagnostics"), onNavigate)
        Screen.SCHEDULES -> AreaScreen(modifier, Screen.SCHEDULES, listOf("Schedules", "Conditions", "Run now", "Enabled / disabled", "Last run", "Diagnostics"), onNavigate)
        Screen.STORAGE -> AreaScreen(modifier, Screen.STORAGE, listOf("Local / internal", "External / SAF", "Storage switch", "Space checks", "Move / copy"), onNavigate)
        Screen.CLOUD -> AreaScreen(modifier, Screen.CLOUD, listOf("Providers", "Connect", "Remote folder", "Upload", "Download", "Sync", "Transfer diagnostics"), onNavigate)
        Screen.MANAGEMENT -> AreaScreen(modifier, Screen.MANAGEMENT, listOf("Labels", "Favorites", "Blacklist", "Quick actions", "App configs", "Retention", "Protection"), onNavigate)
        Screen.DIAGNOSTICS -> AreaScreen(modifier, Screen.DIAGNOSTICS, listOf("Operation logs", "Errors", "Skipped parts", "Blocked operations", "Storage checks", "Transfer checks"), onNavigate)
        Screen.SETTINGS -> AreaScreen(modifier, Screen.SETTINGS, listOf("Appearance", "Backup defaults", "Restore defaults", "Security", "Compression", "Notifications", "About"), onNavigate)
        Screen.IMPORT_EXPORT -> AreaScreen(modifier, Screen.IMPORT_EXPORT, listOf("Import APK / APKS", "Export configuration", "Import configuration", "Validation", "History"), onNavigate)
    }
}

@Composable
private fun HomeScreen(modifier: Modifier, onNavigate: (Screen) -> Unit) {
    val areas = listOf(
        Screen.APPS, Screen.FOLDERS, Screen.MESSAGES, Screen.CALL_LOGS,
        Screen.WIFI, Screen.WALLPAPERS, Screen.SCHEDULES, Screen.STORAGE,
        Screen.CLOUD, Screen.MANAGEMENT, Screen.DIAGNOSTICS, Screen.IMPORT_EXPORT
    )
    LazyColumn(modifier = modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
        item {
            Text("Backup & Restore", style = MaterialTheme.typography.headlineSmall)
            Spacer(Modifier.height(4.dp))
            Text("BaRe product shell — capability behavior is being implemented incrementally.")
        }
        item {
            Card(modifier = Modifier.fillMaxWidth()) {
                Column(Modifier.padding(16.dp)) {
                    Text("Quick actions", style = MaterialTheme.typography.titleMedium)
                    Spacer(Modifier.height(8.dp))
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Button(onClick = { onNavigate(Screen.APPS) }) { Text("Backup apps") }
                        Spacer(Modifier.width(8.dp))
                        TextButton(onClick = { onNavigate(Screen.FOLDERS) }) { Text("Backup folders") }
                    }
                }
            }
        }
        items(areas) { area ->
            AreaCard(area = area, onClick = { onNavigate(area) })
        }
    }
}

@Composable
private fun AreaCard(area: Screen, onClick: () -> Unit) {
    Card(modifier = Modifier.fillMaxWidth(), onClick = onClick) {
        Row(Modifier.padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
            Icon(area.icon, contentDescription = null)
            Spacer(Modifier.width(16.dp))
            Column {
                Text(area.title, style = MaterialTheme.typography.titleMedium)
                Text("UX surface available; behavior not yet wired.")
            }
        }
    }
}

@Composable
private fun AreaScreen(
    modifier: Modifier,
    area: Screen,
    entries: List<String>,
    onNavigate: (Screen) -> Unit
) {
    LazyColumn(modifier = modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
        item {
            Text(area.title, style = MaterialTheme.typography.headlineSmall)
            Spacer(Modifier.height(4.dp))
            Text("Whole-product UX baseline. Entries represent the planned interaction surface; functionality is intentionally not claimed.")
            Spacer(Modifier.height(8.dp))
        }
        items(entries) { entry ->
            Card(modifier = Modifier.fillMaxWidth()) {
                Column(Modifier.padding(16.dp)) {
                    Text(entry, style = MaterialTheme.typography.titleMedium)
                    Spacer(Modifier.height(4.dp))
                    Text("State: unavailable / placeholder until the corresponding capability is implemented and verified.")
                    Spacer(Modifier.height(8.dp))
                    TextButton(onClick = { }) { Text("Open") }
                }
            }
        }
        item {
            TextButton(onClick = { onNavigate(Screen.HOME) }) { Text("Back to Home") }
        }
    }
}

@Composable
private fun PlaceholderScreen(modifier: Modifier, title: String, description: String) {
    Column(modifier = modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Text(title, style = MaterialTheme.typography.headlineSmall)
        Text(description)
        Card(modifier = Modifier.fillMaxWidth()) {
            Text("UX placeholder — no backend behavior is claimed.", Modifier.padding(16.dp))
        }
    }
}
