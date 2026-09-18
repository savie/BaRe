package com.bare.feature.schedules

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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.bare.app.Screen
import com.bare.R
import com.bare.ui.components.ListEntry

@Composable
fun SchedulesScreen(onOpen: (Screen) -> Unit) {
    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
        item {
            Text(stringResource(R.string.schedules), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            Text(stringResource(R.string.schedules_summary))
        }
        item {
            Card(Modifier.fillMaxWidth()) {
                Column(Modifier.padding(20.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                    Icon(Icons.Default.Schedule, null, Modifier.size(48.dp))
                    Spacer(Modifier.height(8.dp))
                    Text(stringResource(R.string.scheduled_backups), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                    Text(stringResource(R.string.no_schedules_mockup))
                    Spacer(Modifier.height(12.dp))
                    Button(onClick = { onOpen(Screen.SCHEDULE_DETAIL) }) { Text(stringResource(R.string.create_schedule)) }
                }
            }
        }
        item { ListEntry(stringResource(R.string.last_run), stringResource(R.string.operation_outcomes), Icons.Default.Info) { onOpen(Screen.DIAGNOSTICS) } }
        item { ListEntry(stringResource(R.string.conditions), stringResource(R.string.schedule_conditions), Icons.Default.Settings) { onOpen(Screen.SCHEDULE_DETAIL) } }
    }
}
