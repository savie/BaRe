package com.bare.nativecompat;

import java.io.FileDescriptor;
import java.io.IOException;

public final class SbaZstdNative {
    public static final SbaZstdNative a = new SbaZstdNative();
    private final com.swiftapps.sba.SbaZstdNative delegate = com.swiftapps.sba.SbaZstdNative.a;
    public static long[] a(FileDescriptor input, FileDescriptor output, SbaNativeProgressListener listener) throws IOException {
        return com.swiftapps.sba.SbaZstdNative.a(input, output, listener);
    }
    public byte[] compressZstdBytes(byte[] payload, int level) { return delegate.compressZstdBytes(payload, level); }
    public byte[] decompressZstdBytes(byte[] payload) { return delegate.decompressZstdBytes(payload); }
}
