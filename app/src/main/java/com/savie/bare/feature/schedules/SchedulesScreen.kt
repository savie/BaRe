package com.savie.bare.feature.schedules

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.savie.bare.app.Screen
import com.savie.bare.ui.components.ListEntry

@Composable
fun SchedulesScreen(onOpen: (Screen) -> Unit) {
    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
        item {
            Text("Schedules", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            Text("Automation memakai workflow backup/restore yang sama dengan operasi manual.")
        }
        item {
            Card(Modifier.fillMaxWidth()) {
                Column(Modifier.padding(20.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                    Icon(Icons.Default.Schedule, null, Modifier.size(48.dp))
                    Spacer(Modifier.height(8.dp))
                    Text("Scheduled backups", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                    Text("Belum ada schedule pada mockup.")
                    Spacer(Modifier.height(12.dp))
                    Button(onClick = { onOpen(Screen.SCHEDULE_DETAIL) }) { Text("Create schedule") }
                }
            }
        }
        item { ListEntry("Last run", "Success / partial / failed / blocked / skipped", Icons.Default.Info) { onOpen(Screen.DIAGNOSTICS) } }
        item { ListEntry("Conditions", "Charging, Wi-Fi, storage, battery", Icons.Default.Settings) { onOpen(Screen.SCHEDULE_DETAIL) } }
    }
}
