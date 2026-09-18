package com.savie.bare.feature.onboarding

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Backup
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Security
import androidx.compose.material.icons.filled.Storage
import androidx.compose.material3.*
import androidx.compose.ui.res.stringResource
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.savie.bare.app.AccessMethod

@Composable
fun WelcomeScreen(onContinue: () -> Unit) {
    Column(Modifier.fillMaxSize().padding(24.dp), Arrangement.Center, Alignment.CenterHorizontally) {
        Box(Modifier.size(92.dp).background(MaterialTheme.colorScheme.primary, CircleShape), Alignment.Center) {
            Icon(Icons.Default.Backup, contentDescription = stringResource(R.string.app_name), modifier = Modifier.size(48.dp))
        }
        Spacer(Modifier.height(20.dp))
        Text(stringResource(R.string.app_name), style = MaterialTheme.typography.displaySmall, fontWeight = FontWeight.Bold)
        Text(stringResource(R.string.backup_restore_manager), style = MaterialTheme.typography.titleMedium)
        Spacer(Modifier.height(12.dp))
        Text(stringResource(R.string.welcome_description))
        Spacer(Modifier.height(28.dp))
        Button(onClick = onContinue, modifier = Modifier.fillMaxWidth()) { Text(stringResource(R.string.get_started)) }
        TextButton(onClick = onContinue, modifier = Modifier.fillMaxWidth()) { Text(stringResource(R.string.already_have_account)) }
    }
}

@Composable
fun LoginScreen(email: String, onEmailChange: (String) -> Unit, onContinue: () -> Unit, onBack: () -> Unit) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, stringResource(R.string.back)) }
        Text(stringResource(R.string.sign_in), style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
        Text(stringResource(R.string.account_cloud_description))
        OutlinedTextField(email, onEmailChange, Modifier.fillMaxWidth(), label = { Text(stringResource(R.string.email)) }, singleLine = true)
        OutlinedTextField("", {}, Modifier.fillMaxWidth(), label = { Text(stringResource(R.string.password)) }, singleLine = true)
        Button(onClick = onContinue, modifier = Modifier.fillMaxWidth()) { Text("Sign in") }
        OutlinedButton(onClick = onContinue, modifier = Modifier.fillMaxWidth()) { Text(stringResource(R.string.continue_local_setup)) }
        TextButton(onClick = onContinue, modifier = Modifier.fillMaxWidth()) { Text(stringResource(R.string.create_account)) }
        Text(stringResource(R.string.mockup_auth_not_connected), style = MaterialTheme.typography.bodySmall)
    }
}

@Composable
fun StorageSetupScreen(onContinue: () -> Unit, onBack: () -> Unit) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Kembali") }
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
