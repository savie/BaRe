package com.bareapps.sba.internal.archive

import androidx.annotation.Keep

/**
 * Native filesystem metadata helpers. Sparse discovery is an optimization; on
 * host JVMs without the Android native library callers safely use dense TAR.
 */
@Keep
internal object SbaSparseNative {
    private val nativeAvailable: Boolean = try {
        System.loadLibrary("sba_archive")
        true
    } catch (_: UnsatisfiedLinkError) {
        false
    }

    /** [logicalSize, extentCount, offset0, length0, ...], or empty if unavailable/dense. */
    @JvmStatic
    fun getSparseExtents(path: String): LongArray =
        if (nativeAvailable) nativeGetSparseExtents(path) else LongArray(0)

    /** Alternating xattr-name and Base64-value pairs, without following symlinks. */
    @JvmStatic
    fun getPaxXattrs(path: String): Array<String> =
        if (nativeAvailable) nativeGetPaxXattrs(path) else emptyArray()

    @JvmStatic
    private external fun nativeGetSparseExtents(path: String): LongArray

    @JvmStatic
    private external fun nativeGetPaxXattrs(path: String): Array<String>
}
