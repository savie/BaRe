package com.bare.ui

import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.runtime.Composable
import com.bare.app.IdentityType
import com.bare.feature.account.AccountScreen
import com.bare.feature.apps.AppsScreen
import com.bare.feature.home.HomeScreen
import com.bare.feature.onboarding.LoginScreen
import com.bare.feature.onboarding.WelcomeScreen
import com.bare.feature.schedules.SchedulesScreen
import com.bare.ui.theme.BaReTheme

@Preview(showBackground = true)
@Composable
private fun WelcomePreview() {
    BaReTheme { WelcomeScreen { _: IdentityType -> } }
}

@Preview(showBackground = true)
@Composable
private fun LoginPreview() {
    BaReTheme {
        LoginScreen(
            email = "",
            onEmailChange = {},
            password = "",
            onPasswordChange = {},
            onContinue = {},
            onCreateAccount = {},
            onForgotPassword = {},
            onBack = {},
        )
    }
}

@Preview(showBackground = true)
@Composable
private fun HomePreview() {
    BaReTheme {
        HomeScreen(
            identityType = IdentityType.LOCAL,
            accountEmail = "",
            accessMethod = null,
            onOpen = {},
            onOpenTab = {},
            onOpenAccessMethod = {},
            onOpenStorage = {},
        )
    }
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
