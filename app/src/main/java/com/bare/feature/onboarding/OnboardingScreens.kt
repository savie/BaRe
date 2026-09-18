package com.bare.feature.onboarding

import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Security
import androidx.compose.material.icons.filled.Storage
import androidx.compose.material.icons.filled.Visibility
import androidx.compose.material.icons.filled.VisibilityOff
import androidx.compose.material3.*
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.em
import androidx.compose.ui.unit.sp
import com.bare.app.AccessMethod
import com.bare.app.IdentityType
import com.bare.R

private val EMAIL_PATTERN = Regex("^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$")
private const val MIN_PASSWORD_LENGTH = 8

@Composable
fun WelcomeScreen(onSelectIdentity: (IdentityType) -> Unit) {
    Column(
        modifier = Modifier.fillMaxSize().padding(horizontal = 24.dp, vertical = 28.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Spacer(Modifier.weight(0.72f))
        Image(
            painter = painterResource(R.drawable.bare_logo),
            contentDescription = stringResource(R.string.app_name),
            modifier = Modifier.size(210.dp).offset(x = 6.dp),
            contentScale = ContentScale.Fit,
        )
        Spacer(Modifier.height(24.dp))
        Text(
            text = "B Λ R E",
            style = MaterialTheme.typography.displaySmall.copy(fontSize = 42.sp, letterSpacing = 0.22.em),
            textAlign = TextAlign.Center,
            fontWeight = FontWeight.Medium,
        )
        Spacer(Modifier.height(8.dp))
        Text(
            text = stringResource(R.string.brand_tagline),
            style = MaterialTheme.typography.labelLarge.copy(fontSize = 17.sp, letterSpacing = 0.18.em),
            textAlign = TextAlign.Center,
            fontWeight = FontWeight.Light,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Spacer(Modifier.height(38.dp))
        Text(
            text = stringResource(R.string.welcome_description),
            style = MaterialTheme.typography.bodyLarge,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier.widthIn(max = 280.dp),
            textAlign = TextAlign.Center,
        )
        Spacer(Modifier.weight(0.55f))
        Button(
            onClick = { onSelectIdentity(IdentityType.LOCAL) },
            modifier = Modifier.fillMaxWidth().height(52.dp),
        ) { Text(stringResource(R.string.use_local)) }
        TextButton(
            onClick = { onSelectIdentity(IdentityType.ACCOUNT) },
            modifier = Modifier.fillMaxWidth().height(48.dp),
        ) { Text(stringResource(R.string.use_account)) }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LocalSetupConfirmation(onContinue: () -> Unit, onDismiss: () -> Unit) {
    ModalBottomSheet(onDismissRequest = onDismiss) {
        Column(
            Modifier.fillMaxWidth().padding(start = 24.dp, end = 24.dp, bottom = 24.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Text(stringResource(R.string.local_confirmation_title), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            Text(stringResource(R.string.local_confirmation_description), color = MaterialTheme.colorScheme.onSurfaceVariant)
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.End, verticalAlignment = Alignment.CenterVertically) {
                TextButton(onClick = onDismiss) { Text(stringResource(R.string.not_now)) }
                Button(onClick = onContinue) { Text(stringResource(R.string.continue_label)) }
            }
        }
    }
}

@Composable
fun LoginScreen(
    email: String,
    onEmailChange: (String) -> Unit,
    password: String,
    onPasswordChange: (String) -> Unit,
    onContinue: () -> Unit,
    onCreateAccount: () -> Unit,
    onForgotPassword: () -> Unit,
    onBack: () -> Unit,
) {
    var passwordVisible by remember { mutableStateOf(false) }
    var submitted by remember { mutableStateOf(false) }
    val emailValid = EMAIL_PATTERN.matches(email.trim())
    val passwordValid = password.length >= MIN_PASSWORD_LENGTH
    val formValid = emailValid && passwordValid

    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) }
        Text(stringResource(R.string.sign_in), style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
        Text(stringResource(R.string.sign_in_description), color = MaterialTheme.colorScheme.onSurfaceVariant)
        OutlinedTextField(
            value = email,
            onValueChange = onEmailChange,
            modifier = Modifier.fillMaxWidth(),
            label = { Text(stringResource(R.string.email)) },
            singleLine = true,
            keyboardOptions = androidx.compose.foundation.text.KeyboardOptions(keyboardType = KeyboardType.Email),
            isError = submitted && !emailValid,
            supportingText = {
                if (submitted && !emailValid) Text(stringResource(R.string.invalid_email))
            },
        )
        OutlinedTextField(
            value = password,
            onValueChange = onPasswordChange,
            modifier = Modifier.fillMaxWidth(),
            label = { Text(stringResource(R.string.password)) },
            singleLine = true,
            visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
            trailingIcon = {
                IconButton(onClick = { passwordVisible = !passwordVisible }) {
                    Icon(
                        imageVector = if (passwordVisible) Icons.Default.VisibilityOff else Icons.Default.Visibility,
                        contentDescription = stringResource(if (passwordVisible) R.string.hide_password else R.string.show_password),
                    )
                }
            },
            isError = submitted && !passwordValid,
            supportingText = {
                if (submitted && !passwordValid) Text(stringResource(R.string.password_too_short))
            },
        )
        Button(
            onClick = {
                submitted = true
                if (formValid) onContinue()
            },
            modifier = Modifier.fillMaxWidth(),
        ) { Text(stringResource(R.string.sign_in)) }
        TextButton(onClick = onForgotPassword, modifier = Modifier.align(Alignment.End)) { Text(stringResource(R.string.forgot_password)) }
        OutlinedButton(
            onClick = {
                submitted = true
                if (formValid) onContinue()
            },
            modifier = Modifier.fillMaxWidth(),
        ) { Text(stringResource(R.string.continue_with_google)) }
        TextButton(onClick = onCreateAccount, modifier = Modifier.fillMaxWidth()) { Text(stringResource(R.string.create_account)) }
    }
}

@Composable
fun ForgotPasswordScreen(
    email: String,
    onEmailChange: (String) -> Unit,
    onBack: () -> Unit,
) {
    var submitted by remember { mutableStateOf(false) }
    var sent by remember { mutableStateOf(false) }
    val emailValid = EMAIL_PATTERN.matches(email.trim())

    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) }
        if (!sent) {
            Text(stringResource(R.string.reset_password), style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
            Text(stringResource(R.string.reset_password_description), color = MaterialTheme.colorScheme.onSurfaceVariant)
            OutlinedTextField(
                value = email,
                onValueChange = onEmailChange,
                modifier = Modifier.fillMaxWidth(),
                label = { Text(stringResource(R.string.email)) },
                singleLine = true,
                keyboardOptions = androidx.compose.foundation.text.KeyboardOptions(keyboardType = KeyboardType.Email),
                isError = submitted && !emailValid,
                supportingText = { if (submitted && !emailValid) Text(stringResource(R.string.invalid_email)) },
            )
            Button(
                onClick = { submitted = true; if (emailValid) sent = true },
                modifier = Modifier.fillMaxWidth().height(52.dp),
            ) { Text(stringResource(R.string.send_reset_link)) }
        } else {
            Text(stringResource(R.string.check_your_email), style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
            Text(stringResource(R.string.reset_email_sent), color = MaterialTheme.colorScheme.onSurfaceVariant)
            Button(onClick = onBack, modifier = Modifier.fillMaxWidth().height(52.dp)) { Text(stringResource(R.string.back_to_sign_in)) }
        }
    }
}

@Composable
fun SignUpScreen(
    email: String,
    onEmailChange: (String) -> Unit,
    password: String,
    onPasswordChange: (String) -> Unit,
    confirmPassword: String,
    onConfirmPasswordChange: (String) -> Unit,
    onCreateAccount: () -> Unit,
    onBack: () -> Unit,
) {
    var passwordVisible by remember { mutableStateOf(false) }
    var confirmPasswordVisible by remember { mutableStateOf(false) }
    var submitted by remember { mutableStateOf(false) }
    val emailValid = EMAIL_PATTERN.matches(email.trim())
    val passwordValid = password.length >= MIN_PASSWORD_LENGTH
    val passwordsMatch = password == confirmPassword
    val formValid = emailValid && passwordValid && passwordsMatch

    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) }
        Text(stringResource(R.string.create_account), style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
        Text(stringResource(R.string.create_account_description))
        OutlinedTextField(
            value = email,
            onValueChange = onEmailChange,
            modifier = Modifier.fillMaxWidth(),
            label = { Text(stringResource(R.string.email)) },
            singleLine = true,
            keyboardOptions = androidx.compose.foundation.text.KeyboardOptions(keyboardType = KeyboardType.Email),
            isError = submitted && !emailValid,
            supportingText = {
                if (submitted && !emailValid) Text(stringResource(R.string.invalid_email))
            },
        )
        OutlinedTextField(
            value = password,
            onValueChange = onPasswordChange,
            modifier = Modifier.fillMaxWidth(),
            label = { Text(stringResource(R.string.password)) },
            singleLine = true,
            visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
            trailingIcon = {
                IconButton(onClick = { passwordVisible = !passwordVisible }) {
                    Icon(
                        imageVector = if (passwordVisible) Icons.Default.VisibilityOff else Icons.Default.Visibility,
                        contentDescription = stringResource(if (passwordVisible) R.string.hide_password else R.string.show_password),
                    )
                }
            },
            isError = submitted && !passwordValid,
            supportingText = {
                if (submitted && !passwordValid) Text(stringResource(R.string.password_too_short))
            },
        )
        OutlinedTextField(
            value = confirmPassword,
            onValueChange = onConfirmPasswordChange,
            modifier = Modifier.fillMaxWidth(),
            label = { Text(stringResource(R.string.confirm_password)) },
            singleLine = true,
            visualTransformation = if (confirmPasswordVisible) VisualTransformation.None else PasswordVisualTransformation(),
            trailingIcon = {
                IconButton(onClick = { confirmPasswordVisible = !confirmPasswordVisible }) {
                    Icon(
                        imageVector = if (confirmPasswordVisible) Icons.Default.VisibilityOff else Icons.Default.Visibility,
                        contentDescription = stringResource(if (confirmPasswordVisible) R.string.hide_password else R.string.show_password),
                    )
                }
            },
            isError = submitted && !passwordsMatch,
            supportingText = {
                if (submitted && !passwordsMatch) Text(stringResource(R.string.password_mismatch))
            },
        )
        Button(
            onClick = {
                submitted = true
                if (formValid) onCreateAccount()
            },
            modifier = Modifier.fillMaxWidth(),
        ) {
            Text(stringResource(R.string.create_account))
        }
    }
}

