package com.bareapps.barebackup.storage

/**
 * Semantic migration target for reference source defpackage/zn7.java.
 *
 * Reference responsibilities include storage-volume resolution, removable-volume metadata,
 * external-storage UUID/root resolution, SAF tree-intent creation, URI-grant validation, and
 * SAF capability checks. SelectedStorageState.kt currently covers only part of selected-volume
 * removability and is not a replacement for this full component.
 *
 * TODO(reference-port): map each zn7 method and connect it to the migrated filesystem abstraction.
 */
internal object SafStorageVolumePortPlaceholder
