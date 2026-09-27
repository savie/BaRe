package com.bare.feature.apps2.e2e

import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.createAndroidComposeRule
import androidx.compose.ui.test.hasText
import androidx.compose.ui.test.onAllNodesWithContentDescription
import androidx.compose.ui.test.onNode
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performTextInput
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class Apps2RuntimeE2ETest {
    @get:Rule
    val composeTestRule = createAndroidComposeRule<Apps2TestActivity>()

    @Test
    fun apps2DiscoversAppsAndOpensDetail() {
        composeTestRule.waitUntil(timeoutMillis = 15_000) {
            composeTestRule.onAllNodesWithContentDescription("App actions")
                .fetchSemanticsNodes()
                .isNotEmpty()
        }

        composeTestRule.onAllNodesWithContentDescription("App actions")
            .onFirst()
            .performClick()
        composeTestRule.onNodeWithText("Details").performClick()

        composeTestRule.onNodeWithText("App details").assertIsDisplayed()
        composeTestRule.onNodeWithText(
            "Backup and restore are not available in this Apps2 slice yet.",
        ).assertIsDisplayed()
    }

    @Test
    fun apps2SearchFilterAndSortControlsAreRuntimeInteractive() {
        composeTestRule.waitUntil(timeoutMillis = 15_000) {
            composeTestRule.onAllNodesWithContentDescription("App actions")
                .fetchSemanticsNodes()
                .isNotEmpty()
        }

        composeTestRule.onNodeWithContentDescription("Search").performClick()
        composeTestRule.onNodeWithText("Search apps").performTextInput("android")
        composeTestRule.onNode(hasText("android")).assertIsDisplayed()

        composeTestRule.onNodeWithContentDescription("Filter").performClick()
        composeTestRule.onNodeWithText("All apps").performClick()

        composeTestRule.onNodeWithContentDescription("Sort").performClick()
        composeTestRule.onNodeWithText("Name").performClick()
    }
}
