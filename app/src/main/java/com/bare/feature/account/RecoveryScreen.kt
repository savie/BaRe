package com.bare.feature.account

import android.content.Intent
import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.ArrowBack
import androidx.compose.material.icons.outlined.Download
import androidx.compose.material.icons.outlined.Upload
import androidx.compose.material.icons.outlined.Visibility
import androidx.compose.material.icons.outlined.VisibilityOff
import androidx.compose.material3.Button
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import com.bare.R
import com.bare.app.BaReIdentity
import com.bare.app.LocalIdentityStore
import com.bare.recovery.BaReMasterKeyStore
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
    val repository = remember(context) { RecoveryArtifactRepository(context) }
    val masterKeyStore = remember(context) { BaReMasterKeyStore(context) }
    val recoveryPasswordStore = remember(context) { RecoveryPasswordStore(context) }
    val scope = rememberCoroutineScope()

    var password by remember { mutableStateOf("") }
    var confirmPassword by remember { mutableStateOf("") }
    var selectedTreeUri by remember { mutableStateOf<Uri?>(null) }
    var status by remember { mutableStateOf<String?>(null) }
    var busy by remember { mutableStateOf(false) }
    var passwordVisible by remember { mutableStateOf(false) }

    val recoveryPasswordConfigured = recoveryPasswordStore.hasPassword()

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
                    if (!recoveryPasswordStore.verifyPassword(password.toCharArray())) {
                        error(context.getString(R.string.recovery_password_incorrect))
                    }
                    val decoded = repository.import(uri, password.toCharArray())
                    if (identityStore.hasConflictingIdentity(decoded.payload)) {
                        error("existing LOCAL identity conflicts with recovery identity")
                    }
                    masterKeyStore.saveImported(decoded.masterKey)
                    identityStore.restoreFromRecovery(decoded.payload)
                }
            }.onSuccess { identity ->
                busy = false
                password = ""
                confirmPassword = ""
                status = context.getString(R.string.recovery_identity_restored)
                onRecovered(identity)
            }.onFailure { error ->
                busy = false
                status = context.getString(
                    R.string.recovery_failed,
                    error.message ?: context.getString(R.string.invalid_package_or_password),
                )
            }
        }
    }

    fun saveRecoveryPassword() {
        when {
            password.length < 8 -> status = context.getString(R.string.password_too_short)
            password != confirmPassword -> status = context.getString(R.string.password_mismatch)
            else -> {
                recoveryPasswordStore.savePassword(password.toCharArray())
                password = ""
                confirmPassword = ""
                status = context.getString(R.string.recovery_password_set)
            }
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.recovery)) },
                navigationIcon = {
                    IconButton(onClick = onBack, enabled = !busy) {
                        Icon(Icons.Outlined.ArrowBack, contentDescription = stringResource(R.string.back))
                    }
                },
            )
        },
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .padding(horizontal = 20.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Text(
                stringResource(R.string.recovery_description),
                style = MaterialTheme.typography.bodyMedium,
            )
            OutlinedTextField(
                value = password,
                onValueChange = { password = it },
                modifier = Modifier.fillMaxWidth(),
                label = { Text(stringResource(R.string.recovery_password)) },
                visualTransformation = if (passwordVisible) {
                    VisualTransformation.None
                } else {
                    PasswordVisualTransformation()
                },
                trailingIcon = {
                    IconButton(onClick = { passwordVisible = !passwordVisible }, enabled = !busy) {
                        Icon(
                            if (passwordVisible) Icons.Outlined.VisibilityOff else Icons.Outlined.Visibility,
                            contentDescription = stringResource(
                                if (passwordVisible) R.string.hide_password else R.string.show_password,
                            ),
                        )
                    }
                },
                singleLine = true,
                enabled = !busy,
            )

            if (!recoveryPasswordConfigured) {
                OutlinedTextField(
                    value = confirmPassword,
                    onValueChange = { confirmPassword = it },
                    modifier = Modifier.fillMaxWidth(),
                    label = { Text(stringResource(R.string.confirm_recovery_password)) },
                    visualTransformation = PasswordVisualTransformation(),
                    singleLine = true,
                    enabled = !busy,
                )
                Text(
                    stringResource(R.string.recovery_password_setup_description),
                    style = MaterialTheme.typography.bodySmall,
                )
                Button(
                    onClick = ::saveRecoveryPassword,
                    modifier = Modifier.fillMaxWidth(),
                    enabled = !busy,
                ) {
                    Text(stringResource(R.string.set_recovery_password))
                }
            }

            Button(
                onClick = {
                    if (!recoveryPasswordStore.hasPassword()) {
                        status = context.getString(R.string.recovery_password_required)
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
                                    if (!recoveryPasswordStore.verifyPassword(password.toCharArray())) {
                                        error(context.getString(R.string.recovery_password_incorrect))
                                    }
                                    repository.export(
                                        treeUri = selectedTreeUri!!,
                                        payload = identityStore.toRecoveryPayload(),
                                        masterKey = masterKeyStore.getOrCreate(),
                                        password = password.toCharArray(),
                                    )
                                }
                            }.onSuccess {
                                busy = false
                                password = ""
                                status = context.getString(R.string.recovery_package_exported)
                            }.onFailure { error ->
                                busy = false
                                status = context.getString(
                                    R.string.export_failed,
                                    error.message ?: context.getString(R.string.storage_error),
                                )
                            }
                        }
                    }
                },
                modifier = Modifier.fillMaxWidth(),
                enabled = !busy && recoveryPasswordConfigured,
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.Center,
                    verticalAlignment = androidx.compose.ui.Alignment.CenterVertically,
                ) {
                    Icon(Icons.Outlined.Upload, contentDescription = null)
                    Spacer(Modifier.width(8.dp))
                    Text(
                        if (selectedTreeUri == null) {
                            stringResource(R.string.choose_recovery_folder)
                        } else {
                            stringResource(R.string.export_recovery_package)
                        },
                    )
                }
            }

            Button(
                onClick = {
                    if (!recoveryPasswordStore.hasPassword()) {
                        status = context.getString(R.string.recovery_password_required)
                    } else if (password.isBlank()) {
                        status = context.getString(R.string.enter_recovery_password_first)
                    } else {
                        importPicker.launch(arrayOf("application/octet-stream", "*/*"))
                    }
                },
                modifier = Modifier.fillMaxWidth(),
                enabled = !busy && recoveryPasswordConfigured,
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.Center,
                    verticalAlignment = androidx.compose.ui.Alignment.CenterVertically,
                ) {
                    Icon(Icons.Outlined.Download, contentDescription = null)
                    Spacer(Modifier.width(8.dp))
                    Text(stringResource(R.string.import_recovery_package))
                }
            }

            Spacer(Modifier.height(4.dp))
            status?.let {
                Text(it, style = MaterialTheme.typography.bodyMedium)
            }
        }
    }
}