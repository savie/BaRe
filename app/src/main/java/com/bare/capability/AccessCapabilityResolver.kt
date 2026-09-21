package com.bare.capability

import android.content.Context
import com.bare.app.AccessMethod

data class AccessCapability(
    val method: AccessMethod,
    val available: Boolean,
    val reason: String,
)

class AccessCapabilityResolver(context: Context) {
    private val root = RootCapabilityProvider()
    private val nonRoot = NonRootCapabilityProvider(context)

    fun prepare(method: AccessMethod): AccessCapability {
        return when (method) {
            AccessMethod.NON_ROOT -> resolve(method)
            AccessMethod.ROOT -> {
                val grant = root.grantRequiredPermissions()
                if (grant.failed.isNotEmpty()) {
                    AccessCapability(
                        method = method,
                        available = false,
                        reason = "Root permission grant failed: " + grant.failed.joinToString("; "),
                    )
                } else {
                    resolve(method)
                }
            }
        }
    }

    fun resolve(method: AccessMethod): AccessCapability {
        return when (method) {
            AccessMethod.NON_ROOT -> when (val result = nonRoot.probe()) {
                is NonRootProbeResult.Success -> AccessCapability(method, true, result.identity)
                is NonRootProbeResult.Failed -> AccessCapability(method, false, result.reason)
            }
            AccessMethod.ROOT -> when (val result = root.probe()) {
                is RootProbeResult.Success -> AccessCapability(method, true, "Root shell authorized as " + result.identity)
                is RootProbeResult.Failed -> AccessCapability(method, false, result.reason)
            }
        }
    }
}
