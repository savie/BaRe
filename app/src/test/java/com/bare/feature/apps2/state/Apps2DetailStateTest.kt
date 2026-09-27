package com.bare.feature.apps2.state

import com.bare.feature.apps2.domain.Apps2App
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class Apps2DetailStateTest {

    private fun app(packageName: String) = Apps2App(
        packageName = packageName,
        name = packageName.substringAfterLast('.'),
        isSystem = false,
        isEnabled = true,
        isLaunchable = true,
        isInstalled = true,
        firstInstallTime = null,
        lastUpdateTime = null,
        icon = null,
    )

    @Test
    fun openResolveAndCloseFollowSelectedPackage() {
        val state = Apps2DetailState()
        val alpha = app("com.example.alpha")
        val beta = app("com.example.beta")
        val apps = listOf(alpha, beta)

        assertNull(state.resolve(apps))

        state.open(beta)
        assertEquals(beta, state.resolve(apps))

        state.close()
        assertNull(state.resolve(apps))
    }

    @Test
    fun missingSelectedPackageResolvesToNull() {
        val state = Apps2DetailState()
        state.open(app("com.example.missing"))

        assertNull(state.resolve(listOf(app("com.example.present"))))
    }
}
