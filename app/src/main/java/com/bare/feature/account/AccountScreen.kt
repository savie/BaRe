package com.bare.feature.account

import android.os.Build
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.bare.R
import com.bare.app.IdentityType
import com.bare.app.Screen
import com.bare.feature.settings.SettingsAboutDialog
import com.bare.feature.settings.openSettingsContact

@Composable
fun AccountScreen(
    onOpen: (Screen) -> Unit,
    identityType: IdentityType = IdentityType.LOCAL,
    accountEmail: String = "",
) {
    val context = LocalContext.current
    var showAboutDialog by remember { mutableStateOf(false) }
    val isAccount = identityType == IdentityType.ACCOUNT
    val accountLabel = if (isAccount) stringResource(R.string.account) else stringResource(R.string.local)
    val accountDetail = if (isAccount && accountEmail.isNotBlank()) {
        accountEmail
    } else {
        stringResource(R.string.local_device_identity)
    }

    LazyColumn(
        modifier = Modifier.fillMaxSize().padding(horizontal = 18.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp),
        contentPadding = PaddingValues(top = 12.dp, bottom = 24.dp),
    ) {
        item { SectionLabel(stringResource(R.string.account_section)) }
        item {
            AccountCard(
                label = accountLabel,
                detail = accountDetail,
                device = Build.MODEL.ifBlank { stringResource(R.string.this_device) },
                actionLabel = if (isAccount) {
                    stringResource(R.string.sign_out)
                } else {
                    stringResource(R.string.connect_account)
                },
            )
        }
        item {
            Spacer(Modifier.height(24.dp))
            SectionLabel(stringResource(R.string.settings_section))
        }
        item { AccountMenuRow(stringResource(R.string.settings), Icons.Outlined.Settings) { onOpen(Screen.SETTINGS) } }
        item { AccountMenuRow(stringResource(R.string.diagnostics), Icons.Outlined.BugReport) { onOpen(Screen.DIAGNOSTICS) } }
        item { AccountMenuRow(stringResource(R.string.language), Icons.Outlined.Language) {} }
        item { AccountMenuRow(stringResource(R.string.help_center), Icons.Outlined.HelpOutline) {} }
        item { AccountMenuRow(stringResource(R.string.contact), Icons.Outlined.MailOutline) { openSettingsContact(context) } }
        item { AccountMenuRow(stringResource(R.string.rate_bare), Icons.Outlined.StarBorder) {} }
        item { AccountMenuRow(stringResource(R.string.share_bare), Icons.Outlined.Share) {} }
        item { AccountMenuRow(stringResource(R.string.about), Icons.Outlined.Info) { showAboutDialog = true } }
    }

    if (showAboutDialog) {
        SettingsAboutDialog(onDismiss = { showAboutDialog = false })
    }
}

@Composable
private fun SectionLabel(text: String) {
    Text(
        text = text.uppercase(),
        modifier = Modifier.padding(horizontal = 18.dp, vertical = 10.dp),
        style = MaterialTheme.typography.labelMedium,
        fontWeight = FontWeight.Medium,
        color = MaterialTheme.colorScheme.onSurfaceVariant,
    )
}

@Composable
private fun AccountCard(
    label: String,
    detail: String,
    device: String,
    actionLabel: String,
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant),
    ) {
        Column(
            modifier = Modifier.fillMaxWidth().padding(22.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.Top,
            ) {
                Column(Modifier.weight(1f)) {
                    Text(label, style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Medium)
                    Text(
                        detail,
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                    Spacer(Modifier.height(18.dp))
                    Text(
                        stringResource(R.string.device),
                        style = MaterialTheme.typography.labelLarge,
                        fontWeight = FontWeight.Medium,
                    )
                    Text(
                        device,
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
                Box(
                    modifier = Modifier.size(88.dp).background(MaterialTheme.colorScheme.primary, CircleShape),
                    contentAlignment = Alignment.Center,
                ) {
                    Text(
                        "B",
                        style = MaterialTheme.typography.displaySmall,
                        color = MaterialTheme.colorScheme.onPrimary,
                        fontWeight = FontWeight.Medium,
                    )
                }
            }
            OutlinedButton(
                onClick = {},
                shape = RoundedCornerShape(24.dp),
                enabled = false,
            ) {
                Text(actionLabel)
            }
        }
    }
}

@Composable
private fun AccountMenuRow(
    title: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    onClick: () -> Unit,
) {
    Surface(
        modifier = Modifier.fillMaxWidth().clickable(onClick = onClick),
        color = MaterialTheme.colorScheme.surfaceVariant,
        shape = RoundedCornerShape(4.dp),
    ) {
        Row(
            modifier = Modifier.fillMaxWidth().height(92.dp).padding(horizontal = 22.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Text(
                title,
                modifier = Modifier.weight(1f),
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Medium,
            )
            Icon(
                icon,
                contentDescription = title,
                modifier = Modifier.size(30.dp),
                tint = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
    }
}
