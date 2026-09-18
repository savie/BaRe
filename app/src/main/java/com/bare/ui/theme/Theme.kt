package com.bare.ui.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

private val BaReDarkColorScheme = darkColorScheme(
    background = Color(0xFF0B0B0D),
    surface = Color(0xFF141416),
    surfaceVariant = Color(0xFF202023),
    onBackground = Color(0xFFF5F5F5),
    onSurface = Color(0xFFF5F5F5),
    onSurfaceVariant = Color(0xFFB6B6BA),
    primary = Color(0xFFF2F2F2),
    onPrimary = Color(0xFF101012),
    primaryContainer = Color(0xFF29292D),
    onPrimaryContainer = Color(0xFFF2F2F2),
    outline = Color(0xFF55555B),
)

private val BaReLightColorScheme = lightColorScheme(
    background = Color(0xFFF7F7F8),
    surface = Color(0xFFFFFFFF),
    surfaceVariant = Color(0xFFE8E8EA),
    onBackground = Color(0xFF111113),
    onSurface = Color(0xFF111113),
    onSurfaceVariant = Color(0xFF626267),
    primary = Color(0xFF111113),
    onPrimary = Color(0xFFFFFFFF),
    primaryContainer = Color(0xFFE2E2E5),
    onPrimaryContainer = Color(0xFF111113),
    outline = Color(0xFF99999F),
)

@Composable
fun BaReTheme(content: @Composable () -> Unit) {
    // Light palette is defined now for a later theme switch; current product remains dark.
    MaterialTheme(colorScheme = BaReDarkColorScheme, content = content)
}
