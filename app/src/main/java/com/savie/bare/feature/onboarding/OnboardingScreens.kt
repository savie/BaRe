package com.savie.bare.feature.onboarding

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Security
import androidx.compose.material.icons.filled.Storage
import androidx.compose.material3.*
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
            Text("B", style = MaterialTheme.typography.displaySmall, fontWeight = FontWeight.Bold)
        }
        Spacer(Modifier.height(20.dp))
        Text("BaRe", style = MaterialTheme.typography.displaySmall, fontWeight = FontWeight.Bold)
        Text("Backup & Restore manager", style = MaterialTheme.typography.titleMedium)
        Spacer(Modifier.height(12.dp))
        Text("Mockup FE lengkap untuk membentuk alur product terlebih dahulu. Capability backend akan dihubungkan setelah tampilan dan state disepakati.")
        Spacer(Modifier.height(28.dp))
        Button(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Mulai") }
        TextButton(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Sudah punya account") }
    }
}

@Composable
fun LoginScreen(email: String, onEmailChange: (String) -> Unit, onContinue: () -> Unit, onBack: () -> Unit) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Kembali") }
        Text("Sign in", style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
        Text("Account dipakai untuk mengatur cloud, sinkronisasi, dan konfigurasi BaRe.")
        OutlinedTextField(email, onEmailChange, Modifier.fillMaxWidth(), label = { Text("Email") }, singleLine = true)
        OutlinedTextField("", {}, Modifier.fillMaxWidth(), label = { Text("Password") }, singleLine = true)
        Button(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Sign in") }
        OutlinedButton(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Continue with local setup") }
        TextButton(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Create account") }
        Text("Mockup only — autentikasi belum terhubung.", style = MaterialTheme.typography.bodySmall)
    }
}

@Composable
fun StorageSetupScreen(onContinue: () -> Unit, onBack: () -> Unit) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Kembali") }
        Text("Backup storage", style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
        Text("Pilih lokasi repository backup. Ini masih state FE dan belum menulis data.")
        StorageCard("Internal storage", "BaRe/Backups", true)
        StorageCard("External storage", "SAF / removable storage", false)
        StorageCard("Remote storage", "Cloud provider", false)
        Button(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Continue") }
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
            if (selected) Text("Selected", style = MaterialTheme.typography.labelMedium)
        }
    }
}

@Composable
fun AccessMethodScreen(selected: AccessMethod?, onSelect: (AccessMethod) -> Unit, onContinue: () -> Unit, onBack: () -> Unit) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Kembali") }
        Text("Access method", style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
        Text("Pilih mekanisme akses. Status capability aktual nanti ditentukan provider dan runtime.")
        AccessCard(AccessMethod.NON_ROOT, selected == AccessMethod.NON_ROOT, onSelect)
        AccessCard(AccessMethod.ROOT, selected == AccessMethod.ROOT, onSelect)
        Button(onClick = onContinue, enabled = selected != null, modifier = Modifier.fillMaxWidth()) { Text("Enter BaRe") }
    }
}

@Composable
private fun AccessCard(method: AccessMethod, selected: Boolean, onSelect: (AccessMethod) -> Unit) {
    Card(Modifier.fillMaxWidth().clickable { onSelect(method) }) {
        Row(Modifier.padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
            Icon(if (method == AccessMethod.ROOT) Icons.Default.Security else Icons.Default.Info, null)
            Spacer(Modifier.width(14.dp))
            Column(Modifier.weight(1f)) {
                Text(method.title, fontWeight = FontWeight.Bold)
                Spacer(Modifier.height(4.dp))
                Text(method.description, style = MaterialTheme.typography.bodySmall)
            }
            if (selected) Text("✓")
        }
    }
}
