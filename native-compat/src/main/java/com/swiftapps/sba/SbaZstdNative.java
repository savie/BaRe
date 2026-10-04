package com.swiftapps.sba;

import android.os.ParcelFileDescriptor;
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;
import java.io.FileDescriptor;
import java.io.IOException;

public final class SbaZstdNative {
    public static final SbaZstdNative a = new SbaZstdNative();
    static { System.loadLibrary("sba_archive"); }

    public static long[] a(FileDescriptor input, FileDescriptor output,
                           SbaNativeProgressListener listener) throws IOException {
        ParcelFileDescriptor in = ParcelFileDescriptor.dup(input);
        ParcelFileDescriptor out = ParcelFileDescriptor.dup(output);
        try {
            return a.decompressZstdFdToFdRaw(in.getFd(), out.getFd(), -1L, listener);
        } finally {
            try { out.close(); } finally { in.close(); }
        }
    }

    private native long[] decompressZstdFdToFdRaw(int inputFd, int outputFd, long expectedSize,
                                                  SbaNativeProgressListener listener);
    public native byte[] compressZstdBytes(byte[] payload, int level);
    public native byte[] decompressZstdBytes(byte[] payload);
}
