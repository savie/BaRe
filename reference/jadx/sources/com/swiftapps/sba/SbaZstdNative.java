package com.swiftapps.sba;

import android.os.ParcelFileDescriptor;
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;
import defpackage.m27;
import defpackage.rs9;
import java.io.FileDescriptor;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SbaZstdNative {
    public static final SbaZstdNative a = new SbaZstdNative();

    static {
        System.loadLibrary("sba_archive");
    }

    public static long[] a(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, m27 m27Var) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            ParcelFileDescriptor parcelFileDescriptorDup2 = ParcelFileDescriptor.dup(fileDescriptor2);
            try {
                long[] jArrDecompressZstdFdToFdRaw = a.decompressZstdFdToFdRaw(parcelFileDescriptorDup.getFd(), parcelFileDescriptorDup2.getFd(), -1L, m27Var);
                parcelFileDescriptorDup2.close();
                parcelFileDescriptorDup.close();
                return jArrDecompressZstdFdToFdRaw;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(parcelFileDescriptorDup2, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                rs9.c(parcelFileDescriptorDup, th3);
                throw th4;
            }
        }
    }

    private final native long[] decompressZstdFdToFdRaw(int i, int i2, long j, SbaNativeProgressListener sbaNativeProgressListener);

    public final native byte[] compressZstdBytes(byte[] bArr, int i);

    public final native byte[] decompressZstdBytes(byte[] bArr);
}
