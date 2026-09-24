package com.bare.feature.apps

/**
 * Cloud synchronization state is intentionally tri-state.
 *
 * UNKNOWN means no verified account/provider metadata is available and must not
 * be treated as "not synced".
 */
enum class CloudSyncState {
    UNKNOWN,
    SYNCED,
    NOT_SYNCED,
}