@Composable
fun StorageSetupScreen(onContinue: () -> Unit, onBack: () -> Unit) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) }
        Text(stringResource(R.string.backup_storage), style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
        Text(stringResource(R.string.storage_setup_description))
        StorageCard(stringResource(R.string.internal_storage), stringResource(R.string.internal_backup_path), true)
        StorageCard(stringResource(R.string.external_storage), stringResource(R.string.saf_removable_storage), false)
        StorageCard(stringResource(R.string.remote_storage), stringResource(R.string.cloud_provider), false)
        Button(onClick = onContinue, modifier = Modifier.fillMaxWidth()) { Text(stringResource(R.string.continue_label)) }
    }
}

@Composable
private fun StorageCard(title: String, subtitle: String, selected: Boolean) {
    Card(Modifier.fillMaxWidth(), colors = CardDefaults.cardColors(containerColor = if (selected) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surfaceVariant)) {
        Row(Modifier.padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
            Icon(Icons.Default.Storage, null)
            Spacer(Modifier.width(14.dp))
            Column(Modifier.weight(1f)) {
                Text(title, fontWeight = FontWeight.Bold)
                Text(subtitle, style = MaterialTheme.typography.bodySmall)
            }
            if (selected) Text(stringResource(R.string.selected), style = MaterialTheme.typography.labelMedium)
        }
    }
}

