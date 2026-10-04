package com.bare.appslist.restore;

import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;

/**
 * Reference-compatible entry point for the native SBA archive engine.
 * The native library is loaded when the adapter is actually used.
 */
public final class SbaNativeBridge {
    private static final String LIBRARY = "sba_archive";
    private static volatile boolean loaded;

    public synchronized boolean load() {
        if (loaded) return true;
        try {
            System.loadLibrary(LIBRARY);
            loaded = true;
            return true;
        } catch (UnsatisfiedLinkError e) {
            return false;
        }
    }

    public boolean isLoaded() { return loaded; }

    /** Reference-compatible SBA archive creation JNI signature. */
    public native long[] createArchive(
            int archiveKind,
            String outputPath,
            byte[] entryPayload,
            byte[][] entrySources,
            String[] entryNames,
            int[] entryModes,
            String[][] entryXattrs,
            String[][] entryLinks,
            int compressionMode,
            int compressionLevel,
            int encryptionFlags,
            int tarFlags,
            int metadataFlags,
            int sparseFlags,
            int chunkSize,
            int workerCount,
            int ioBufferSize,
            int progressMode,
            byte[] key,
            byte[] nonce,
            byte[] aad,
            byte[] indexMacKey,
            SbaNativeProgressListener progressListener);

    /** Reference-compatible Zstd byte codec used by the special-data payload format. */
    public native byte[] compressZstdBytes(byte[] payload, int level);

    public native byte[] decompressZstdBytes(byte[] payload);

    public native byte[] deriveArgon2id(
            byte[] password, byte[] salt, int iterations,
            int memoryKiB, int parallelism, int outputBytes);

    public native long[] extractTarFromFd(
            int fd, long offset, String destination,
            int flags, String[] selectedEntries);

    public native long[] extractTarZstdFromFd(
            int fd, long offset, long length, String destination,
            int flags, String[] selectedEntries);

    public native String[] extractAegisArchiveEntry(
            String destination, long offset, long archiveLength,
            long entryOffset, long entryLength, String entryName,
            int flags, String[] selectedEntries, int cryptoMode,
            int chunkSize, byte[] key, byte[] nonce, byte[] aad,
            long totalBytes, int progressMode);
}
