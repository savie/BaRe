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
        val known = preferences.getStringSet(CUSTOM_LABELS_KEY, emptySet()).orEmpty().toMutableSet()
        known.addAll(normalized)
        preferences.edit()
            .putStringSet(labelKey(packageName), normalized)
            .putStringSet(CUSTOM_LABELS_KEY, known)
            .apply()
    }

    fun addLabel(label: String) {
        val value = label.trim()
        if (value.isBlank()) return
        val labels = preferences.getStringSet(CUSTOM_LABELS_KEY, emptySet()).orEmpty().toMutableSet()
        labels.add(value)
        preferences.edit().putStringSet(CUSTOM_LABELS_KEY, labels).apply()
    }

    fun renameLabel(oldLabel: String, newLabel: String, packageNames: Collection<String>) {
        val old = oldLabel.trim()
        val replacement = newLabel.trim()
        if (old.isBlank() || replacement.isBlank() || old.equals(replacement, ignoreCase = true)) return
        packageNames.forEach { packageName ->
            val current = labels(packageName)
            if (old in current) setLabels(packageName, (current - old) + replacement)
        }
        val known = preferences.getStringSet(CUSTOM_LABELS_KEY, emptySet()).orEmpty().toMutableSet()
        known.remove(old)
        known.add(replacement)
        preferences.edit().putStringSet(CUSTOM_LABELS_KEY, known).apply()
    }

    fun deleteLabel(label: String, packageNames: Collection<String>) {
        val value = label.trim()
        if (value.isBlank()) return
        packageNames.forEach { packageName ->
            val current = labels(packageName)
            if (value in current) setLabels(packageName, current - value)
        }
        val known = preferences.getStringSet(CUSTOM_LABELS_KEY, emptySet()).orEmpty().toMutableSet()
        known.remove(value)
        preferences.edit().putStringSet(CUSTOM_LABELS_KEY, known).apply()
    }

    fun allLabels(packageNames: Collection<String>): Set<String> {
        val persisted = preferences.getStringSet(CUSTOM_LABELS_KEY, emptySet()).orEmpty()
        return (persisted + packageNames.flatMap { labels(it) }).toSortedSet(String.CASE_INSENSITIVE_ORDER)
    }

    fun isBlacklisted(packageName: String): Boolean =
        preferences.getStringSet(BLACKLIST_KEY, emptySet()).orEmpty().contains(packageName)

    fun isApkOnlyInBatch(packageName: String): Boolean =
        preferences.getStringSet(APK_ONLY_BATCH_KEY, emptySet()).orEmpty().contains(packageName)

    fun setApkOnlyInBatch(packageName: String, enabled: Boolean) {
        val values = preferences.getStringSet(APK_ONLY_BATCH_KEY, emptySet()).orEmpty().toMutableSet()
        if (enabled) values.add(packageName) else values.remove(packageName)
        preferences.edit().putStringSet(APK_ONLY_BATCH_KEY, values).apply()
    }

    fun blacklistedPackages(): Set<String> =
        preferences.getStringSet(BLACKLIST_KEY, emptySet()).orEmpty().toSet()

    fun setBlacklisted(packageName: String, blacklisted: Boolean) {
        val values = blacklistedPackages().toMutableSet()
        if (blacklisted) values.add(packageName) else values.remove(packageName)
        setBlacklistedPackages(values)
    }

    fun setBlacklistedPackages(packageNames: Set<String>) {
        preferences.edit().putStringSet(BLACKLIST_KEY, packageNames).apply()
    }

    private fun labelKey(packageName: String) = "labels_$packageName"

    private companion object {
        const val FAVORITES_KEY = "favorite_packages"
        const val CUSTOM_LABELS_KEY = "custom_labels"
        const val BLACKLIST_KEY = "blacklisted_packages"
        const val APK_ONLY_BATCH_KEY = "apk_only_batch_packages"
    }
}
