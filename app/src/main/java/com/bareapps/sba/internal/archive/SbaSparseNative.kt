package com.bareapps.sba.internal.archive

import androidx.annotation.Keep

/**
 * Queries filesystem data extents for sparse TAR emission. Empty results mean
 * the filesystem cannot report useful holes and callers should write dense data.
 */
@Keep
internal object SbaSparseNative {
    init { System.loadLibrary("sba_archive") }

    /** [logicalSize, extentCount, offset0, length0, ...], or an empty array if unsupported/dense. */
    @JvmStatic
    external fun getSparseExtents(path: String): LongArray

    /** Alternating xattr-name and Base64-value pairs, without following a symlink. */
    @JvmStatic
    external fun getPaxXattrs(path: String): Array<String>
}
