package com.bare.feature.settings

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.ArrowBack
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.bare.R
import com.bare.storage.BackupStorageRepository
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LocalBackupScanScreen(identityId: String?, onBack: () -> Unit) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val repository = remember(context) { BackupStorageRepository(context) }
    var locations by remember { mutableStateOf(emptyList<String>()) }
    LaunchedEffect(identityId) {
        if (!identityId.isNullOrBlank()) locations = withContext(Dispatchers.IO) { repository.localBackupLocations(identityId) }
    }
    Scaffold(topBar = {
        TopAppBar(title = { Text(stringResource(R.string.settings_lab_scan_local_backups)) }, navigationIcon = {
            IconButton(onClick = onBack) { Icon(Icons.Outlined.ArrowBack, stringResource(R.string.back)) }
        })
    }) { padding ->
        Column(Modifier.fillMaxSize().padding(padding).padding(16.dp)) {
            Text(stringResource(R.string.settings_lab_scan_local_backups_result, locations.size), style = MaterialTheme.typography.titleMedium)
            Spacer(Modifier.height(12.dp))
            if (locations.isEmpty()) Text(stringResource(R.string.settings_lab_scan_local_backups_empty))
            else LazyColumn(verticalArrangement = Arrangement.spacedBy(8.dp)) { items(locations) { Text(it, style = MaterialTheme.typography.bodySmall) } }
        }
    }
}
