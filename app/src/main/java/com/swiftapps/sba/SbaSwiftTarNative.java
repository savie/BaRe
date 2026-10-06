package com.swiftapps.sba;

import android.os.ParcelFileDescriptor;
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;
import com.swiftapps.sba.internal.tar.SbaTarEntryInfo;
import defpackage.rs9;
import defpackage.vq;
import java.io.FileDescriptor;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SbaSwiftTarNative {
    public static final SbaSwiftTarNative a = new SbaSwiftTarNative();

    static {
        System.loadLibrary("sba_archive");
    }

    public static long[] a(long j, String str, int i, String[] strArr, vq vqVar, int i2) {
        return a.extractTarFromFdWithStatsRaw(i2, j, str, i, strArr, vqVar);
    }

    public static String[] b(FileDescriptor fileDescriptor, long j, String str, int i, String[] strArr, vq vqVar) throws IOException {
        str.getClass();
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            String[] strArrExtractTarFromFdRaw = a.extractTarFromFdRaw(parcelFileDescriptorDup.getFd(), j, str, i, strArr, vqVar);
            parcelFileDescriptorDup.close();
            return strArrExtractTarFromFdRaw;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(parcelFileDescriptorDup, th);
                throw th2;
            }
        }
    }

    public static String[] c(FileDescriptor fileDescriptor, long j, long j2, String str, int i, String[] strArr, vq vqVar) throws IOException {
        str.getClass();
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            String[] strArrExtractTarZstdFromFdRaw = a.extractTarZstdFromFdRaw(parcelFileDescriptorDup.getFd(), j, j2, str, i, strArr, vqVar);
            parcelFileDescriptorDup.close();
            return strArrExtractTarZstdFromFdRaw;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(parcelFileDescriptorDup, th);
                throw th2;
            }
        }
    }

    public static SbaTarEntryInfo[] d(FileDescriptor fileDescriptor, long j) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            SbaTarEntryInfo[] sbaTarEntryInfoArrListTarEntriesFromFdRaw = a.listTarEntriesFromFdRaw(parcelFileDescriptorDup.getFd(), j);
            parcelFileDescriptorDup.close();
            return sbaTarEntryInfoArrListTarEntriesFromFdRaw;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(parcelFileDescriptorDup, th);
                throw th2;
            }
        }
    }

    public static SbaTarEntryInfo[] e(FileDescriptor fileDescriptor, long j, long j2) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            SbaTarEntryInfo[] sbaTarEntryInfoArrListTarEntriesZstdFromFdRaw = a.listTarEntriesZstdFromFdRaw(parcelFileDescriptorDup.getFd(), j, j2);
            parcelFileDescriptorDup.close();
            return sbaTarEntryInfoArrListTarEntriesZstdFromFdRaw;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(parcelFileDescriptorDup, th);
                throw th2;
            }
        }
    }

    private final native String[] extractTarFromFdRaw(int i, long j, String str, int i2, String[] strArr, SbaNativeProgressListener sbaNativeProgressListener);

    private final native long[] extractTarFromFdWithStatsRaw(int i, long j, String str, int i2, String[] strArr, SbaNativeProgressListener sbaNativeProgressListener);

    private final native String[] extractTarZstdFromFdRaw(int i, long j, long j2, String str, int i2, String[] strArr, SbaNativeProgressListener sbaNativeProgressListener);

    private final native SbaTarEntryInfo[] listTarEntriesFromFdRaw(int i, long j);

    private final native SbaTarEntryInfo[] listTarEntriesZstdFromFdRaw(int i, long j, long j2);

    public final native String[] extractAegisArchiveEntry(String str, long j, long j2, long j3, long j4, String str2, int i, String[] strArr, int i2, int i3, byte[] bArr, byte[] bArr2, byte[] bArr3, long j5, int i4, SbaNativeProgressListener sbaNativeProgressListener);

    public final native String[] extractAegisArchiveEntryFused(String str, long j, long j2, long j3, long j4, String str2, int i, String[] strArr, int i2, int i3, byte[] bArr, byte[] bArr2, byte[] bArr3, long j5, int i4, SbaNativeProgressListener sbaNativeProgressListener);
}
