package com.bare.feature.settings

import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.ArrowBack
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.bare.R

@Composable
fun EncryptionPasswordStrategyScreen(
    onBack: () -> Unit,
    onOpenUserPassword: () -> Unit,
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val store = remember(context) { EncryptionPasswordStore(context) }
    var strategy by remember { mutableStateOf(store.loadStrategy()) }

    fun select(value: EncryptionPasswordStrategy) {
        strategy = value
        store.saveStrategy(value)
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.encryption_password_strategy_title)) },
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
                .padding(horizontal = 20.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp),
        ) {
            StrategyCard(
                title = stringResource(R.string.encryption_strategy_standard),
                body = stringResource(
                    R.string.encryption_strategy_standard_description,
                    stringResource(R.string.app_name),
                ),
                selected = strategy == EncryptionPasswordStrategy.STANDARD,
                onClick = { select(EncryptionPasswordStrategy.STANDARD) },
            )

            StrategyCard(
                title = stringResource(R.string.encryption_strategy_advanced),
                body = stringResource(
                    R.string.encryption_strategy_advanced_description,
                    stringResource(R.string.app_name),
                ),
                selected = strategy == EncryptionPasswordStrategy.ADVANCED,
                onClick = { select(EncryptionPasswordStrategy.ADVANCED) },
                footer = {
                    Button(
                        onClick = onOpenUserPassword,
                        enabled = strategy == EncryptionPasswordStrategy.ADVANCED,
                        modifier = Modifier.fillMaxWidth(),
                        contentPadding = PaddingValues(vertical = 14.dp),
                    ) {
                        Text(stringResource(R.string.encryption_set_user_password))
                    }
                },
            )

            Spacer(Modifier.height(4.dp))
        }
    }
}

@Composable
private fun StrategyCard(
    title: String,
    body: String,
    selected: Boolean,
    onClick: () -> Unit,
    footer: @Composable (() -> Unit)? = null,
) {
    val borderModifier = if (selected) {
        Modifier.border(
            width = 4.dp,
            color = MaterialTheme.colorScheme.primary,
            shape = RoundedCornerShape(26.dp),
        )
    } else {
        Modifier
    }

    Card(
        onClick = onClick,
        modifier = borderModifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(26.dp)),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant,
        ),
    ) {
        Column(
            modifier = Modifier.padding(24.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp),
        ) {
            Text(
                title,
                style = MaterialTheme.typography.headlineSmall,
                color = if (selected) {
                    MaterialTheme.colorScheme.primary
                } else {
                    MaterialTheme.colorScheme.onSurface
                },
            )
            Text(body, style = MaterialTheme.typography.bodyLarge)
            footer?.invoke()
        }
    }
}
