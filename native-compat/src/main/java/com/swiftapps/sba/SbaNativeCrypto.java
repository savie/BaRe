package com.swiftapps.sba;

public final class SbaNativeCrypto {
    public static final SbaNativeCrypto a = new SbaNativeCrypto();
    static { System.loadLibrary("sba_archive"); }
    public native byte[] deriveArgon2id(byte[] password, byte[] salt, int iterations,
                                       int memoryKiB, int parallelism, int outputBytes);
}
