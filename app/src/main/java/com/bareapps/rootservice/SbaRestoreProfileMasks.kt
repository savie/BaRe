package com.bareapps.rootservice

/**
 * BareBackup 5.1.0 (620) maps restore profiles to native TAR permission masks.
 * These are POSIX mode masks, not feature-option bit flags.
 */
internal object SbaRestoreProfileMasks {
    const val BASIC = 511       // octal 0777
    const val FIDELITY = 468    // octal 0724
    const val ROOT_FIDELITY = 384 // octal 0600

    fun fromProfile(profile: Int): Int = when (profile) {
        0 -> BASIC
        1 -> FIDELITY
        2 -> ROOT_FIDELITY
        else -> throw IllegalArgumentException("Unknown SBA restore profile: $profile")
    }
}
