package com.savie.bare.feature.home

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.savie.bare.app.Screen
import com.savie.bare.ui.components.ActionCard
import com.savie.bare.ui.components.ListEntry
import com.savie.bare.ui.components.StatusCard

@Composable
fun HomeScreen(onOpen: (Screen) -> Unit) {
    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
        item {
            Text("Home", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            Text("Ringkasan perangkat, backup, restore, storage, cloud, dan capability state.")
        }
        item { StatusCard(Icons.Default.Storage, "Backup storage", "Internal storage", "BaRe/Backups • mockup state") }
        item { StatusCard(Icons.Default.Security, "Access", "Non-root", "Capability runtime belum diverifikasi") }
        item { Text("Quick actions", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                ActionCard("Backup apps", Icons.Default.Apps, Modifier.weight(1f)) { onOpen(Screen.APP_DETAIL) }
                ActionCard("Backup folders", Icons.Default.Folder, Modifier.weight(1f)) { onOpen(Screen.FOLDERS) }
            }
        }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                ActionCard("Messages", Icons.Default.Info, Modifier.weight(1f)) { onOpen(Screen.MESSAGES) }
                ActionCard("Call logs", Icons.Default.Info, Modifier.weight(1f)) { onOpen(Screen.CALL_LOGS) }
            }
        }
        item { Text("Backup areas", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
        item { ListEntry("Folders", "Backup, restore, incremental", Icons.Default.Folder) { onOpen(Screen.FOLDERS) } }
        item { ListEntry("Messages", "SMS / MMS / RCS", Icons.Default.Info) { onOpen(Screen.MESSAGES) } }
        item { ListEntry("Call Logs", "Backup, restore, permissions", Icons.Default.Info) { onOpen(Screen.CALL_LOGS) } }
        item { ListEntry("Wi-Fi", "Saved networks and constrained restore", Icons.Default.Sync) { onOpen(Screen.WIFI) } }
        item { ListEntry("Wallpapers", "Backup, restore, apply", Icons.Default.Info) { onOpen(Screen.WALLPAPERS) } }
        item { Text("Storage & cloud", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
        item { ListEntry("Storage", "Repository and capacity", Icons.Default.Storage) { onOpen(Screen.STORAGE) } }
        item { ListEntry("Cloud sync", "Connect, upload, download, sync", Icons.Default.Cloud) { onOpen(Screen.CLOUD) } }
        item { ListEntry("Schedules", "Automation and last-run status", Icons.Default.Schedule) { onOpen(Screen.SCHEDULE_DETAIL) } }
    }
}
