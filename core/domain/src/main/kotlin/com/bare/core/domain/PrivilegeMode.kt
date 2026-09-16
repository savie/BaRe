package com.bare.core.domain

enum class PrivilegeMode { NON_ROOT, ADB, SHIZUKU, ROOT }

data class CapabilityStatus(
    val mode: PrivilegeMode,
    val available: Boolean,
    val authorized: Boolean,
)
