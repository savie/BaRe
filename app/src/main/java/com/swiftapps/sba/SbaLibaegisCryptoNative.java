package com.swiftapps.sba;

import android.os.ParcelFileDescriptor;
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;
import defpackage.qt3;
import defpackage.rs9;
import java.io.FileDescriptor;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SbaLibaegisCryptoNative {
    public static final SbaLibaegisCryptoNative a = new SbaLibaegisCryptoNative();

    static {
        System.loadLibrary("sba_archive");
    }

    public static long[] a(int i, long j, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, long j2, long j3, int i3, SbaNativeProgressListener sbaNativeProgressListener) {
        return a.decryptAegis128X2ChunkedEntryFdRaw(i2, j, i3, bArr, bArr2, bArr3, j2, j3, i, sbaNativeProgressListener);
    }

    public static long[] b(int i, long j, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, long j2, long j3, int i3, SbaNativeProgressListener sbaNativeProgressListener) {
        return a.decryptAegis256ChunkedEntryFdRaw(i2, j, i3, bArr, bArr2, bArr3, j2, j3, i, sbaNativeProgressListener);
    }

    public static Object c(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, qt3 qt3Var) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            ParcelFileDescriptor parcelFileDescriptorDup2 = ParcelFileDescriptor.dup(fileDescriptor2);
            try {
                Object objInvoke = qt3Var.invoke(Integer.valueOf(parcelFileDescriptorDup.getFd()), Integer.valueOf(parcelFileDescriptorDup2.getFd()));
                parcelFileDescriptorDup2.close();
                parcelFileDescriptorDup.close();
                return objInvoke;
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

    private final native long[] decryptAegis128X2ChunkedEntryFdRaw(int i, long j, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, long j2, long j3, int i3, SbaNativeProgressListener sbaNativeProgressListener);

    private final native long[] decryptAegis256ChunkedEntryFdRaw(int i, long j, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, long j2, long j3, int i3, SbaNativeProgressListener sbaNativeProgressListener);

    public final native boolean isAvailable();
}
