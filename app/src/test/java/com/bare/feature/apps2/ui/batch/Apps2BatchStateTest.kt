package com.bare.feature.apps2.ui.batch

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class Apps2BatchStateTest {

    @Test
    fun selectionIsIndependentFromPresentation() {
        val state = Apps2BatchState()
        state.replaceSelection(setOf("com.example.hidden", "com.example.visible"))

        assertEquals(
            setOf("com.example.hidden", "com.example.visible"),
            state.selectedPackages(),
        )
    }

    @Test
    fun emptySelectionDoesNotCreateBatchRequest() {
        val state = Apps2BatchState()

        assertFalse(state.hasSelection())
        assertNull(state.request(Apps2BatchAction.BACKUP))
    }

    @Test
    fun requestCapturesSelectionAndActionWithoutExecutingIt() {
        val state = Apps2BatchState()
        state.replaceSelection(setOf("com.example.one", "com.example.two"))

        val request = state.request(Apps2BatchAction.RESTORE)

        assertEquals(Apps2BatchAction.RESTORE, request?.action)
        assertEquals(
            setOf("com.example.one", "com.example.two"),
            request?.packageNames,
        )
    }

    @Test
    fun blockedPolicyPreventsEveryBatchActionFromBeingPresentedAsAvailable() {
        Apps2BatchAction.entries.forEach { action ->
            val availability = Apps2BatchActionPolicy.availability(action)
            assertTrue(availability is Apps2BatchActionAvailability.Blocked)
        }
    }

    @Test
    fun clearSelectionRemovesAllPackages() {
        val state = Apps2BatchState()
        state.replaceSelection(setOf("com.example.one"))
        state.clearSelection()

        assertFalse(state.hasSelection())
        assertEquals(emptySet<String>(), state.selectedPackages())
    }
}
