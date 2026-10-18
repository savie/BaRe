package com.swiftapps.sba.internal.progress

/**
 * Callback contract consumed by libsba_archive JNI.
 * Keep method names and JVM descriptors stable for native lookup.
 */
interface SbaNativeProgressListener {
    fun isCancellationRequested(): Boolean = false
    fun onProgress(processed: Long, total: Long)
}
