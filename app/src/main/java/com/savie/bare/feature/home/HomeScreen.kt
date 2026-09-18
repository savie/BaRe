package com.savie.bare.feature.home

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.ui.res.stringResource
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.savie.bare.app.Screen
import com.savie.bare.R
import com.savie.bare.ui.components.ActionCard
import com.savie.bare.ui.components.ListEntry
import com.savie.bare.ui.components.StatusCard

@Composable
fun HomeScreen(onOpen: (Screen) -> Unit) {
    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
        item {
            Text(stringResource(R.string.home), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            Text(stringResource(R.string.home_summary))
        }
        item { StatusCard(Icons.Default.Storage, stringResource(R.string.backup_storage), stringResource(R.string.internal_storage), stringResource(R.string.backup_storage_mockup)) }
        item { StatusCard(Icons.Default.Security, stringResource(R.string.access), stringResource(R.string.non_root), stringResource(R.string.runtime_capability_not_verified)) }
        item { Text(stringResource(R.string.quick_actions), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                ActionCard(stringResource(R.string.backup_apps), Icons.Default.Apps, Modifier.weight(1f)) { onOpen(Screen.APP_DETAIL) }
                ActionCard(stringResource(R.string.backup_folders), Icons.Default.Folder, Modifier.weight(1f)) { onOpen(Screen.FOLDERS) }
            }
        }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                ActionCard(stringResource(R.string.messages), Icons.Default.Sms, Modifier.weight(1f)) { onOpen(Screen.MESSAGES) }
                ActionCard(stringResource(R.string.call_logs), Icons.Default.Call, Modifier.weight(1f)) { onOpen(Screen.CALL_LOGS) }
            }
        }
        item { Text(stringResource(R.string.backup_areas), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
        item { ListEntry(stringResource(R.string.folders), stringResource(R.string.backup_restore_incremental), Icons.Default.Folder) { onOpen(Screen.FOLDERS) } }
        item { ListEntry(stringResource(R.string.messages), stringResource(R.string.sms_mms_rcs), Icons.Default.Sms) { onOpen(Screen.MESSAGES) } }
        item { ListEntry(stringResource(R.string.call_logs), stringResource(R.string.backup_restore_permissions), Icons.Default.Call) { onOpen(Screen.CALL_LOGS) } }
        item { ListEntry(stringResource(R.string.wifi), stringResource(R.string.saved_networks_restore), Icons.Default.Wifi) { onOpen(Screen.WIFI) } }
        item { ListEntry(stringResource(R.string.wallpapers), stringResource(R.string.backup_restore_apply), Icons.Default.Wallpaper) { onOpen(Screen.WALLPAPERS) } }
        item { Text(stringResource(R.string.storage_and_cloud), style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
        item { ListEntry(stringResource(R.string.storage), stringResource(R.string.repository_capacity), Icons.Default.Storage) { onOpen(Screen.STORAGE) } }
        item { ListEntry(stringResource(R.string.cloud_sync), stringResource(R.string.connect_upload_download_sync), Icons.Default.Cloud) { onOpen(Screen.CLOUD) } }
        item { ListEntry(stringResource(R.string.schedules), stringResource(R.string.automation_last_run_status), Icons.Default.Schedule) { onOpen(Screen.SCHEDULE_DETAIL) } }
    }
}
