package com.savie.bare.feature.account

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.savie.bare.app.Screen
import com.savie.bare.ui.components.ListEntry

@Composable
fun AccountScreen(onOpen: (Screen) -> Unit) {
    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
        item {
            Card(Modifier.fillMaxWidth()) {
                Row(Modifier.padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
                    Box(Modifier.size(56.dp).background(MaterialTheme.colorScheme.primaryContainer, CircleShape), Alignment.Center) {
                        Text("B", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                    }
                    Spacer(Modifier.width(14.dp))
                    Column {
                        Text(stringResource(R.string.bare_account), fontWeight = FontWeight.Bold)
                        Text(stringResource(R.string.local_setup_mockup_account))
                    }
                }
            }
        }
        item { ListEntry(stringResource(R.string.settings), stringResource(R.string.appearance_language_security_defaults), Icons.Default.Settings) { onOpen(Screen.SETTINGS) } }
        item { ListEntry(stringResource(R.string.cloud_sync), stringResource(R.string.providers_transfer), Icons.Default.Cloud) { onOpen(Screen.CLOUD) } }
        item { ListEntry(stringResource(R.string.storage), stringResource(R.string.repository_space), Icons.Default.Storage) { onOpen(Screen.STORAGE) } }
        item { ListEntry(stringResource(R.string.management), stringResource(R.string.labels_favorites_protection), Icons.Default.Build) { onOpen(Screen.MANAGEMENT) } }
        item { ListEntry(stringResource(R.string.diagnostics), stringResource(R.string.logs_errors_blocked_skipped), Icons.Default.BugReport) { onOpen(Screen.DIAGNOSTICS) } }
        item { ListEntry(stringResource(R.string.import_export), stringResource(R.string.apk_apks_configuration), Icons.Default.ImportExport) { onOpen(Screen.IMPORT_EXPORT) } }
        item { ListEntry(stringResource(R.string.about), stringResource(R.string.bare_version_mockup), Icons.Default.Info) {} }
    }
}
