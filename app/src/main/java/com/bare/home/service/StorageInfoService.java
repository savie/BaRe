package com.bare.home.service;

import com.bare.core.model.StorageInfoLocal;

/**
 * Storage metrics boundary aligned with Reference StorageInfoLocal.
 *
 * Runtime/filesystem measurement remains outside this WP-A contract.
 */
public final class StorageInfoService {
    public StorageInfoLocal read() {
        // Provider/filesystem implementation remains downstream; no fake values are emitted.
        return null;
    }
}
