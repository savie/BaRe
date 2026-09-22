package com.bare.feature.account

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
import androidx.compose.material.icons.outlined.Lock
import androidx.compose.material.icons.outlined.Upload
import androidx.compose.material.icons.outlined.Visibility
import androidx.compose.material.icons.outlined.VisibilityOff
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
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
    val repository = remember(context) { RecoveryArtifactRepository(context) }
    val masterKeyStore = remember(context) { BaReMasterKeyStore(context) }
    val recoveryPasswordStore = remember(context) { RecoveryPasswordStore(context) }
    val storageRepository = remember(context) { BackupStorageRepository(context) }
    val storageConfiguration = remember(context) { StorageConfigurationStore(context) }
    val scope = rememberCoroutineScope()

    var password by remember { mutableStateOf("") }
    var status by remember { mutableStateOf<String?>(null) }
    var busy by remember { mutableStateOf(false) }
    var passwordVisible by remember { mutableStateOf(false) }
    var recoveryPasswordConfigured by remember {
        mutableStateOf(recoveryPasswordStore.hasPassword())
    }
    var passwordDialogOpen by remember { mutableStateOf(false) }

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

    fun saveRecoveryPassword(newPassword: CharArray, confirmation: CharArray) {
        if (newPassword.size < 8) {
            newPassword.fill('\u0000')
            confirmation.fill('\u0000')
            status = context.getString(R.string.password_too_short)
            return
        }
        if (!newPassword.contentEquals(confirmation)) {
            newPassword.fill('\u0000')
            confirmation.fill('\u0000')
            status = context.getString(R.string.password_mismatch)
            return
        }
        recoveryPasswordStore.savePassword(newPassword)
        confirmation.fill('\u0000')
        recoveryPasswordConfigured = true
        passwordDialogOpen = false
        status = context.getString(R.string.recovery_password_set)
    }

    fun changeRecoveryPassword(
        currentPassword: CharArray,
        newPassword: CharArray,
        confirmation: CharArray,
    ) {
        if (newPassword.size < 8) {
            currentPassword.fill('\u0000')
            newPassword.fill('\u0000')
            confirmation.fill('\u0000')
            status = context.getString(R.string.password_too_short)
            return
        }
        if (!newPassword.contentEquals(confirmation)) {
            currentPassword.fill('\u0000')
            newPassword.fill('\u0000')
            confirmation.fill('\u0000')
            status = context.getString(R.string.password_mismatch)
            return
        }

        busy = true
        status = null
        passwordDialogOpen = false
        scope.launch {
            runCatching {
                withContext(Dispatchers.IO) {
                    if (!recoveryPasswordStore.verifyPassword(currentPassword)) {
                        error(context.getString(R.string.recovery_password_incorrect))
                    }

                    val identity = identityStore.load()
                    val recoveryDirectory = if (identity != null) {
                        val kind = storageConfiguration.loadKind() ?: BackupStorage.Kind.INTERNAL
                        storageRepository.initialize(identity.identityId, kind).recoveryDirectory
                    } else {
                        null
                    }
                    val artifact = recoveryDirectory?.let {
                        java.io.File(it, "bare-recovery.bare")
                    }

                    if (artifact?.isFile == true) {
                        val masterKey = masterKeyStore.getExisting()
                            ?: error(context.getString(R.string.recovery_master_key_unavailable))
                        repository.exportToFile(
                            directory = recoveryDirectory,
                            payload = identityStore.toRecoveryPayload(),
                            masterKey = masterKey,
                            password = newPassword,
                        )
                    }
                    recoveryPasswordStore.savePassword(newPassword)
                }
            }.onSuccess {
                busy = false
                status = context.getString(R.string.recovery_password_changed)
            }.onFailure { error ->
                busy = false
                status = context.getString(
                    R.string.recovery_password_change_failed,
                    error.message ?: context.getString(R.string.operation_failed),
                )
            }
        }
    }

    fun exportRecovery() {
        if (!recoveryPasswordStore.hasPassword()) {
            passwordDialogOpen = true
            return
        }
        if (password.isBlank()) {
            status = context.getString(R.string.enter_recovery_password_first)
            return
        }

        busy = true
        status = null
        scope.launch {
            runCatching {
                withContext(Dispatchers.IO) {
                    if (!recoveryPasswordStore.verifyPassword(password.toCharArray())) {
                        error(context.getString(R.string.recovery_password_incorrect))
                    }
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

            TextButton(
                onClick = { passwordDialogOpen = true },
                enabled = !busy,
            ) {
                Text(
                    stringResource(
                        if (recoveryPasswordConfigured) {
                            R.string.change_recovery_password
                        } else {
                            R.string.set_recovery_password
                        },
                    ),
                )
            }

            Button(
                onClick = ::exportRecovery,
                modifier = Modifier.fillMaxWidth(),
                enabled = !busy && recoveryPasswordConfigured,
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.Center,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Icon(Icons.Outlined.Upload, contentDescription = null)
                    Spacer(Modifier.width(8.dp))
                    Text(stringResource(R.string.export_recovery_package))
                }
            }

            Button(
                onClick = {
                    if (!recoveryPasswordConfigured) {
                        passwordDialogOpen = true
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
                    verticalAlignment = Alignment.CenterVertically,
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

    if (passwordDialogOpen) {
        RecoveryPasswordDialog(
            configured = recoveryPasswordConfigured,
            onDismiss = { passwordDialogOpen = false },
            onSet = ::saveRecoveryPassword,
            onChange = ::changeRecoveryPassword,
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
                    if (configured) {
                        R.string.change_recovery_password
                    } else {
                        R.string.set_recovery_password
                    },
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
                            )
                        }
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
