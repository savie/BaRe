package com.swiftapps.sba.internal.progress

/** Minimal class with the same binary name and callback contract as the reference DEX. */
interface SbaNativeProgressListener {
    fun isCancellationRequested(): Boolean
    fun onProgress(completed: Long, total: Long)
}

class NeverCancelProgress : SbaNativeProgressListener {
    override fun isCancellationRequested(): Boolean = false
    override fun onProgress(completed: Long, total: Long) = Unit
}
