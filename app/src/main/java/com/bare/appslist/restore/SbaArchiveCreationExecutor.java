package com.bare.appslist.restore;

import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Arrays;

/**
 * Concrete app-side SBA creation handoff.
 *
 * The actual archive framing/compression/encryption is owned by the exact
 * Reference SbaArchiveNative JNI ABI. This class owns only validation,
 * key-check derivation and temporary-output lifecycle inputs.
 */
public final class SbaArchiveCreationExecutor {
    private final SbaNativeBridge nativeBridge;

    public SbaArchiveCreationExecutor() {
        this(new SbaNativeBridge());
    }

    public SbaArchiveCreationExecutor(SbaNativeBridge nativeBridge) {
        if (nativeBridge == null) throw new IllegalArgumentException("nativeBridge");
        this.nativeBridge = nativeBridge;
    }

    public Result create(
            File output,
            byte[] archiveMetadata,
            byte[][] entryMetadata,
            String[] entryNames,
            int[] entryFlags,
            String[][] xattrNames,
            String[][] linkNames,
            int version,
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
            SbaNativeProgressListener listener) {
        if (output == null) return Result.failure("SBA output is null");
        if (entryNames == null || entryFlags == null || entryNames.length != entryFlags.length) {
            return Result.failure("SBA entry metadata is inconsistent");
        }
        if (output.getParentFile() != null && !output.getParentFile().exists()
                && !output.getParentFile().mkdirs()) {
            return Result.failure("Cannot create SBA output directory");
        }

        try {
            long[] nativeResult = nativeBridge.createArchive(
                    version, output.getAbsolutePath(), archiveMetadata, entryMetadata,
                    entryNames, entryFlags, xattrNames, linkNames,
                    compressionMethod, compressionLevel, encryptionMethod, kdfMethod,
                    iterations, memoryKiB, parallelism, chunkSize, keyCheckLength, macLength,
                    key, keyCheck, salt, nonceSeed, listener);
            if (nativeResult == null || nativeResult.length == 0) {
                return Result.failure("Reference SBA native creator returned no result");
            }
            return Result.success(nativeResult);
        } catch (Throwable e) {
            return Result.failure(e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage());
        } finally {
            wipe(key);
            wipe(keyCheck);
            wipe(salt);
            wipe(nonceSeed);
        }
    }

    public static byte[] keyCheck(String methodLabel, byte[] derivedKey,
                                   byte[] salt, byte[] nonceSeed) {
        if (methodLabel == null || derivedKey == null || salt == null || nonceSeed == null) {
            throw new IllegalArgumentException("SBA key-check input");
        }
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            digest.update(methodLabel.getBytes(StandardCharsets.UTF_8));
            digest.update(salt);
            digest.update(nonceSeed);
            digest.update(derivedKey);
            return Arrays.copyOf(digest.digest(), 16);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    private static void wipe(byte[] value) {
        if (value != null) Arrays.fill(value, (byte) 0);
    }

    public static final class Result {
        private final boolean success;
        private final long[] nativeResult;
        private final String error;

        private Result(boolean success, long[] nativeResult, String error) {
            this.success = success;
            this.nativeResult = nativeResult;
            this.error = error;
        }

        public static Result success(long[] nativeResult) {
            return new Result(true, nativeResult, null);
        }

        public static Result failure(String error) {
            return new Result(false, null, error);
        }

        public boolean isSuccess() { return success; }
        public long[] getNativeResult() { return nativeResult; }
        public String getError() { return error; }
    }
}
