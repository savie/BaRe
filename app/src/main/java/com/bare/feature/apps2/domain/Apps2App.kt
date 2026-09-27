package com.bare.feature.apps2.domain

import android.graphics.drawable.Drawable

data class Apps2App(
    val packageName: String,
    val name: String,
    val isSystem: Boolean,
    val isEnabled: Boolean,
    val isLaunchable: Boolean,
    val isInstalled: Boolean,
    val firstInstallTime: Long?,
    val lastUpdateTime: Long?,
    val icon: Drawable?,
)
