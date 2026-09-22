package com.bare.feature.settings

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.ArrowBack
import androidx.compose.material.icons.outlined.Lock
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
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import com.bare.R

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun UserPasswordScreen(
    onBack: () -> Unit,
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val store = remember(context) { EncryptionPasswordStore(context) }
    var hasPassword by remember { mutableStateOf(store.hasActivePassword()) }
    var dialogOpen by remember { mutableStateOf(false) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.encryption_user_password_title)) },
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(Icons.Outlined.ArrowBack, stringResource(R.string.back))
                    }
                },
            )
        },
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .padding(horizontal = 34.dp, vertical = 20.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Text(
                stringResource(R.string.encryption_active_password),
                style = MaterialTheme.typography.headlineSmall,
            )
            Text(
                stringResource(R.string.encryption_active_password_description),
                style = MaterialTheme.typography.bodyLarge,
            )
            if (hasPassword) {
                Text(
                    stringResource(R.string.encryption_active_password_set),
                    color = MaterialTheme.colorScheme.primary,
                    style = MaterialTheme.typography.titleMedium,
                )
            } else {
                Text(
                    stringResource(R.string.encryption_no_active_password),
                    color = MaterialTheme.colorScheme.tertiary,
                    style = MaterialTheme.typography.titleMedium,
                )
            }
            Button(onClick = { dialogOpen = true }) {
                Text(
                    stringResource(
                        if (hasPassword) {
                            R.string.encryption_change_password
                        } else {
                            R.string.encryption_new_password
                        },
                    ),
                )
            }
            Spacer(Modifier.height(12.dp))
            Text(
                stringResource(R.string.encryption_active_password_warning),
                style = MaterialTheme.typography.bodyMedium,
            )
        }
    }

    if (dialogOpen) {
        PasswordDialog(
            configured = hasPassword,
            onDismiss = { dialogOpen = false },
            onSave = {
                hasPassword = true
                dialogOpen = false
            },
        )
    }
}

@Composable
private fun PasswordDialog(
    configured: Boolean,
    onDismiss: () -> Unit,
    onSave: () -> Unit,
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val store = remember(context) { EncryptionPasswordStore(context) }
    var currentPassword by remember { mutableStateOf("") }
    var newPassword by remember { mutableStateOf("") }
    var confirmation by remember { mutableStateOf("") }
    var currentVisible by remember { mutableStateOf(false) }
    var newVisible by remember { mutableStateOf(false) }
    var confirmationVisible by remember { mutableStateOf(false) }
    var error by remember { mutableStateOf<String?>(null) }

    val valid = newPassword.isNotEmpty() &&
        newPassword == confirmation &&
        (!configured || currentPassword.isNotEmpty())

    AlertDialog(
        onDismissRequest = onDismiss,
        icon = { Icon(Icons.Outlined.Lock, stringResource(R.string.encryption_password_icon)) },
        title = {
            Text(
                stringResource(
                    if (configured) {
                        R.string.encryption_change_password
                    } else {
                        R.string.encryption_new_password
                    },
                ),
            )
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                if (configured) {
                    OutlinedTextField(
                        value = currentPassword,
                        onValueChange = { currentPassword = it; error = null },
                        modifier = Modifier.fillMaxWidth(),
                        label = { Text(stringResource(R.string.current_password)) },
                        visualTransformation = if (currentVisible) VisualTransformation.None else PasswordVisualTransformation(),
                        trailingIcon = {
                            IconButton(onClick = { currentVisible = !currentVisible }) {
                                Icon(
                                    if (currentVisible) Icons.Outlined.VisibilityOff else Icons.Outlined.Visibility,
                                    stringResource(if (currentVisible) R.string.hide_password else R.string.show_password),
                                )
                            }
                        },
                        singleLine = true,
                    )
                }
                OutlinedTextField(
                    value = newPassword,
                    onValueChange = { newPassword = it; error = null },
                    modifier = Modifier.fillMaxWidth(),
                    label = { Text(stringResource(R.string.new_password)) },
                    visualTransformation = if (newVisible) VisualTransformation.None else PasswordVisualTransformation(),
                    trailingIcon = {
                        IconButton(onClick = { newVisible = !newVisible }) {
                            Icon(
                                if (newVisible) Icons.Outlined.VisibilityOff else Icons.Outlined.Visibility,
                                stringResource(if (newVisible) R.string.hide_password else R.string.show_password),
                            )
                        }
                    },
                    singleLine = true,
                )
                OutlinedTextField(
                    value = confirmation,
                    onValueChange = { confirmation = it; error = null },
                    modifier = Modifier.fillMaxWidth(),
                    label = { Text(stringResource(R.string.confirm_password)) },
                    visualTransformation = if (confirmationVisible) VisualTransformation.None else PasswordVisualTransformation(),
                    trailingIcon = {
                        IconButton(onClick = { confirmationVisible = !confirmationVisible }) {
                            Icon(
                                if (confirmationVisible) Icons.Outlined.VisibilityOff else Icons.Outlined.Visibility,
                                stringResource(if (confirmationVisible) R.string.hide_password else R.string.show_password),
                            )
                        }
                    },
                    singleLine = true,
                )
                error?.let {
                    Text(it, color = MaterialTheme.colorScheme.error)
                }
            }
        },
        confirmButton = {
            TextButton(
                onClick = {
                    if (newPassword.length < 8) {
                        error = context.getString(R.string.password_too_short)
                        return@TextButton
                    }
                    if (newPassword != confirmation) {
                        error = context.getString(R.string.password_mismatch)
                        return@TextButton
                    }
                    if (configured && !store.verifyActivePassword(currentPassword.toCharArray())) {
                        error = context.getString(R.string.encryption_password_incorrect)
                        return@TextButton
                    }
                    store.saveActivePassword(newPassword.toCharArray())
                    onSave()
                    currentPassword = ""
                    newPassword = ""
                    confirmation = ""
                },
                enabled = valid,
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
