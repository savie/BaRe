package com.bare.appslist.restore;

import com.swiftapps.sba.SbaSwiftTarNative;
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/**
 * Native payload executor for Reference SBA entry formats.
 *
 * - unencrypted + zstd: SbaSwiftTarNative.extractTarZstdFromFdRaw
 * - unencrypted + plain: SbaSwiftTarNative.extractTarFromFdRaw
 * - AEGIS-256 / AEGIS-128X2: SbaSwiftTarNative.extractAegisArchiveEntry*
 *
 * Offsets/sizes are supplied by the Reference SBA index parser; this class
 * deliberately does not reinterpret the on-disk index contract.
 */
public final class SbaNativeEntryExecutor {
    public String[] extractPlain(File archive, long payloadOffset, long payloadLength,
                                 String destination, int flags, String[] selected,
                                 SbaNativeProgressListener listener) throws IOException {
        try (FileInputStream input = new FileInputStream(archive)) {
            return SbaSwiftTarNative.b(
                    input.getFD(), payloadOffset, destination, flags, selected, listener);
        }
    }

    public String[] extractZstd(File archive, long payloadOffset, long payloadLength,
                                String destination, int flags, String[] selected,
                                SbaNativeProgressListener listener) throws IOException {
        try (FileInputStream input = new FileInputStream(archive)) {
            return SbaSwiftTarNative.c(
                    input.getFD(), payloadOffset, payloadLength, destination,
                    flags, selected, listener);
        }
    }

    public String[] extractAegis(File archive, long archiveOffset, long archiveLength,
                                 long entryOffset, long entryLength, String entryName,
                                 String destination, int flags, String[] selected, int cryptoMode,
                                 int chunkSize, byte[] key, byte[] nonce, byte[] aad,
                                 long totalBytes, int progressMode,
                                 SbaNativeProgressListener listener,
                                 boolean fused) {
        if (fused) {
            return new SbaSwiftTarNative().extractAegisArchiveEntryFused(
                    archive.getAbsolutePath(), archiveOffset, archiveLength,
                    entryOffset, entryLength, entryName, destination, flags, selected, cryptoMode,
                    chunkSize, key, nonce, aad, totalBytes, progressMode, listener);
        }
        return new SbaSwiftTarNative().extractAegisArchiveEntry(
                archive.getAbsolutePath(), archiveOffset, archiveLength,
                entryOffset, entryLength, entryName, flags, selected, cryptoMode,
                chunkSize, key, nonce, aad, totalBytes, progressMode, listener);
    }
}
