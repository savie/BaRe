package com.bare.feature.apps2.ui.detail

import android.content.Context
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.bare.feature.apps2.domain.Apps2App
import com.bare.feature.apps2.ui.list.Apps2AppItemActions
import com.bare.feature.apps2.ui.shell.Apps2Header

@Composable
fun Apps2DetailScreen(
    app: Apps2App,
    context: Context,
    onBack: () -> Unit,
) {
    val actions = Apps2AppItemActions.forApp(app)

    Column(Modifier.fillMaxSize()) {
        Apps2Header(
            title = "App details",
            subtitle = app.name,
            onBack = onBack,
        )

        Column(
            Modifier.fillMaxWidth().padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Card(Modifier.fillMaxWidth()) {
                Column(Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(app.name, style = MaterialTheme.typography.headlineSmall)
                    Text(app.packageName, style = MaterialTheme.typography.bodyMedium)
                    Text(
                        if (app.isSystem) "System app" else "User app",
                        style = MaterialTheme.typography.labelLarge,
                    )
                    Text(
                        if (app.isEnabled) "Enabled" else "Disabled",
                        style = MaterialTheme.typography.labelLarge,
                    )
                    Text(
                        if (app.isLaunchable) "Launchable" else "Not launchable",
                        style = MaterialTheme.typography.labelLarge,
                    )
                }
            }

            Row(Modifier.fillMaxWidth()) {
                actions.forEach { action ->
                    Button(
                        onClick = { action.run(context, app) },
                        modifier = Modifier.weight(1f),
                    ) {
                        Text(action.title)
                    }
                    Spacer(Modifier.width(8.dp))
                }
            }

            Text(
                "Backup and restore are not available in this Apps2 slice yet.",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
    }
}
