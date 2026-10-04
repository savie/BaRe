package com.swiftapps.sba;

import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;

public final class SbaSwiftTarNative {
    public static final SbaSwiftTarNative a = new SbaSwiftTarNative();
    static { System.loadLibrary("sba_archive"); }

    private native String[] extractTarZstdFromFdRaw(int fd, long offset, long length,
            String destination, int flags, String[] selectedEntries,
            SbaNativeProgressListener listener);
    private native String[] extractTarFromFdRaw(int fd, long offset, String destination,
            int flags, String[] selectedEntries, SbaNativeProgressListener listener);

    public static String[] extractZstd(int fd, long offset, long length, String destination,
                                       int flags, String[] selected,
                                       SbaNativeProgressListener listener) {
        return a.extractTarZstdFromFdRaw(fd, offset, length, destination, flags, selected, listener);
    }

    public static String[] extract(int fd, long offset, String destination, int flags,
                                   String[] selected, SbaNativeProgressListener listener) {
        return a.extractTarFromFdRaw(fd, offset, destination, flags, selected, listener);
    }

    public native String[] extractAegisArchiveEntry(String destination, long offset,
            long archiveLength, long entryOffset, long entryLength, String entryName,
            int flags, String[] selectedEntries, int cryptoMode, int chunkSize,
            byte[] key, byte[] nonce, byte[] aad, long totalBytes, int progressMode,
            SbaNativeProgressListener listener);

    public native String[] extractAegisArchiveEntryFused(String destination, long offset,
            long archiveLength, long entryOffset, long entryLength, String entryName,
            int flags, String[] selectedEntries, int cryptoMode, int chunkSize,
            byte[] key, byte[] nonce, byte[] aad, long totalBytes, int progressMode,
            SbaNativeProgressListener listener);
}
