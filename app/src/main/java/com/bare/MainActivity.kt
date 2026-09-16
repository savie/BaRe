package com.bare

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent { BaReRoot() }
    }
}

@Composable
private fun BaReRoot() {
    // CI build verification trigger: app source input changed intentionally without behavior change.
    // Gradle bootstrap is pinned to the AGP-compatible 8.13 release for reproducible CI execution.
    Text("BaRe")
}
