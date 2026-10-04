package com.bare.appslist.restore;


import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/**
 * Concrete Reference SBA native backend for the parts exposed directly by the
 * public SBA JNI layer: Zstd and Argon2id. AEGIS entry decryption remains on
 * SbaLibaegisCryptoNative because its JNI ABI is FD/chunk based.
 */
public final class SbaNativeArchiveBackend {
    private final SbaNativeBridge nativeBridge;

    public SbaNativeArchiveBackend() {
        this(new SbaNativeBridge());
    }

    public SbaNativeArchiveBackend(SbaNativeBridge nativeBridge) {
        if (nativeBridge == null) throw new IllegalArgumentException("nativeBridge");
        this.nativeBridge = nativeBridge;
    }

    public byte[] compressZstd(byte[] payload, int level) {
        if (payload == null) throw new IllegalArgumentException("payload");
        requireNative();
        return nativeBridge.compressZstdBytes(payload, level);
    }

    public byte[] decompressZstd(byte[] payload) {
        if (payload == null) throw new IllegalArgumentException("payload");
        requireNative();
        return nativeBridge.decompressZstdBytes(payload);
    }

    public byte[] deriveArgon2id(String password, byte[] salt, int iterations,
                                 int memoryKiB, int parallelism, int outputBytes) {
        if (password == null || password.isEmpty()) {
            throw new IllegalArgumentException("password");
        }
        if (salt == null || salt.length != 16) {
            throw new IllegalArgumentException("salt must be 16 bytes");
        }
        if (iterations < 1 || iterations >= 101
                || memoryKiB < 16384 || memoryKiB >= 65537
                || parallelism < 1 || parallelism >= 9
                || outputBytes <= 0) {
            throw new IllegalArgumentException("Invalid Reference SBA Argon2id parameters");
        }
        requireNative();
        byte[] passwordBytes = password.getBytes(StandardCharsets.UTF_8);
        try {
            return nativeBridge.deriveArgon2id(
                    passwordBytes, salt, iterations, memoryKiB, parallelism, outputBytes);
        } finally {
            Arrays.fill(passwordBytes, (byte) 0);
        }
    }

    private void requireNative() {
        if (!nativeBridge.load()) {
            throw new IllegalStateException("Reference SBA native backend is unavailable");
        }
    }
}
