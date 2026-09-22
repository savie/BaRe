package com.bare.feature.settings

import android.content.Context
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.ArrowBack
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.bare.R
import com.bare.app.Screen

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun BaReLabsScreen(onBack: () -> Unit, onOpen: (Screen) -> Unit) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val prefs = remember(context) { context.getSharedPreferences("bare_labs", Context.MODE_PRIVATE) }
    var extraLogging by remember { mutableStateOf(prefs.getBoolean("extra_logging", false)) }
    var skipSpaceChecks by remember { mutableStateOf(prefs.getBoolean("skip_space_checks", false)) }
    var extendTimeout by remember { mutableStateOf(prefs.getBoolean("extend_datasync_timeout", false)) }

    Scaffold(topBar = {
        TopAppBar(title = { Text(stringResource(R.string.settings_bare_labs)) }, navigationIcon = {
            IconButton(onClick = onBack) { Icon(Icons.Outlined.ArrowBack, stringResource(R.string.back)) }
        })
    }) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding), contentPadding = PaddingValues(20.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item { Text(stringResource(R.string.settings_labs_miscellaneous), style = MaterialTheme.typography.titleMedium) }
            item { LabSwitch(stringResource(R.string.settings_lab_extra_logging), stringResource(R.string.settings_lab_extra_logging_description), extraLogging) { extraLogging = it; prefs.edit().putBoolean("extra_logging", it).apply() } }
            item { LabSwitch(stringResource(R.string.settings_lab_skip_space_checks), stringResource(R.string.settings_lab_skip_space_checks_description), skipSpaceChecks) { skipSpaceChecks = it; prefs.edit().putBoolean("skip_space_checks", it).apply() } }
            item { LabSwitch(stringResource(R.string.settings_lab_extend_datasync_timeout), stringResource(R.string.settings_lab_extend_datasync_timeout_description), extendTimeout) { extendTimeout = it; prefs.edit().putBoolean("extend_datasync_timeout", it).apply() } }
            item { LabCard(stringResource(R.string.settings_lab_delete_gms_files), stringResource(R.string.settings_lab_delete_gms_files_description), false) {} }
            item { LabCard(stringResource(R.string.settings_lab_app_visibility), stringResource(R.string.settings_lab_app_visibility_description), true) { onOpen(Screen.APP_VISIBILITY_DIAGNOSTICS) } }
            item { LabCard(stringResource(R.string.settings_lab_scan_local_backups), stringResource(R.string.settings_lab_scan_local_backups_description), true) { onOpen(Screen.LOCAL_BACKUP_SCAN) } }
        }
    }
}

@Composable private fun LabSwitch(title: String, body: String, checked: Boolean, onChange: (Boolean) -> Unit) {
    Card(Modifier.fillMaxWidth()) { Row(Modifier.fillMaxWidth().padding(16.dp), horizontalArrangement = Arrangement.spacedBy(16.dp)) { Column(Modifier.weight(1f)) { Text(title, style = MaterialTheme.typography.titleMedium); Text(body, style = MaterialTheme.typography.bodyMedium) }; Switch(checked, onChange) } }
}
@Composable private fun LabCard(title: String, body: String, enabled: Boolean, onClick: () -> Unit) {
    Card(onClick = onClick, enabled = enabled, modifier = Modifier.fillMaxWidth()) { Column(Modifier.padding(16.dp)) { Text(title, style = MaterialTheme.typography.titleMedium); Text(body, style = MaterialTheme.typography.bodyMedium) } }
}
