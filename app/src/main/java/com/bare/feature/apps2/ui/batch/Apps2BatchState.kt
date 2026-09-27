package com.bare.feature.apps2.ui.batch

/**
 * Isolated batch boundary for Apps2.
 *
 * Selection is represented as package identities and is independent from the
 * current list/filter presentation. This boundary does not execute actions.
 */
class Apps2BatchState {
    private var selectedPackages: Set<String> = emptySet()

    fun replaceSelection(packageNames: Set<String>) {
        selectedPackages = packageNames.toSet()
    }

    fun clearSelection() {
        selectedPackages = emptySet()
    }

    fun selectedPackages(): Set<String> = selectedPackages

    fun hasSelection(): Boolean = selectedPackages.isNotEmpty()

    fun request(action: Apps2BatchAction): Apps2BatchRequest? {
        if (!hasSelection()) return null
        return Apps2BatchRequest(
            action = action,
            packageNames = selectedPackages,
        )
    }
}

/**
 * Immutable intent passed toward a future task boundary.
 *
 * Creating a request does not imply that execution is available or successful.
 */
data class Apps2BatchRequest(
    val action: Apps2BatchAction,
    val packageNames: Set<String>,
)
