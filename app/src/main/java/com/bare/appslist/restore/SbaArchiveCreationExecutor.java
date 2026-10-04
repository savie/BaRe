package com.bare.appslist.restore;

import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;

import java.io.File;
import java.io.IOException;

/**
 * Reference tu0/SbaArchiveNative-compatible SBA creation adapter.
 *
 * It owns only the app-side call into the native archive contract. Input
 * preparation, backup-part collection and task orchestration remain with
 * their owning app-side services.
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

    public Result create(Request request) throws IOException {
        if (request == null) throw new IllegalArgumentException("request");
        File output = request.getOutputFile();
        if (output == null) throw new IllegalArgumentException("outputFile");

        File parent = output.getParentFile();
        if (parent != null && !parent.exists() && !parent.mkdirs()) {
            return Result.failure("Cannot create SBA output directory.");
        }
        if (!nativeBridge.load()) {
            return Result.failure("SBA native library is unavailable.");
        }

        try {
            long[] result = nativeBridge.createArchive(
                    request.archiveKind,
                    output.getAbsolutePath(),
                    request.entryPayload,
                    request.entrySources,
                    request.entryNames,
                    request.entryModes,
                    request.entryXattrs,
                    request.entryLinks,
                    request.compressionMode,
                    request.compressionLevel,
                    request.encryptionFlags,
                    request.tarFlags,
                    request.metadataFlags,
                    request.sparseFlags,
                    request.chunkSize,
                    request.workerCount,
                    request.ioBufferSize,
                    request.progressMode,
                    request.key,
                    request.nonce,
                    request.aad,
                    request.indexMacKey,
                    request.progressListener);

            if (result == null || result.length < 9) {
                return Result.failure("Native SBA create returned an invalid result.");
            }
            if (!output.isFile() || output.length() <= 0L) {
                return Result.failure("Native SBA create returned without a usable archive.");
            }
            return Result.success(result, output.length());
        } catch (UnsatisfiedLinkError e) {
            return Result.failure("SBA native create entry point is unavailable.");
        } catch (RuntimeException e) {
            return Result.failure("SBA archive creation failed: " + e.getMessage());
        }
    }

    public static final class Request {
        private final File outputFile;
        private final int archiveKind;
        private final byte[] entryPayload;
        private final byte[][] entrySources;
        private final String[] entryNames;
        private final int[] entryModes;
        private final String[][] entryXattrs;
        private final String[][] entryLinks;
        private final int compressionMode;
        private final int compressionLevel;
        private final int encryptionFlags;
        private final int tarFlags;
        private final int metadataFlags;
        private final int sparseFlags;
        private final int chunkSize;
        private final int workerCount;
        private final int ioBufferSize;
        private final int progressMode;
        private final byte[] key;
        private final byte[] nonce;
        private final byte[] aad;
        private final byte[] indexMacKey;
        private final SbaNativeProgressListener progressListener;

        public Request(
                File outputFile,
                int archiveKind,
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
                SbaNativeProgressListener progressListener) {
            this.outputFile = outputFile;
            this.archiveKind = archiveKind;
            this.entryPayload = entryPayload;
            this.entrySources = entrySources;
            this.entryNames = entryNames;
            this.entryModes = entryModes;
            this.entryXattrs = entryXattrs;
            this.entryLinks = entryLinks;
            this.compressionMode = compressionMode;
            this.compressionLevel = compressionLevel;
            this.encryptionFlags = encryptionFlags;
            this.tarFlags = tarFlags;
            this.metadataFlags = metadataFlags;
            this.sparseFlags = sparseFlags;
            this.chunkSize = chunkSize;
            this.workerCount = workerCount;
            this.ioBufferSize = ioBufferSize;
            this.progressMode = progressMode;
            this.key = key;
            this.nonce = nonce;
            this.aad = aad;
            this.indexMacKey = indexMacKey;
            this.progressListener = progressListener;
        }

        public File getOutputFile() { return outputFile; }
    }

    public static final class Result {
        private final boolean success;
        private final String message;
        private final long[] nativeResult;
        private final long outputSize;

        private Result(boolean success, String message, long[] nativeResult, long outputSize) {
            this.success = success;
            this.message = message;
            this.nativeResult = nativeResult;
            this.outputSize = outputSize;
        }

        static Result success(long[] result, long outputSize) {
            return new Result(true, null, result, outputSize);
        }

        static Result failure(String message) {
            return new Result(false, message, null, 0L);
        }

        public boolean isSuccess() { return success; }
        public String getMessage() { return message; }
        public long[] getNativeResult() { return nativeResult; }
        public long getOutputSize() { return outputSize; }
    }
}
