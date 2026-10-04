package com.bare.nativecompat;

public final class SbaNativeCrypto {
    public static final SbaNativeCrypto a = new SbaNativeCrypto();
    private final com.swiftapps.sba.SbaNativeCrypto delegate = com.swiftapps.sba.SbaNativeCrypto.a;
    public byte[] deriveArgon2id(byte[] password, byte[] salt, int iterations, int memoryKiB, int parallelism, int outputBytes) {
        return delegate.deriveArgon2id(password, salt, iterations, memoryKiB, parallelism, outputBytes);
    }
}
