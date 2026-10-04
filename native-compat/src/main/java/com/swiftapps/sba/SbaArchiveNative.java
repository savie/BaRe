package com.swiftapps.sba;

import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;

public final class SbaArchiveNative {
    public static final SbaArchiveNative a = new SbaArchiveNative();
    static { System.loadLibrary("sba_archive"); }

    public native long[] createArchive(
            int version,
            String path,
            byte[] archiveMetadata,
            byte[][] entryMetadata,
            String[] entryNames,
            int[] entryFlags,
            String[][] xattrNames,
            String[][] linkNames,
            int compressionMethod,
            int compressionLevel,
            int encryptionMethod,
            int kdfMethod,
            int iterations,
            int memoryKiB,
            int parallelism,
            int chunkSize,
            int keyCheckLength,
            int macLength,
            byte[] key,
            byte[] keyCheck,
            byte[] salt,
            byte[] nonceSeed,
            SbaNativeProgressListener listener);
}
