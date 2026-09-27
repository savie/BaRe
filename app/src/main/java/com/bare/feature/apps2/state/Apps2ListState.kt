package com.bare.feature.apps2.state

import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import com.bare.feature.apps2.domain.Apps2App

enum class Apps2AppTypeFilter { ALL, USER, SYSTEM }
enum class Apps2SortMode { NAME, INSTALL_DATE, UPDATE_DATE }

class Apps2ListState {
    var searchQuery by mutableStateOf("")
    var appTypeFilter by mutableStateOf(Apps2AppTypeFilter.ALL)
    var sortMode by mutableStateOf(Apps2SortMode.NAME)
    var descending by mutableStateOf(false)
    var selectedPackages by mutableStateOf<Set<String>>(emptySet())
        private set

    fun toggleSelection(packageName: String) {
        selectedPackages = if (packageName in selectedPackages) selectedPackages - packageName
        else selectedPackages + packageName
    }

    fun selectAll(visibleApps: List<Apps2App>) {
        selectedPackages = visibleApps.map { it.packageName }.toSet()
    }

    fun clearSelection() { selectedPackages = emptySet() }

    fun visibleApps(source: List<Apps2App>): List<Apps2App> {
        val query = searchQuery.trim().lowercase()
        val filtered = source.filter { app ->
            val matchesQuery = query.isBlank() ||
                app.name.lowercase().contains(query) ||
                app.packageName.lowercase().contains(query)
            val matchesType = when (appTypeFilter) {
                Apps2AppTypeFilter.ALL -> true
                Apps2AppTypeFilter.USER -> !app.isSystem
                Apps2AppTypeFilter.SYSTEM -> app.isSystem
            }
            matchesQuery && matchesType
        }
        val sorted = when (sortMode) {
            Apps2SortMode.NAME -> filtered.sortedBy { it.name.lowercase() }
            Apps2SortMode.INSTALL_DATE -> filtered.sortedBy { it.firstInstallTime ?: Long.MIN_VALUE }
            Apps2SortMode.UPDATE_DATE -> filtered.sortedBy { it.lastUpdateTime ?: Long.MIN_VALUE }
        }
        return if (descending) sorted.reversed() else sorted
    }
}
