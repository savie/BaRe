package com.swiftapps.sba.internal.progress;

public interface SbaNativeProgressListener {
    default boolean isCancellationRequested() { return false; }
    void onProgress(long current, long total);
}
