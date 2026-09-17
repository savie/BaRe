package com.bare

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
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
import com.bare.capability.AdbCapabilityProvider
import com.bare.capability.AdbProbeResult
import com.bare.capability.RootCapabilityProvider
import com.bare.capability.RootProbeResult
import com.bare.capability.ShizukuCapabilityProvider
import com.bare.capability.ShizukuProbeResult
import com.bare.core.domain.PrivilegeMode
import com.bare.restore.PackageRestoreCoordinator
import com.bare.restore.RestoreResult
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
    var selectedMode by remember { mutableStateOf(PrivilegeMode.SHIZUKU) }
    val adb = remember { AdbCapabilityProvider() }
    val shizuku = remember { ShizukuCapabilityProvider(context) }
    val root = remember { RootCapabilityProvider() }
    val restoreLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.OpenDocument(),
    ) { uri ->
        if (uri == null) {
            status = "Restore cancelled"
        } else {
            status = "Restoring selected backup…"
            scope.launch {
                val result = withContext(Dispatchers.IO) {
                    val local = java.io.File(context.cacheDir, "selected-restore-${System.currentTimeMillis()}.bare.zip")
                    runCatching {
                        context.contentResolver.openInputStream(uri)?.use { input ->
                            local.outputStream().use { output -> input.copyTo(output) }
                        } ?: error("Unable to open selected backup")
                        PackageRestoreCoordinator(context).restore(local)
                    }.getOrElse { RestoreResult.Failed("Restore input failed: ${it.message}", it) }
                        .also { local.delete() }
                }
                status = when (result) {
                    is RestoreResult.Success -> "Restore verified: ${result.packageName} · ${result.status}"
                    is RestoreResult.Rejected -> "Restore rejected: ${result.reason}"
                    is RestoreResult.Failed -> "Restore failed: ${result.reason}"
                }
            }
        }
    }

    LaunchedEffect(Unit) {
        packages = withContext(Dispatchers.IO) { PackageDiscovery(context).discover() }
        status = "${packages.size} visible packages · mode=${selectedMode.name}"
    }

    MaterialTheme {
        Column(
            modifier = Modifier.fillMaxSize().padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Text("BaRe", style = MaterialTheme.typography.headlineMedium)
            Text("Backup mode: ${selectedMode.name}", style = MaterialTheme.typography.titleMedium)
            Text(status, style = MaterialTheme.typography.bodyMedium)

            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                Button(onClick = { selectedMode = PrivilegeMode.NON_ROOT }) { Text("NON_ROOT") }
                Button(onClick = { selectedMode = PrivilegeMode.ADB }) { Text("ADB") }
                Button(onClick = { selectedMode = PrivilegeMode.SHIZUKU }) { Text("SHIZUKU") }
                Button(onClick = { selectedMode = PrivilegeMode.ROOT }) { Text("ROOT") }
            }

            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                Button(onClick = {
                    restoreLauncher.launch(arrayOf("application/zip", "application/octet-stream"))
                }) { Text("Restore Backup") }

                Button(onClick = {
                    scope.launch {
                        status = "Testing ADB localhost:5037…"
                        val result = withContext(Dispatchers.IO) { adb.probe() }
                        status = when (result) {
                            is AdbProbeResult.Success -> "ADB verified: ${result.identity} via localhost:5037"
                            is AdbProbeResult.Failed -> "ADB probe failed: ${result.reason}"
                        }
                    }
                }) { Text("Test ADB") }

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
                                val result = withContext(Dispatchers.IO) { shizuku.probe(context.packageName) }
                                status = when (result) {
                                    is ShizukuProbeResult.Success ->
                                        "Shizuku verified: ${result.identity}; ${result.packagePaths.size} APK path(s)"
                                    is ShizukuProbeResult.Failed -> "Shizuku probe failed: ${result.reason}"
                                }
                            }
                        }
                    }
                }) { Text("Test Shizuku") }

                Button(onClick = {
                    scope.launch {
                        status = "Testing root shell…"
                        val result = withContext(Dispatchers.IO) { root.probe() }
                        status = when (result) {
                            is RootProbeResult.Success -> "Root verified: ${result.identity}"
                            is RootProbeResult.Failed -> "Root probe failed: ${result.reason}"
                        }
                    }
                }) { Text("Test Root") }
            }

            LazyColumn(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                items(packages, key = { it.packageName }) { app ->
                    Column(modifier = Modifier.fillMaxWidth()) {
                        Text(app.label, style = MaterialTheme.typography.titleMedium)
                        Text("${app.packageName} · ${app.versionName ?: "unknown"} (${app.versionCode})")
                        Button(onClick = {
                            val mode = selectedMode
                            status = "Backing up ${app.packageName} via ${mode.name}…"
                            scope.launch {
                                val result = withContext(Dispatchers.IO) {
                                    PackageBackupCoordinator(context).backup(app.packageName, mode)
                                }
                                status = when (result) {
                                    is BackupResult.Success -> "Backup verified via ${mode.name}: ${result.artifact.archive.name}"
                                    is BackupResult.Rejected -> "Backup rejected via ${mode.name}: ${result.reason}"
                                    is BackupResult.Failed -> "Backup failed via ${mode.name}: ${result.reason}"
                                }
                            }
                        }) { Text("Backup APK (${selectedMode.name})") }
                    }
                }
            }
        }
    }
}
