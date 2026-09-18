package com.savie.bare.ui

import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.runtime.Composable
import com.savie.bare.app.IdentityType
import com.savie.bare.feature.account.AccountScreen
import com.savie.bare.feature.apps.AppsScreen
import com.savie.bare.feature.home.HomeScreen
import com.savie.bare.feature.onboarding.LoginScreen
import com.savie.bare.feature.onboarding.WelcomeScreen
import com.savie.bare.feature.schedules.SchedulesScreen
import com.savie.bare.ui.theme.BaReTheme

@Preview(showBackground = true)
@Composable
private fun WelcomePreview() {
    BaReTheme { WelcomeScreen { _: IdentityType -> } }
}

@Preview(showBackground = true)
@Composable
private fun LoginPreview() {
    BaReTheme { LoginScreen("", {}, {}, {}, {}) }
}

@Preview(showBackground = true)
@Composable
private fun HomePreview() {
    BaReTheme { HomeScreen {} }
}

@Preview(showBackground = true)
@Composable
private fun AppsPreview() {
    BaReTheme { AppsScreen({}, {}) }
}

@Preview(showBackground = true)
@Composable
private fun SchedulesPreview() {
    BaReTheme { SchedulesScreen {} }
}

@Preview(showBackground = true)
@Composable
private fun AccountPreview() {
    BaReTheme { AccountScreen {} }
}
