package com.bare.feature.apps2.state

import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import com.bare.feature.apps2.domain.Apps2App

class Apps2DetailState {
    var selectedPackageName by mutableStateOf<String?>(null)
        private set

    fun open(app: Apps2App) {
        selectedPackageName = app.packageName
    }

    fun close() {
        selectedPackageName = null
    }

    fun resolve(apps: List<Apps2App>): Apps2App? =
        selectedPackageName?.let { packageName ->
            apps.firstOrNull { it.packageName == packageName }
        }
}
