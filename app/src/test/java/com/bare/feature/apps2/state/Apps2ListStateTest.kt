package com.bare.feature.apps2.state

import com.bare.feature.apps2.domain.Apps2App
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class Apps2ListStateTest {

    private fun app(
        packageName: String,
        name: String,
        system: Boolean = false,
        installTime: Long = 0L,
        updateTime: Long = 0L,
    ) = Apps2App(
        packageName = packageName,
        name = name,
        isSystem = system,
        isEnabled = true,
        isLaunchable = true,
        isInstalled = true,
        firstInstallTime = installTime,
        lastUpdateTime = updateTime,
        icon = null,
    )

    @Test
    fun searchMatchesNameAndPackage() {
        val state = Apps2ListState()
        val apps = listOf(
            app("com.example.alpha", "Alpha"),
            app("com.example.beta", "Beta"),
        )

        state.searchQuery = "alpha"
        assertEquals(listOf("com.example.alpha"), state.visibleApps(apps).map { it.packageName })

        state.searchQuery = "example.beta"
        assertEquals(listOf("com.example.beta"), state.visibleApps(apps).map { it.packageName })
    }

    @Test
    fun typeFilterSeparatesUserAndSystemApps() {
        val state = Apps2ListState()
        val apps = listOf(
            app("com.example.user", "User"),
            app("com.example.system", "System", system = true),
        )

        state.appTypeFilter = Apps2AppTypeFilter.USER
        assertEquals(listOf("com.example.user"), state.visibleApps(apps).map { it.packageName })

        state.appTypeFilter = Apps2AppTypeFilter.SYSTEM
        assertEquals(listOf("com.example.system"), state.visibleApps(apps).map { it.packageName })
    }

    @Test
    fun sortModeAndDirectionAreApplied() {
        val state = Apps2ListState()
        val apps = listOf(
            app("com.example.b", "Beta", installTime = 20L, updateTime = 10L),
            app("com.example.a", "Alpha", installTime = 10L, updateTime = 20L),
        )

        state.sortMode = Apps2SortMode.NAME
        assertEquals(listOf("Alpha", "Beta"), state.visibleApps(apps).map { it.name })

        state.descending = true
        assertEquals(listOf("Beta", "Alpha"), state.visibleApps(apps).map { it.name })

        state.descending = false
        state.sortMode = Apps2SortMode.INSTALL_DATE
        assertEquals(listOf("Alpha", "Beta"), state.visibleApps(apps).map { it.name })

        state.sortMode = Apps2SortMode.UPDATE_DATE
        assertEquals(listOf("Beta", "Alpha"), state.visibleApps(apps).map { it.name })
    }

    @Test
    fun selectionCanToggleAndSelectAllVisibleApps() {
        val state = Apps2ListState()
        val apps = listOf(
            app("com.example.a", "Alpha"),
            app("com.example.b", "Beta"),
        )

        state.toggleSelection("com.example.a")
        assertTrue("com.example.a" in state.selectedPackages)

        state.toggleSelection("com.example.a")
        assertTrue("com.example.a" !in state.selectedPackages)

        state.selectAll(apps)
        assertEquals(setOf("com.example.a", "com.example.b"), state.selectedPackages)

        state.clearSelection()
        assertTrue(state.selectedPackages.isEmpty())
    }
}
