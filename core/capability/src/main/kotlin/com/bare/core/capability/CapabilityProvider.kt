package com.bare.core.capability

import com.bare.core.domain.PrivilegeMode

interface CapabilityProvider {
    val mode: PrivilegeMode
    fun detect(): Boolean
    fun isAuthorized(): Boolean
}
