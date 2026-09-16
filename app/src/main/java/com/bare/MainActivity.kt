package com.bare

import android.content.pm.PackageManager
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.bare.backup.BackupResult
import com.bare.backup.DiscoveredPackage
import com.bare.backup.PackageBackupCoordinator
import com.bare.backup.PackageDiscovery
import com.bare.capability.ShizukuCapabilityProvider
import com.bare.capability.ShizukuProbeResult
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import rikka.shizuku.Shizuku

private const val SHIZUKU_PERMISSION_REQUEST_CODE = 4101

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent { BaReRoot() }
    }
}

@androidx.compose.runtime.Composable
private fun BaReRoot() {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    var packages by remember { mutableStateOf<List<DiscoveredPackage>>(emptyList()) }
    var status by remember { mutableStateOf("Discovering packages…") }
    val shizuku = remember { ShizukuCapabilityProvider(context) }

    LaunchedEffect(Unit) {
        packages = withContext(Dispatchers.IO) { PackageDiscovery(context).discover() }
        status = "${packages.size} visible packages"
    }

    MaterialTheme {
        Column(
            modifier = Modifier.fillMaxSize().padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Text("BaRe", style = MaterialTheme.typography.headlineMedium)
            Text(status, style = MaterialTheme.typography.bodyMedium)
            Button(onClick = {
                when {
                    !shizuku.isAvailable() -> status = "Shizuku unavailable"
                    !shizuku.isAuthorized() -> {
                        status = "Requesting Shizuku permission…"
                        runCatching { Shizuku.requestPermission(SHIZUKU_PERMISSION_REQUEST_CODE) }
                            .onFailure { status = "Shizuku permission request failed: ${it.message}" }
                    }
                    else -> {
                        status = "Executing privileged Shizuku probe…"
                        scope.launch {
                            val result = withContext(Dispatchers.IO) {
                                shizuku.probe(context.packageName)
                            }
                            status = when (result) {
                                is ShizukuProbeResult.Success ->
                                    "Shizuku verified: ${result.identity}; ${result.packagePaths.size} APK path(s)"
                                is ShizukuProbeResult.Failed ->
                                    "Shizuku probe failed: ${result.reason}"
                            }
                        }
                    }
                }
            }) {
                Text("Test Shizuku")
            }
            LazyColumn(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                items(packages, key = { it.packageName }) { app ->
                    Column(modifier = Modifier.fillMaxWidth()) {
                        Text(app.label, style = MaterialTheme.typography.titleMedium)
                        Text("${app.packageName} · ${app.versionName ?: "unknown"} (${app.versionCode})")
                        Button(onClick = {
                            status = "Backing up ${app.packageName}…"
                            scope.launch {
                                val result = withContext(Dispatchers.IO) {
                                    PackageBackupCoordinator(context).backup(app.packageName)
                                }
                                status = when (result) {
                                    is BackupResult.Success -> "Backup verified: ${result.artifact.archive.name}"
                                    is BackupResult.Rejected -> "Backup rejected: ${result.reason}"
                                    is BackupResult.Failed -> "Backup failed: ${result.reason}"
                                }
                            }
                        }) {
                            Text("Backup APK")
                        }
                    }
                }
            }
        }
    }
}
