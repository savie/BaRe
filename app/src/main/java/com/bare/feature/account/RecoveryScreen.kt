package com.bare.feature.account

import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.ArrowBack
import androidx.compose.material.icons.outlined.Download
import androidx.compose.material.icons.outlined.Lock
import androidx.compose.material.icons.outlined.Upload
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Card
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
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
import com.bare.storage.BackupStorage
import com.bare.storage.BackupStorageRepository
import com.bare.storage.StorageConfigurationStore
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RecoveryScreen(
    onRecovered: (BaReIdentity) -> Unit,
    onBack: () -> Unit,
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val identityStore = remember(context) { LocalIdentityStore(context) }
    val recoveryPasswordStore = remember(context) { RecoveryPasswordStore(context) }
    val repository = remember(context) { RecoveryArtifactRepository(context) }
    val masterKeyStore = remember(context) { BaReMasterKeyStore(context) }
    val storageRepository = remember(context) { BackupStorageRepository(context) }
    val storageConfiguration = remember(context) { StorageConfigurationStore(context) }
    val scope = rememberCoroutineScope()

    var password by remember { mutableStateOf("") }
    var status by remember { mutableStateOf<String?>(null) }
    var busy by remember { mutableStateOf(false) }
    var passwordDialogOpen by remember { mutableStateOf(false) }
    var passwordConfigured by remember { mutableStateOf(recoveryPasswordStore.hasPassword()) }

    fun passwordMatchesConfigured(): Boolean {
        if (!recoveryPasswordStore.hasPassword()) return true
        return recoveryPasswordStore.verifyPassword(password.toCharArray())
    }

    val importPicker = rememberLauncherForActivityResult(
        ActivityResultContracts.OpenDocument(),
    ) { uri ->
        if (uri == null) return@rememberLauncherForActivityResult
        busy = true
        status = null
        scope.launch {
            runCatching {
                withContext(Dispatchers.IO) {
                    if (password.isBlank()) error(context.getString(R.string.enter_recovery_password_first))
                    if (!passwordMatchesConfigured()) {
                        error(context.getString(R.string.recovery_password_incorrect))
                    }
                    val decoded = repository.import(uri, password.toCharArray())
                    if (identityStore.hasConflictingIdentity(decoded.payload)) {
                        error(context.getString(R.string.recovery_identity_conflict))
                    }
                    masterKeyStore.saveImported(decoded.masterKey)
                    identityStore.restoreFromRecovery(decoded.payload)
                    if (!recoveryPasswordStore.hasPassword()) {
                        recoveryPasswordStore.savePassword(password.toCharArray())
                    }
                }
            }.onSuccess { identity ->
                busy = false
                password = ""
                passwordConfigured = recoveryPasswordStore.hasPassword()
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

    fun exportRecovery() {
        if (password.isBlank()) {
            status = context.getString(R.string.enter_recovery_password_first)
            passwordDialogOpen = true
            return
        }
        if (!passwordMatchesConfigured()) {
            status = context.getString(R.string.recovery_password_incorrect)
            password = ""
            passwordDialogOpen = true
            return
        }

        busy = true
        status = null
        scope.launch {
            runCatching {
                withContext(Dispatchers.IO) {
                    val payload = identityStore.toRecoveryPayload()
                    val kind = storageConfiguration.loadKind() ?: BackupStorage.Kind.INTERNAL
                    val recoveryDirectory = storageRepository
                        .initialize(payload.identityId, kind)
                        .recoveryDirectory
                    repository.exportToFile(
                        directory = recoveryDirectory,
                        payload = payload,
                        masterKey = masterKeyStore.getOrCreate(),
                        password = password.toCharArray(),
                    )
                }
            }.onSuccess {
                busy = false
                password = ""
                passwordConfigured = recoveryPasswordStore.hasPassword()
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
                .padding(horizontal = 20.dp, vertical = 16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp),
        ) {
            Text(
                stringResource(R.string.recovery_description),
                style = MaterialTheme.typography.bodyLarge,
            )

            Card(modifier = Modifier.fillMaxWidth()) {
                Column(
                    modifier = Modifier.padding(18.dp),
                    verticalArrangement = Arrangement.spacedBy(10.dp),
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Outlined.Lock, contentDescription = null)
                        Spacer(Modifier.width(12.dp))
                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                stringResource(R.string.recovery_password_status_title),
                                style = MaterialTheme.typography.titleMedium,
                            )
                            Text(
                                stringResource(
                                    if (passwordConfigured) {
                                        R.string.recovery_password_status_configured
                                    } else {
                                        R.string.recovery_password_status_missing
                                    },
                                ),
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                        TextButton(
                            onClick = { passwordDialogOpen = true },
                            enabled = !busy,
                        ) {
                            Text(
                                stringResource(
                                    if (passwordConfigured) R.string.change_password else R.string.set_password,
                                ),
                            )
                        }
                    }
                }
            }

            Card(
                modifier = Modifier.fillMaxWidth(),
                onClick = ::exportRecovery,
                enabled = !busy && passwordConfigured,
            ) {
                Column(
                    modifier = Modifier.padding(20.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Outlined.Upload, contentDescription = null)
                        Spacer(Modifier.width(12.dp))
                        Text(
                            stringResource(R.string.export_recovery_package),
                            style = MaterialTheme.typography.titleMedium,
                        )
                    }
                    Text(
                        stringResource(R.string.export_recovery_description),
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
            }

            Card(
                modifier = Modifier.fillMaxWidth(),
                onClick = {
                    if (password.isBlank()) {
                        passwordDialogOpen = true
                    } else {
                        importPicker.launch(arrayOf("application/octet-stream", "*/*"))
                    }
                },
                enabled = !busy,
            ) {
                Column(
                    modifier = Modifier.padding(20.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Outlined.Download, contentDescription = null)
                        Spacer(Modifier.width(12.dp))
                        Text(
                            stringResource(R.string.import_recovery_package),
                            style = MaterialTheme.typography.titleMedium,
                        )
                    }
                    Text(
                        stringResource(R.string.import_recovery_description),
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
            }

            status?.let {
                Text(it, style = MaterialTheme.typography.bodyMedium)
            }
        }
    }

    if (passwordDialogOpen) {
        RecoveryPasswordDialog(
            configured = passwordConfigured,
            onDismiss = { passwordDialogOpen = false },
            onSet = { newPassword, confirmation ->
                if (!newPassword.contentEquals(confirmation)) {
                    newPassword.fill('\\u0000')
                    confirmation.fill('\\u0000')
                    status = context.getString(R.string.passwords_do_not_match)
                    return@RecoveryPasswordDialog
                }
                recoveryPasswordStore.savePassword(newPassword)
                confirmation.fill('\\u0000')
                passwordConfigured = true
                passwordDialogOpen = false
                status = context.getString(R.string.recovery_password_configured)
            },
            onChange = { currentPassword, newPassword, confirmation ->
                if (!newPassword.contentEquals(confirmation)) {
                    currentPassword.fill('\\u0000')
                    newPassword.fill('\\u0000')
                    confirmation.fill('\\u0000')
                    status = context.getString(R.string.passwords_do_not_match)
                    return@RecoveryPasswordDialog
                }
                if (!recoveryPasswordStore.changePassword(currentPassword, newPassword)) {
                    confirmation.fill('\\u0000')
                    status = context.getString(R.string.recovery_password_incorrect)
                    return@RecoveryPasswordDialog
                }
                confirmation.fill('\\u0000')
                passwordConfigured = true
                passwordDialogOpen = false
                status = context.getString(R.string.recovery_password_configured)
            },
        )
    }
}

@Composable
private fun RecoveryPasswordDialog(
    configured: Boolean,
    onDismiss: () -> Unit,
    onSet: (CharArray, CharArray) -> Unit,
    onChange: (CharArray, CharArray, CharArray) -> Unit,
) {
    var currentPassword by remember { mutableStateOf("") }
    var newPassword by remember { mutableStateOf("") }
    var confirmation by remember { mutableStateOf("") }
    var currentVisible by remember { mutableStateOf(false) }
    var newVisible by remember { mutableStateOf(false) }
    var confirmationVisible by remember { mutableStateOf(false) }

    AlertDialog(
        onDismissRequest = onDismiss,
        icon = { Icon(Icons.Outlined.Lock, contentDescription = stringResource(R.string.recovery_password_icon)) },
        title = {
            Text(
                stringResource(
                    if (configured) R.string.change_recovery_password else R.string.set_recovery_password,
                ),
            )
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                if (configured) {
                    OutlinedTextField(
                        value = currentPassword,
                        onValueChange = { currentPassword = it },
                        modifier = Modifier.fillMaxWidth(),
                        label = { Text(stringResource(R.string.current_password)) },
                        visualTransformation = if (currentVisible) VisualTransformation.None else PasswordVisualTransformation(),
                        trailingIcon = {
                            IconButton(onClick = { currentVisible = !currentVisible }) {
                                Icon(
                                    if (currentVisible) Icons.Outlined.VisibilityOff else Icons.Outlined.Visibility,
                                    contentDescription = stringResource(
                                        if (currentVisible) R.string.hide_password else R.string.show_password,
                                    ),
                                )
                            }
                        },
                        singleLine = true,
                    )
                }
                OutlinedTextField(
                    value = newPassword,
                    onValueChange = { newPassword = it },
                    modifier = Modifier.fillMaxWidth(),
                    label = { Text(stringResource(R.string.new_password)) },
                    visualTransformation = if (newVisible) VisualTransformation.None else PasswordVisualTransformation(),
                    trailingIcon = {
                        IconButton(onClick = { newVisible = !newVisible }) {
                            Icon(
                                if (newVisible) Icons.Outlined.VisibilityOff else Icons.Outlined.Visibility,
                                contentDescription = stringResource(
                                    if (newVisible) R.string.hide_password else R.string.show_password,
                                ),
                            )
                        }
                    },
                    singleLine = true,
                )
                OutlinedTextField(
                    value = confirmation,
                    onValueChange = { confirmation = it },
                    modifier = Modifier.fillMaxWidth(),
                    label = { Text(stringResource(R.string.confirm_password)) },
                    visualTransformation = if (confirmationVisible) VisualTransformation.None else PasswordVisualTransformation(),
                    trailingIcon = {
                        IconButton(onClick = { confirmationVisible = !confirmationVisible }) {
                            Icon(
                                if (confirmationVisible) Icons.Outlined.VisibilityOff else Icons.Outlined.Visibility,
                                contentDescription = stringResource(
                                    if (confirmationVisible) R.string.hide_password else R.string.show_password,
                                ),
                            }
                        },
                    },
                    singleLine = true,
                )
            }
        },
        confirmButton = {
            TextButton(
                onClick = {
                    if (configured) {
                        onChange(
                            currentPassword.toCharArray(),
                            newPassword.toCharArray(),
                            confirmation.toCharArray(),
                        )
                    } else {
                        onSet(newPassword.toCharArray(), confirmation.toCharArray())
                    }
                    currentPassword = ""
                    newPassword = ""
                    confirmation = ""
                },
                enabled = newPassword.isNotEmpty() &&
                    confirmation.isNotEmpty() &&
                    (!configured || currentPassword.isNotEmpty()),
            ) {
                Text(stringResource(R.string.save))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text(stringResource(R.string.cancel))
            }
        },
    )
}
