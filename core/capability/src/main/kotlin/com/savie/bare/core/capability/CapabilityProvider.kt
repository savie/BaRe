package com.savie.bare.core.capability

import com.savie.bare.core.domain.PrivilegeMode

interface CapabilityProvider {
    val mode: PrivilegeMode
    fun detect(): Boolean
    fun isAuthorized(): Boolean
}
