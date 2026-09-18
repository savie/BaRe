package com.bare.ui.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable

private val BaReDarkColorScheme = darkColorScheme()

@Composable
fun BaReTheme(content: @Composable () -> Unit) {
    MaterialTheme(colorScheme = BaReDarkColorScheme, content = content)
}
