package com.bare.appslist.restore;

import com.swiftapps.sba.SbaArchiveNative;
import com.swiftapps.sba.SbaLibaegisCryptoNative;
import com.swiftapps.sba.SbaNativeCrypto;
import com.swiftapps.sba.SbaZstdNative;
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;

import java.io.File;

/**
 * Reference JNI owner facade.
 *
 * The JNI symbols intentionally live on the same com.swiftapps.sba classes as
 * the Reference APK. This facade only routes application code to those exact
 * owners; it does not invent a parallel native ABI.
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

    public byte[] compressZstdBytes(byte[] payload, int level) {
        return SbaZstdNative.a.compressZstdBytes(payload, level);
    }

    public byte[] decompressZstdBytes(byte[] payload) {
        return SbaZstdNative.a.decompressZstdBytes(payload);
    }

    public byte[] deriveArgon2id(byte[] password, byte[] salt, int iterations,
                                 int memoryKiB, int parallelism, int outputBytes) {
        return SbaNativeCrypto.a.deriveArgon2id(
                password, salt, iterations, memoryKiB, parallelism, outputBytes);
    }

    public long[] createArchive(
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
            SbaNativeProgressListener listener) {
        if (!load()) throw new IllegalStateException("Reference SBA native backend is unavailable");
        return SbaArchiveNative.a.createArchive(
                version, path, archiveMetadata, entryMetadata, entryNames, entryFlags,
                xattrNames, linkNames, compressionMethod, compressionLevel,
                encryptionMethod, kdfMethod, iterations, memoryKiB, parallelism,
                chunkSize, keyCheckLength, macLength, key, keyCheck, salt, nonceSeed, listener);
    }

    public boolean isAegisAvailable() {
        return SbaLibaegisCryptoNative.a.isAvailable();
    }

    public long[] decryptAegis256(int chunkSize, long storedOffset, int fd, byte[] key,
                                 byte[] nonce, byte[] aad, long plainSize, long storedSize,
                                 int progressMode, SbaNativeProgressListener listener) {
        return SbaLibaegisCryptoNative.b(
                chunkSize, storedOffset, fd, key, nonce, aad,
                plainSize, storedSize, progressMode, listener);
    }

    public long[] decryptAegis128X2(int chunkSize, long storedOffset, int fd, byte[] key,
                                   byte[] nonce, byte[] aad, long plainSize, long storedSize,
                                   int progressMode, SbaNativeProgressListener listener) {
        return SbaLibaegisCryptoNative.a(
                chunkSize, storedOffset, fd, key, nonce, aad,
                plainSize, storedSize, progressMode, listener);
    }

    public static final class Capability {
        private final boolean library;
        private final boolean aegis;

        public Capability(boolean library, boolean aegis) {
            this.library = library;
            this.aegis = aegis;
        }

        public boolean isLibraryAvailable() { return library; }
        public boolean isAegisAvailable() { return aegis; }
    }

    public Capability probe() {
        if (!load()) return new Capability(false, false);
        try {
            return new Capability(true, isAegisAvailable());
        } catch (Throwable ignored) {
            return new Capability(true, false);
        }
    }
}
