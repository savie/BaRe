package com.bare.feature.onboarding

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.selection.selectable
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Visibility
import androidx.compose.material.icons.filled.VisibilityOff
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.bare.R
import com.bare.app.BaReIdentity
import com.bare.app.LocalIdentityStore
import com.bare.feature.account.RecoveryPasswordStore
import com.bare.recovery.BaReMasterKeyStore
import com.bare.recovery.RecoveryPackageCodec
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File

@Composable
fun RecoveryOnboardingScreen(
    candidates: List<File>,
    onRecovered: (BaReIdentity) -> Unit,
    onStartFresh: () -> Unit,
) {
    val context = LocalContext.current
    val identityStore = remember(context) { LocalIdentityStore(context) }
    val masterKeyStore = remember(context) { BaReMasterKeyStore(context) }
    val recoveryPasswordStore = remember(context) { RecoveryPasswordStore(context) }
    val scope = rememberCoroutineScope()

    var password by remember { mutableStateOf("") }
    var decoded by remember { mutableStateOf<List<DecodedCandidate>>(emptyList()) }
    var selectedIdentity by remember { mutableStateOf<String?>(null) }
    var status by remember { mutableStateOf<String?>(null) }
    var busy by remember { mutableStateOf(false) }
    var passwordVisible by remember { mutableStateOf(false) }
    var selectionStep by remember { mutableStateOf(false) }
    var restorePassword by remember { mutableStateOf<CharArray?>(null) }

    fun clearRestorePassword() {
        restorePassword?.fill('\u0000')
        restorePassword = null
    }

    fun restore(candidate: DecodedCandidate) {
        busy = true
        status = null
        scope.launch {
            runCatching {
                withContext(Dispatchers.IO) {
                    masterKeyStore.saveImported(candidate.decoded.masterKey)
                    val restoredIdentity = identityStore.restoreFromRecovery(candidate.decoded.payload)
                    if (!recoveryPasswordStore.hasPassword()) {
                        val localRecoveryPassword = restorePassword?.copyOf()
                            ?: error(context.getString(R.string.recovery_password_required))
                        recoveryPasswordStore.savePassword(localRecoveryPassword)
                    }
                    restoredIdentity
                }
            }.onSuccess { identity ->
                busy = false
                clearRestorePassword()
                password = ""
                onRecovered(identity)
            }.onFailure { error ->
                clearRestorePassword()
                busy = false
                status = context.getString(
                    R.string.recovery_onboarding_failed,
                    error.message ?: context.getString(R.string.operation_failed),
                )
            }
        }
    }

    fun recover() {
        if (password.isBlank()) {
            status = context.getString(R.string.recovery_onboarding_enter_password)
            return
        }

        busy = true
        status = null
        scope.launch {
            runCatching {
                withContext(Dispatchers.IO) {
                    val recoveryPassword = password.toCharArray()
                    if (
                        recoveryPasswordStore.hasPassword() &&
                        !recoveryPasswordStore.verifyPassword(recoveryPassword.copyOf())
                    ) {
                        recoveryPassword.fill('\u0000')
                        error(context.getString(R.string.recovery_password_incorrect))
                    }

                    candidates.mapNotNull { file ->
                        runCatching {
                            DecodedCandidate(
                                file = file,
                                decoded = RecoveryPackageCodec.decode(
                                    file.readBytes(),
                                    recoveryPassword.copyOf(),
                                ),
                            )
                        }.getOrNull()
                    }.also {
                        recoveryPassword.fill('\u0000')
                    }.distinctBy { it.decoded.payload.identityId }
                }
            }.onSuccess { matches ->
                busy = false
                if (matches.isEmpty()) {
                    clearRestorePassword()
                    status = context.getString(R.string.recovery_onboarding_invalid_password)
                } else if (matches.size == 1) {
                    restorePassword = password.toCharArray()
                    decoded = matches
                    selectedIdentity = matches.single().decoded.payload.identityId
                    restore(matches.single())
                } else {
                    restorePassword = password.toCharArray()
                    decoded = matches
                    selectedIdentity = null
                    selectionStep = true
                }
            }.onFailure { error ->
                busy = false
                status = context.getString(
                    R.string.recovery_onboarding_failed,
                    error.message ?: context.getString(R.string.invalid_package_or_password),
                )
            }
        }
    }

    val selected = decoded.firstOrNull {
        it.decoded.payload.identityId == selectedIdentity
    }

    Box(modifier = Modifier.fillMaxSize()) {
        WelcomeScreen(onSelectIdentity = {
            clearRestorePassword()
            onStartFresh()
        })

        AlertDialog(
        onDismissRequest = {
            if (!busy) {
                clearRestorePassword()
                onStartFresh()
            }
        },
        title = {
            Text(stringResource(R.string.recovery_onboarding_title))
        },
        text = {
            if (!selectionStep) {
                Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                    Text(
                        stringResource(R.string.recovery_onboarding_description),
                        style = MaterialTheme.typography.bodyMedium,
                    )
                    OutlinedTextField(
                        value = password,
                        onValueChange = {
                            password = it
                            status = null
                        },
                        modifier = Modifier.fillMaxWidth(),
                        label = { Text(stringResource(R.string.recovery_password)) },
                        visualTransformation = if (passwordVisible) {
                            VisualTransformation.None
                        } else {
                            PasswordVisualTransformation()
                        },
                        singleLine = true,
                        enabled = !busy,
                        trailingIcon = {
                            IconButton(
                                onClick = { passwordVisible = !passwordVisible },
                                enabled = !busy,
                            ) {
                                Icon(
                                    imageVector = if (passwordVisible) {
                                        Icons.Filled.VisibilityOff
                                    } else {
                                        Icons.Filled.Visibility
                                    },
                                    contentDescription = stringResource(
                                        if (passwordVisible) {
                                            R.string.hide_password
                                        } else {
                                            R.string.show_password
                                        },
                                    ),
                                )
                            }
                        },
                    )
                    status?.let {
                        Text(
                            text = it,
                            color = MaterialTheme.colorScheme.error,
                            style = MaterialTheme.typography.bodySmall,
                        )
                    }
                }
            } else {
                Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                    Text(
                        stringResource(
                            R.string.recovery_onboarding_select_identity,
                            decoded.size,
                        ),
                        style = MaterialTheme.typography.bodyMedium,
                    )
                    LazyColumn(
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(max = 300.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp),
                    ) {
                        items(
                            items = decoded,
                            key = { it.decoded.payload.identityId },
                        ) { candidate ->
                            val identityId = candidate.decoded.payload.identityId
                            val selectedCard =
                                identityId == selectedIdentity
                            Card(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .selectable(
                                        selected = selectedCard,
                                        onClick = {
                                            selectedIdentity = identityId
                                            status = null
                                        },
                                        enabled = !busy,
                                        role = Role.Button,
                                    ),
                                shape = RoundedCornerShape(14.dp),
                                border = BorderStroke(
                                    width = if (selectedCard) 2.dp else 1.dp,
                                    color = if (selectedCard) {
                                        MaterialTheme.colorScheme.primary
                                    } else {
                                        MaterialTheme.colorScheme.outlineVariant
                                    },
                                ),
                                colors = CardDefaults.cardColors(
                                    containerColor = if (selectedCard) {
                                        MaterialTheme.colorScheme.secondaryContainer
                                    } else {
                                        MaterialTheme.colorScheme.surfaceContainerLow
                                    },
                                ),
                            ) {
                                Column(
                                    modifier = Modifier.padding(
                                        horizontal = 16.dp,
                                        vertical = 12.dp,
                                    ),
                                ) {
                                    Text(
                                        text = stringResource(R.string.recovery_onboarding_identity_label),
                                        style = MaterialTheme.typography.labelLarge,
                                    )
                                    Text(
                                        text = identityId.take(4) + "••••",
                                        style = MaterialTheme.typography.titleMedium,
                                        letterSpacing = 0.08.sp,
                                    )
                                }
                            }
                        }
                    }
                    status?.let {
                        Text(
                            text = it,
                            color = MaterialTheme.colorScheme.error,
                            style = MaterialTheme.typography.bodySmall,
                        )
                    }
                }
            }
        },
        confirmButton = {
            if (!selectionStep) {
                Button(
                    onClick = ::recover,
                    enabled = !busy,
                ) {
                    Text(stringResource(R.string.recovery_onboarding_continue))
                }
            } else {
                Button(
                    onClick = { selected?.let(::restore) },
                    enabled = !busy && selected != null,
                ) {
                    Text(stringResource(R.string.recovery_onboarding_continue))
                }
            }
        },
        dismissButton = {
            if (selectionStep) {
                TextButton(
                    onClick = {
                        if (!busy) {
                            clearRestorePassword()
                            selectionStep = false
                            selectedIdentity = null
                            status = null
                        }
                    },
                    enabled = !busy,
                ) {
                    Text(stringResource(R.string.back))
                }
            } else {
                TextButton(
                    onClick = {
                        clearRestorePassword()
                        onStartFresh()
                    },
                    enabled = !busy,
                ) {
                    Text(stringResource(R.string.cancel))
                }
            }
        },
        )
    }
}

private data class DecodedCandidate(
    val file: File,
    val decoded: RecoveryPackageCodec.DecodedPackage,
)
