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
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppVisibilityDiagnosticsScreen(onBack: () -> Unit) {
    val context = androidx.compose.ui.platform.LocalContext.current
    var packages by remember { mutableStateOf(emptyList<String>()) }
    LaunchedEffect(Unit) {
        packages = withContext(Dispatchers.IO) {
            context.packageManager.getInstalledApplications(0).sortedBy { it.packageName }.map {
                context.packageManager.getApplicationLabel(it).toString() + " (" + it.packageName + ")"
            }
        }
    }
    Scaffold(topBar = {
        TopAppBar(title = { Text(stringResource(R.string.settings_lab_app_visibility)) }, navigationIcon = {
            IconButton(onClick = onBack) { Icon(Icons.Outlined.ArrowBack, stringResource(R.string.back)) }
        })
    }) { padding ->
        Column(Modifier.fillMaxSize().padding(padding).padding(16.dp)) {
            Text(stringResource(R.string.settings_lab_app_visibility_result, packages.size), style = MaterialTheme.typography.titleMedium)
            Spacer(Modifier.height(12.dp))
            LazyColumn(verticalArrangement = Arrangement.spacedBy(4.dp)) { items(packages) { Text(it, style = MaterialTheme.typography.bodySmall) } }
        }
    }
}
