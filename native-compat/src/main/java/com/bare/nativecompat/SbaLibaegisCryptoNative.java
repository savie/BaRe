package com.bare.nativecompat;

public final class SbaLibaegisCryptoNative {
    public static final SbaLibaegisCryptoNative a = new SbaLibaegisCryptoNative();
    private final com.swiftapps.sba.SbaLibaegisCryptoNative delegate = com.swiftapps.sba.SbaLibaegisCryptoNative.a;
    public static long[] a(int chunkSize, long storedOffset, int fd, byte[] key, byte[] nonce, byte[] aad,
                           long plainSize, long storedSize, int progressMode, SbaNativeProgressListener listener) {
        return com.swiftapps.sba.SbaLibaegisCryptoNative.a(chunkSize, storedOffset, fd, key, nonce, aad,
                plainSize, storedSize, progressMode, listener);
    }
    public static long[] b(int chunkSize, long storedOffset, int fd, byte[] key, byte[] nonce, byte[] aad,
                           long plainSize, long storedSize, int progressMode, SbaNativeProgressListener listener) {
        return com.swiftapps.sba.SbaLibaegisCryptoNative.b(chunkSize, storedOffset, fd, key, nonce, aad,
                plainSize, storedSize, progressMode, listener);
    }
    public boolean isAvailable() { return delegate.isAvailable(); }
}