@Composable
fun AccessMethodScreen(selected: AccessMethod?, onSelect: (AccessMethod) -> Unit, onContinue: () -> Unit, onBack: () -> Unit) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Kembali") }
        Text(stringResource(R.string.access_method), style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
        Text(stringResource(R.string.access_method_description))
        AccessCard(AccessMethod.NON_ROOT, selected == AccessMethod.NON_ROOT, onSelect)
        AccessCard(AccessMethod.ROOT, selected == AccessMethod.ROOT, onSelect)
        Button(onClick = onContinue, enabled = selected != null, modifier = Modifier.fillMaxWidth()) { Text(stringResource(R.string.enter_bare)) }
    }
}

@Composable
private fun AccessCard(method: AccessMethod, selected: Boolean, onSelect: (AccessMethod) -> Unit) {
    Card(Modifier.fillMaxWidth().clickable { onSelect(method) }) {
        Row(Modifier.padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
            Icon(if (method == AccessMethod.ROOT) Icons.Default.Security else Icons.Default.Info, null)
            Spacer(Modifier.width(14.dp))
            Column(Modifier.weight(1f)) {
                Text(stringResource(method.titleRes), fontWeight = FontWeight.Bold)
                Spacer(Modifier.height(4.dp))
                Text(stringResource(method.descriptionRes), style = MaterialTheme.typography.bodySmall)
            }
            if (selected) Text("✓")
        }
    }
}
