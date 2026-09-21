package com.bare.feature.apps

import android.content.Context

class AppOrganizationStore(context: Context) {
    private val preferences = context.getSharedPreferences("apps_organization", Context.MODE_PRIVATE)

    fun isFavorite(packageName: String): Boolean =
        preferences.getStringSet(FAVORITES_KEY, emptySet()).orEmpty().contains(packageName)

    fun setFavorite(packageName: String, favorite: Boolean) {
        val values = preferences.getStringSet(FAVORITES_KEY, emptySet()).orEmpty().toMutableSet()
        if (favorite) values.add(packageName) else values.remove(packageName)
        preferences.edit().putStringSet(FAVORITES_KEY, values).apply()
    }

    fun labels(packageName: String): Set<String> =
        preferences.getStringSet(labelKey(packageName), emptySet()).orEmpty().toSet()

    fun setLabels(packageName: String, labels: Set<String>) {
        val normalized = labels.map { it.trim() }.filter { it.isNotBlank() }.toSet()
        preferences.edit().putStringSet(labelKey(packageName), normalized).apply()
    }

    fun allLabels(packageNames: Collection<String>): Set<String> =
        packageNames.flatMap { labels(it) }.toSortedSet(String.CASE_INSENSITIVE_ORDER)

    private fun labelKey(packageName: String) = "labels_$packageName"

    private companion object {
        const val FAVORITES_KEY = "favorite_packages"
    }
}
