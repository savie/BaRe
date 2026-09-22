package com.bare.feature.onboarding

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.RadioButton
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import com.bare.R
import com.bare.app.BaReIdentity
import com.bare.app.LocalIdentityStore
import com.bare.recovery.BaReMasterKeyStore
import com.bare.feature.account.RecoveryPasswordStore
import com.bare.recovery.RecoveryArtifactDiscovery
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
    val context = androidx.compose.ui.platform.LocalContext.current
    val identityStore = remember(context) { LocalIdentityStore(context) }
    val masterKeyStore = remember(context) { BaReMasterKeyStore(context) }
    val recoveryPasswordStore = remember(context) { RecoveryPasswordStore(context) }
    val scope = rememberCoroutineScope()

    var password by remember { mutableStateOf("") }
    var decoded by remember { mutableStateOf<List<DecodedCandidate>>(emptyList()) }
    var selectedIdentity by remember { mutableStateOf<String?>(null) }
    var status by remember { mutableStateOf<String?>(null) }
    var busy by remember { mutableStateOf(false) }

    fun restore(candidate: DecodedCandidate) {
        busy = true
        status = null
        scope.launch {
            runCatching {
                withContext(Dispatchers.IO) {
                    masterKeyStore.saveImported(candidate.decoded.masterKey)
                    val restoredIdentity = identityStore.restoreFromRecovery(candidate.decoded.payload)
                    recoveryPasswordStore.savePassword(password.toCharArray())
                    restoredIdentity
                }
            }.onSuccess { identity ->
                busy = false
                password = ""
                onRecovered(identity)
            }.onFailure { error ->
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
                    candidates.mapNotNull { file ->
                        runCatching {
                            DecodedCandidate(
                                file = file,
                                decoded = RecoveryPackageCodec.decode(file.readBytes(), password.toCharArray()),
                            )
                        }.getOrNull()
                    }.distinctBy { it.decoded.payload.identityId }
                }
            }.onSuccess { matches ->
                busy = false
                if (matches.isEmpty()) {
                    status = context.getString(R.string.recovery_onboarding_invalid_password)
                } else {
                    decoded = matches
                    selectedIdentity = matches.singleOrNull()?.decoded?.payload?.identityId
                    status = null
                    if (matches.size == 1) {
                        restore(matches.single())
                    }
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


    val selected = decoded.firstOrNull { it.decoded.payload.identityId == selectedIdentity }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .verticalScroll(rememberScrollState())
            .padding(horizontal = 24.dp, vertical = 28.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Spacer(Modifier.height(28.dp))
        androidx.compose.foundation.Image(
            painter = androidx.compose.ui.res.painterResource(R.drawable.bare_logo),
            contentDescription = stringResource(R.string.app_name),
            modifier = Modifier.size(210.dp).offset(x = 25.dp),
            contentScale = androidx.compose.ui.layout.ContentScale.Fit,
        )
        Spacer(Modifier.height(24.dp))
        Text(
            text = stringResource(R.string.app_name),
            style = MaterialTheme.typography.displaySmall.copy(fontSize = 42.sp, letterSpacing = 0.22.em),
            textAlign = androidx.compose.ui.text.style.TextAlign.Center,
            fontWeight = androidx.compose.ui.text.font.FontWeight.Medium,
        )
        Spacer(Modifier.height(8.dp))
        Text(
            text = stringResource(R.string.brand_tagline),
            style = MaterialTheme.typography.labelLarge.copy(fontSize = 17.sp, letterSpacing = 0.18.em),
            textAlign = androidx.compose.ui.text.style.TextAlign.Center,
            fontWeight = androidx.compose.ui.text.font.FontWeight.Light,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Spacer(Modifier.height(54.dp))
        androidx.compose.foundation.layout.Column(
            modifier = Modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.spacedBy(14.dp),
        ) {
            Text(
                stringResource(R.string.recovery_onboarding_title),
                style = MaterialTheme.typography.headlineSmall,
            )
            Text(
                stringResource(R.string.recovery_onboarding_description),
                style = MaterialTheme.typography.bodyLarge,
            )
            Text(
                stringResource(R.string.recovery_onboarding_found, candidates.size),
                style = MaterialTheme.typography.titleMedium,
            )

            OutlinedTextField(
                value = password,
                onValueChange = { password = it },
                modifier = Modifier.fillMaxWidth(),
                label = { Text(stringResource(R.string.advanced_password)) },
                visualTransformation = PasswordVisualTransformation(),
                singleLine = true,
                enabled = !busy,
            )

            Button(
                onClick = ::recover,
                modifier = Modifier.fillMaxWidth(),
                enabled = !busy,
            ) {
                Text(stringResource(R.string.recovery_onboarding_continue))
            }

            if (decoded.size > 1) {
                Text(
                    stringResource(R.string.recovery_onboarding_select_identity, decoded.size),
                    style = MaterialTheme.typography.titleMedium,
                )
                decoded.forEach { candidate ->
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        RadioButton(
                            selected = candidate.decoded.payload.identityId == selectedIdentity,
                            onClick = { selectedIdentity = candidate.decoded.payload.identityId },
                            enabled = !busy,
                        )
                        Column {
                            val identityId = candidate.decoded.payload.identityId
                            Text(stringResource(R.string.recovery_onboarding_identity_label, identityId.takeLast(4)))
                            Text(
                                stringResource(R.string.recovery_onboarding_identity_package),
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }
                Button(
                    onClick = { selected?.let(::restore) },
                    modifier = Modifier.fillMaxWidth(),
                    enabled = !busy && selected != null,
                ) {
                    Text(stringResource(R.string.recovery_onboarding_restore_selected))
                }
            }

            status?.let {
                Text(it, color = MaterialTheme.colorScheme.error)
            }

            Spacer(Modifier.height(4.dp))

            OutlinedButton(
                onClick = onStartFresh,
                enabled = !busy,
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text(stringResource(R.string.recovery_onboarding_start_fresh))
            }
        }
    }
}

private data class DecodedCandidate(
    val file: File,
    val decoded: RecoveryPackageCodec.DecodedPackage,
)
