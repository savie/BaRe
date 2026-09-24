package com.swiftapps.sba;

import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SbaArchiveNative {
    public static final SbaArchiveNative a = new SbaArchiveNative();

    static {
        System.loadLibrary("sba_archive");
    }

    public final native long[] createArchive(int i, String str, byte[] bArr, byte[][] bArr2, String[] strArr, int[] iArr, String[][] strArr2, String[][] strArr3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, SbaNativeProgressListener sbaNativeProgressListener);
}
