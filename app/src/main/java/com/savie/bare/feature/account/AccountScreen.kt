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
                        Text("BaRe account", fontWeight = FontWeight.Bold)
                        Text("Local setup / mockup account")
                    }
                }
            }
        }
        item { ListEntry("Settings", "Appearance, language, security, defaults", Icons.Default.Settings) { onOpen(Screen.SETTINGS) } }
        item { ListEntry("Cloud sync", "Providers and transfer", Icons.Default.Cloud) { onOpen(Screen.CLOUD) } }
        item { ListEntry("Storage", "Repository and space", Icons.Default.Storage) { onOpen(Screen.STORAGE) } }
        item { ListEntry("Management", "Labels, favorites, protection", Icons.Default.Build) { onOpen(Screen.MANAGEMENT) } }
        item { ListEntry("Diagnostics", "Logs, errors, blocked and skipped", Icons.Default.Info) { onOpen(Screen.DIAGNOSTICS) } }
        item { ListEntry("Import / Export", "APK/APKS and configuration", Icons.Default.Apps) { onOpen(Screen.IMPORT_EXPORT) } }
        item { ListEntry("About", "BaRe v1.0 FE mockup", Icons.Default.Info) {} }
    }
}
