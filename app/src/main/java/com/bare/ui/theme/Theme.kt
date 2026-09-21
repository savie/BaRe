package com.bare.ui.theme

import android.os.Build
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.dynamicDarkColorScheme
import androidx.compose.material3.dynamicLightColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import com.bare.app.AppThemeMode

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

private val BaReAmoledColorScheme = darkColorScheme(
    background = Color.Black,
    surface = Color.Black,
    surfaceVariant = Color(0xFF171719),
    onBackground = Color(0xFFF5F5F5),
    onSurface = Color(0xFFF5F5F5),
    onSurfaceVariant = Color(0xFFB6B6BA),
    primary = Color(0xFFF2F2F2),
    onPrimary = Color.Black,
    primaryContainer = Color(0xFF242426),
    onPrimaryContainer = Color(0xFFF2F2F5),
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
fun BaReTheme(
    themeMode: AppThemeMode = AppThemeMode.SYSTEM,
    dynamicColors: Boolean = false,
    amoledBlack: Boolean = false,
    content: @Composable () -> Unit,
) {
    val context = LocalContext.current
    val systemDark = isSystemInDarkTheme()
    val darkTheme = when (themeMode) {
        AppThemeMode.SYSTEM -> systemDark
        AppThemeMode.LIGHT -> false
        AppThemeMode.DARK -> true
    }

    val colorScheme = when {
        dynamicColors && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S && !amoledBlack -> {
            if (darkTheme) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
        }
        darkTheme && amoledBlack -> BaReAmoledColorScheme
        darkTheme -> BaReDarkColorScheme
        else -> BaReLightColorScheme
    }

    MaterialTheme(colorScheme = colorScheme, content = content)
}
