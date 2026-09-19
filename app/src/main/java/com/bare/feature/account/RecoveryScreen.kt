package com.bare.feature.account

import android.content.Intent
import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import com.bare.app.BaReIdentity
import com.bare.app.LocalIdentityStore
import com.bare.recovery.RecoveryArtifactRepository
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

@Composable
fun RecoveryScreen(
    onRecovered: (BaReIdentity) -> Unit,
    onBack: () -> Unit,
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val identityStore = remember(context) { LocalIdentityStore(context) }
    val repository = remember(context) { RecoveryArtifactRepository(context.contentResolver) }
    val scope = rememberCoroutineScope()

    var password by remember { mutableStateOf("") }
    var selectedTreeUri by remember { mutableStateOf<Uri?>(null) }
    var status by remember { mutableStateOf<String?>(null) }
    var busy by remember { mutableStateOf(false) }

    val treePicker = rememberLauncherForActivityResult(
        ActivityResultContracts.OpenDocumentTree(),
    ) { uri ->
        if (uri != null) {
            selectedTreeUri = uri
            runCatching {
                context.contentResolver.takePersistableUriPermission(
                    uri,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION,
                )
            }
            status = "Recovery folder selected."
        }
    }

    val importPicker = rememberLauncherForActivityResult(
        ActivityResultContracts.OpenDocument(),
    ) { uri ->
        if (uri == null || password.isBlank()) return@rememberLauncherForActivityResult
        busy = true
        status = null
        scope.launch {
            runCatching {
                withContext(Dispatchers.IO) {
                    val payload = repository.import(uri, password.toCharArray())
                    identityStore.restoreFromRecovery(payload)
                }
            }.onSuccess { identity ->
                busy = false
                password = ""
                status = "Recovery identity restored."
                onRecovered(identity)
            }.onFailure { error ->
                busy = false
                status = "Recovery failed: " + (error.message ?: "invalid package or password")
            }
        }
    }

    Column(
        modifier = Modifier.fillMaxSize().padding(20.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        Text("Recovery", style = MaterialTheme.typography.headlineSmall)
        Text(
            "Export or import the encrypted LOCAL identity recovery package. " +
                "The recovery password is not stored by BaRe.",
            style = MaterialTheme.typography.bodyMedium,
        )
        OutlinedTextField(
            value = password,
            onValueChange = { password = it },
            modifier = Modifier.fillMaxWidth(),
            label = { Text("Recovery password") },
            visualTransformation = PasswordVisualTransformation(),
            singleLine = true,
            enabled = !busy,
        )
        Button(
            onClick = {
                if (password.isBlank()) {
                    status = "Enter a recovery password first."
                } else if (selectedTreeUri == null) {
                    treePicker.launch(null)
                } else {
                    busy = true
                    status = null
                    scope.launch {
                        runCatching {
                            withContext(Dispatchers.IO) {
                                repository.export(
                                    treeUri = selectedTreeUri!!,
                                    payload = identityStore.toRecoveryPayload(),
                                    password = password.toCharArray(),
                                )
                            }
                        }.onSuccess {
                            busy = false
                            status = "Recovery package exported."
                        }.onFailure { error ->
                            busy = false
                            status = "Export failed: " + (error.message ?: "storage error")
                        }
                    }
                }
            },
            modifier = Modifier.fillMaxWidth(),
            enabled = !busy,
        ) {
            Text(if (selectedTreeUri == null) "Choose recovery folder" else "Export recovery package")
        }
        Button(
            onClick = {
                if (password.isBlank()) status = "Enter a recovery password first."
                else importPicker.launch(arrayOf("application/octet-stream", "*/*"))
            },
            modifier = Modifier.fillMaxWidth(),
            enabled = !busy,
        ) {
            Text("Import recovery package")
        }
        Spacer(Modifier.height(4.dp))
        status?.let {
            Text(it, style = MaterialTheme.typography.bodyMedium)
        }
        TextButton(onClick = onBack, enabled = !busy) {
            Text("Back")
        }
    }
}
