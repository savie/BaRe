package com.bare.feature.apps2.e2e

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import com.bare.feature.apps2.ui.Apps2Screen

class Apps2TestActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Apps2Screen()
        }
    }
}
