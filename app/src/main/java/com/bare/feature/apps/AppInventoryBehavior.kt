package com.bare.feature.apps

import android.content.Context
import com.bare.app.AppItem

/**
 * Shared entry point for installed-app inventory.
 *
 * UI screens use this layer for discovery and reload so package inventory
 * ownership remains outside individual screens.
 */
class AppInventoryBehavior(context: Context) {
    private val repository = InstalledAppRepository(context)

    fun load(): List<AppItem> = repository.load()

    fun cached(): List<AppItem> = InstalledAppRepository.cached()
}
