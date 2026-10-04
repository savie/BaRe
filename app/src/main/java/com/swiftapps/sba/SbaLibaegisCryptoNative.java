package com.swiftapps.sba;

import android.os.ParcelFileDescriptor;
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;
import java.io.FileDescriptor;
import java.io.IOException;

public final class SbaLibaegisCryptoNative {
    public static final SbaLibaegisCryptoNative a = new SbaLibaegisCryptoNative();
    static { System.loadLibrary("sba_archive"); }

    public static long[] a(int chunkSize, long storedOffset, int fd, byte[] key, byte[] nonce,
                           byte[] aad, long plainSize, long storedSize, int progressMode,
                           SbaNativeProgressListener listener) {
        return a.decryptAegis128X2ChunkedEntryFdRaw(fd, storedOffset, progressMode, key, nonce,
                aad, plainSize, storedSize, chunkSize, listener);
    }

    public static long[] b(int chunkSize, long storedOffset, int fd, byte[] key, byte[] nonce,
                           byte[] aad, long plainSize, long storedSize, int progressMode,
                           SbaNativeProgressListener listener) {
        return a.decryptAegis256ChunkedEntryFdRaw(fd, storedOffset, progressMode, key, nonce,
                aad, plainSize, storedSize, chunkSize, listener);
    }

    private native long[] decryptAegis128X2ChunkedEntryFdRaw(int fd, long offset, int progressMode,
            byte[] key, byte[] nonce, byte[] aad, long plainSize, long storedSize,
            int chunkSize, SbaNativeProgressListener listener);
    private native long[] decryptAegis256ChunkedEntryFdRaw(int fd, long offset, int progressMode,
            byte[] key, byte[] nonce, byte[] aad, long plainSize, long storedSize,
            int chunkSize, SbaNativeProgressListener listener);
    public native boolean isAvailable();

    public native long[] encryptAegis256ChunkedEntryFdRaw(int fd, long offset, int progressMode,
            byte[] key, byte[] nonce, byte[] aad, long plainSize, long storedSize,
            int chunkSize, SbaNativeProgressListener listener);
}
