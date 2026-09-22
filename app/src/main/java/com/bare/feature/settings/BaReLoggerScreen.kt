package com.bare.feature.settings

import android.content.Context
import android.content.Intent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.ArrowBack
import androidx.compose.material.icons.outlined.Delete
import androidx.compose.material.icons.outlined.Share
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.bare.R

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun BaReLoggerScreen(onBack: () -> Unit) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val logger = remember(context) { BaReLogger(context) }
    var entries by remember { mutableStateOf(logger.load()) }
    Scaffold(topBar = {
        TopAppBar(
            title = { Column { Text(stringResource(R.string.settings_bare_logger)); Text(stringResource(R.string.settings_swift_logger_subtitle), style = MaterialTheme.typography.bodySmall) } },
            navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Outlined.ArrowBack, stringResource(R.string.back)) } },
            actions = { IconButton(onClick = { logger.clear(); entries = emptyList() }) { Icon(Icons.Outlined.Delete, stringResource(R.string.clear_logs)) } },
        )
    }) { padding ->
        Column(Modifier.fillMaxSize().padding(padding)) {
            LazyColumn(Modifier.weight(1f), contentPadding = PaddingValues(bottom = 12.dp)) {
                if (entries.isEmpty()) {
                    item { Text(stringResource(R.string.no_logs), Modifier.padding(16.dp)) }
                } else {
                    items(entries.asReversed(), key = { it.timestamp }) { entry ->
                        Text(logger.format(entry), Modifier.fillMaxWidth().background(MaterialTheme.colorScheme.surface).padding(horizontal = 8.dp, vertical = 6.dp), style = MaterialTheme.typography.bodySmall)
                    }
                }
            }
            Button(onClick = {
                val text = entries.joinToString("\n") { logger.format(it) }.ifBlank { context.getString(R.string.no_logs) }
                val send = Intent(Intent.ACTION_SEND).apply { type = "text/plain"; putExtra(Intent.EXTRA_TEXT, text) }
                context.startActivity(Intent.createChooser(send, context.getString(R.string.share_logs)))
            }, modifier = Modifier.fillMaxWidth().padding(16.dp)) {
                Icon(Icons.Outlined.Share, null)
                Spacer(Modifier.width(10.dp))
                Text(stringResource(R.string.share_logs))
            }
        }
    }
}
