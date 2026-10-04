package com.bare.nativecompat;

import java.io.FileDescriptor;
import java.io.IOException;

public final class SbaTarNative {
    public static final SbaTarNative a = new SbaTarNative();
    private final com.swiftapps.sba.SbaSwiftTarNative delegate = com.swiftapps.sba.SbaSwiftTarNative.a;
    public static String[] b(FileDescriptor fd, long offset, String destination, int flags, String[] selected,
                              SbaNativeProgressListener listener) throws IOException {
        return com.swiftapps.sba.SbaSwiftTarNative.b(fd, offset, destination, flags, selected, listener);
    }
    public static String[] c(FileDescriptor fd, long offset, long length, String destination, int flags,
                              String[] selected, SbaNativeProgressListener listener) throws IOException {
        return com.swiftapps.sba.SbaSwiftTarNative.c(fd, offset, length, destination, flags, selected, listener);
    }
    public String[] extractAegisArchiveEntry(String destination, long offset, long archiveLength,
            long entryOffset, long entryLength, String entryName, int flags, String[] selectedEntries,
            int cryptoMode, int chunkSize, byte[] key, byte[] nonce, byte[] aad, long totalBytes,
            int progressMode, SbaNativeProgressListener listener) {
        return delegate.extractAegisArchiveEntry(destination, offset, archiveLength, entryOffset, entryLength,
                entryName, flags, selectedEntries, cryptoMode, chunkSize, key, nonce, aad, totalBytes,
                progressMode, listener);
    }
    public String[] extractAegisArchiveEntryFused(String destination, long offset, long archiveLength,
            long entryOffset, long entryLength, String entryName, int flags, String[] selectedEntries,
            int cryptoMode, int chunkSize, byte[] key, byte[] nonce, byte[] aad, long totalBytes,
            int progressMode, SbaNativeProgressListener listener) {
        return delegate.extractAegisArchiveEntryFused(destination, offset, archiveLength, entryOffset, entryLength,
                entryName, flags, selectedEntries, cryptoMode, chunkSize, key, nonce, aad, totalBytes,
                progressMode, listener);
    }
}
