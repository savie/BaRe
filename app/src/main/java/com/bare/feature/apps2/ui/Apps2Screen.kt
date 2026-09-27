package com.bare.feature.apps2.ui

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.platform.LocalContext
import com.bare.feature.apps2.data.Apps2AppDiscovery
import com.bare.feature.apps2.state.Apps2ListState
import com.bare.feature.apps2.state.Apps2RepositoryResult
import com.bare.feature.apps2.state.Apps2RepositoryState
import com.bare.feature.apps2.ui.list.Apps2ListScreen
import com.bare.feature.apps2.ui.shell.Apps2Header

@Composable
fun Apps2Screen(onBack: (() -> Unit)? = null) {
    val context = LocalContext.current
    val discovery = remember(context) { Apps2AppDiscovery(context) }
    val repository = remember { Apps2RepositoryState() }
    val listState = remember { Apps2ListState() }
    var reloadToken by remember { mutableIntStateOf(0) }

    LaunchedEffect(discovery, reloadToken) {
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
            onRefresh = { reloadToken++ },
            onBack = onBack,
        )
    }
}

@Composable
private fun Apps2LoadingScreen(onBack: (() -> Unit)?) {
    Column(Modifier.fillMaxSize()) {
        Apps2Header(title = "Apps", onBack = onBack)
        Text("Loading apps…", modifier = Modifier.padding(24.dp))
    }
}

@Composable
private fun Apps2ErrorScreen(message: String, onBack: (() -> Unit)?) {
    Column(Modifier.fillMaxSize()) {
        Apps2Header(title = "Apps", onBack = onBack)
        Text(message, modifier = Modifier.padding(24.dp))
    }
}
