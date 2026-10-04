package com.swiftapps.sba.internal.progress;

/**
 * Reference-compatible callback consumed by the SBA native archive engine.
 */
public interface SbaNativeProgressListener {
    default boolean isCancellationRequested() {
        return false;
    }

    void onProgress(long completed, long total);
}
