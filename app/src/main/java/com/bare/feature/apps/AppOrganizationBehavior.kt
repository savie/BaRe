package com.bare.feature.apps

import android.content.Context

/**
 * Shared behavior entry point for app organization state.
 *
 * UI screens use this layer for favorite, label, blacklist, and APK-only
 * organization actions. Persistence remains owned by AppOrganizationStore.
 */
class AppOrganizationBehavior(context: Context) {
    private val store = AppOrganizationStore(context)

    fun isFavorite(packageName: String): Boolean = store.isFavorite(packageName)

    fun setFavorite(packageName: String, favorite: Boolean) {
        store.setFavorite(packageName, favorite)
    }

    fun labels(packageName: String): Set<String> = store.labels(packageName)

    fun setLabels(packageName: String, labels: Set<String>) {
        store.setLabels(packageName, labels)
    }

    fun addLabel(label: String) {
        store.addLabel(label)
    }

    fun renameLabel(oldLabel: String, newLabel: String, packageNames: Collection<String>) {
        store.renameLabel(oldLabel, newLabel, packageNames)
    }

    fun deleteLabel(label: String, packageNames: Collection<String>) {
        store.deleteLabel(label, packageNames)
    }

    fun allLabels(packageNames: Collection<String>): Set<String> =
        store.allLabels(packageNames)

    fun isBlacklisted(packageName: String): Boolean =
        store.isBlacklisted(packageName)

    fun isApkOnlyInBatch(packageName: String): Boolean =
        store.isApkOnlyInBatch(packageName)

    fun setApkOnlyInBatch(packageName: String, enabled: Boolean) {
        store.setApkOnlyInBatch(packageName, enabled)
    }

    fun blacklistedPackages(): Set<String> =
        store.blacklistedPackages()

    fun setBlacklisted(packageName: String, blacklisted: Boolean) {
        store.setBlacklisted(packageName, blacklisted)
    }

    fun setBlacklistedPackages(packageNames: Set<String>) {
        store.setBlacklistedPackages(packageNames)
    }
}
