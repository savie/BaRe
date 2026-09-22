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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import com.bare.R
import com.bare.app.BaReIdentity
import com.bare.app.LocalIdentityStore
import com.bare.recovery.RecoveryArtifactRepository
import com.bare.recovery.BaReMasterKeyStore
import com.bare.feature.settings.EncryptionPasswordStore
import com.bare.feature.settings.EncryptionPasswordStrategy
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
    val repository = remember(context) { RecoveryArtifactRepository(context) }
    val masterKeyStore = remember(context) { BaReMasterKeyStore(context) }
    val encryptionPasswordStore = remember(context) { EncryptionPasswordStore(context) }
    val advancedRecoveryEnabled = encryptionPasswordStore.loadStrategy() == EncryptionPasswordStrategy.ADVANCED && encryptionPasswordStore.hasActivePassword()
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
            status = context.getString(R.string.recovery_folder_selected)
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
                    val decoded = repository.import(uri, password.toCharArray())
                    if (identityStore.hasConflictingIdentity(decoded.payload)) {
                        error("existing LOCAL identity conflicts with recovery identity")
                    }
                    masterKeyStore.saveImported(decoded.masterKey)
                    val restoredIdentity = identityStore.restoreFromRecovery(decoded.payload)
                    encryptionPasswordStore.saveStrategy(EncryptionPasswordStrategy.ADVANCED)
                    encryptionPasswordStore.saveActivePassword(password.toCharArray())
                    restoredIdentity
                }
            }.onSuccess { identity ->
                busy = false
                password = ""
                status = context.getString(R.string.recovery_identity_restored)
                onRecovered(identity)
            }.onFailure { error ->
                busy = false
                status = context.getString(R.string.recovery_failed, error.message ?: context.getString(R.string.invalid_package_or_password))
            }
        }
    }

    Column(
        modifier = Modifier.fillMaxSize().padding(20.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        Text(stringResource(R.string.recovery), style = MaterialTheme.typography.headlineSmall)
        Text(
            stringResource(R.string.recovery_description),
            style = MaterialTheme.typography.bodyMedium,
        )
        OutlinedTextField(
            value = password,
            onValueChange = { password = it },
            modifier = Modifier.fillMaxWidth(),
            label = { Text(stringResource(R.string.recovery_password)) },
            visualTransformation = PasswordVisualTransformation(),
            singleLine = true,
            enabled = !busy,
        )
        Button(
            onClick = {
                if (!advancedRecoveryEnabled) {
                    status = context.getString(R.string.recovery_advanced_required)
                } else if (password.isBlank()) {
                    status = context.getString(R.string.enter_recovery_password_first)
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
                                    masterKey = masterKeyStore.getOrCreate(),
                                    password = password.toCharArray(),
                                )
                            }
                        }.onSuccess {
                            busy = false
                            status = context.getString(R.string.recovery_package_exported)
                        }.onFailure { error ->
                            busy = false
                            status = context.getString(R.string.export_failed, error.message ?: context.getString(R.string.storage_error))
                        }
                    }
                }
            },
            modifier = Modifier.fillMaxWidth(),
            enabled = !busy,
        ) {
            Text(if (selectedTreeUri == null) stringResource(R.string.choose_recovery_folder) else stringResource(R.string.export_recovery_package))
        }
        Button(
            onClick = {
                if (password.isBlank()) status = context.getString(R.string.enter_recovery_password_first)
                else importPicker.launch(arrayOf("application/octet-stream", "*/*"))
            },
            modifier = Modifier.fillMaxWidth(),
            enabled = !busy,
        ) {
            Text(stringResource(R.string.import_recovery_package))
        }
        Spacer(Modifier.height(4.dp))
        status?.let {
            Text(it, style = MaterialTheme.typography.bodyMedium)
        }
        TextButton(onClick = onBack, enabled = !busy) {
            Text(stringResource(R.string.back))
        }
    }
}
