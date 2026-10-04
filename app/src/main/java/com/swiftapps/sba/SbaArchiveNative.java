package com.swiftapps.sba;

import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;

/**
 * Exact Reference JNI owner for the SBA archive creation entry point.
 */
public final class SbaArchiveNative {
    public static final SbaArchiveNative INSTANCE = new SbaArchiveNative();

    private SbaArchiveNative() {
    }

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
}
