package com.bare.feature.apps2.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.platform.LocalContext
import com.bare.feature.apps2.data.Apps2AppDiscovery
import com.bare.feature.apps2.state.Apps2RepositoryResult
import com.bare.feature.apps2.state.Apps2RepositoryState
import com.bare.feature.apps2.state.Apps2ListState
import com.bare.feature.apps2.ui.list.Apps2ListScreen

@Composable
fun Apps2Screen(onBack: (() -> Unit)? = null) {
    val context = LocalContext.current
    val discovery = remember(context) { Apps2AppDiscovery(context) }
    val repository = remember { Apps2RepositoryState() }
    val listState = remember { Apps2ListState() }

    LaunchedEffect(discovery) {
        repository.loading()
        runCatching { discovery.load(showSystemApps = true) }
            .onSuccess(repository::success)
            .onFailure { repository.error(it.message ?: "Unable to discover apps") }
    }

    when (val result = repository.result) {
        Apps2RepositoryResult.Loading -> Apps2LoadingScreen(onBack)
        is Apps2RepositoryResult.Error -> Apps2ErrorScreen(result.message, onBack)
        is Apps2RepositoryResult.Success -> Apps2ListScreen(
            apps = result.apps,
            state = listState,
            onRefresh = {
                repository.loading()
            },
            onBack = onBack,
        )
    }
}

@Composable
private fun Apps2LoadingScreen(onBack: (() -> Unit)?) {
    com.bare.feature.apps2.ui.shell.Apps2Header(title = "Apps", onBack = onBack)
    androidx.compose.material3.Text(
        "Loading apps…",
        modifier = androidx.compose.ui.Modifier.padding(24.dp),
    )
}

@Composable
private fun Apps2ErrorScreen(message: String, onBack: (() -> Unit)?) {
    androidx.compose.foundation.layout.Column(
        modifier = androidx.compose.ui.Modifier.fillMaxSize(),
    ) {
        com.bare.feature.apps2.ui.shell.Apps2Header(title = "Apps", onBack = onBack)
        androidx.compose.material3.Text(
            message,
            modifier = androidx.compose.ui.Modifier.padding(24.dp),
        )
    }
}
