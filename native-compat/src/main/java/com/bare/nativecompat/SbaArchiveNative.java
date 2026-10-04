package com.bare.nativecompat;

public final class SbaArchiveNative {
    public static final SbaArchiveNative a = new SbaArchiveNative();
    private final com.swiftapps.sba.SbaArchiveNative delegate = com.swiftapps.sba.SbaArchiveNative.a;
    public long[] createArchive(int version, String path, byte[] archiveMetadata, byte[][] entryMetadata,
            String[] entryNames, int[] entryFlags, String[][] xattrNames, String[][] linkNames,
            int compressionMethod, int compressionLevel, int encryptionMethod, int kdfMethod,
            int iterations, int memoryKiB, int parallelism, int chunkSize, int keyCheckLength,
            int macLength, byte[] key, byte[] keyCheck, byte[] salt, byte[] nonceSeed,
            SbaNativeProgressListener listener) {
        return delegate.createArchive(version, path, archiveMetadata, entryMetadata, entryNames, entryFlags,
                xattrNames, linkNames, compressionMethod, compressionLevel, encryptionMethod, kdfMethod,
                iterations, memoryKiB, parallelism, chunkSize, keyCheckLength, macLength, key, keyCheck,
                salt, nonceSeed, listener);
    }
}
