package com.jcraft.jsch.jzlib;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class GZIPHeader implements Cloneable {
    public byte[] b;
    public byte[] c;
    public byte[] d;
    public int a = 255;
    public long e = 0;

    public final Object clone() throws CloneNotSupportedException {
        GZIPHeader gZIPHeader = (GZIPHeader) super.clone();
        byte[] bArr = gZIPHeader.b;
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            gZIPHeader.b = bArr2;
        }
        byte[] bArr3 = gZIPHeader.c;
        if (bArr3 != null) {
            int length2 = bArr3.length;
            byte[] bArr4 = new byte[length2];
            System.arraycopy(bArr3, 0, bArr4, 0, length2);
            gZIPHeader.c = bArr4;
        }
        byte[] bArr5 = gZIPHeader.d;
        if (bArr5 != null) {
            int length3 = bArr5.length;
            byte[] bArr6 = new byte[length3];
            System.arraycopy(bArr5, 0, bArr6, 0, length3);
            gZIPHeader.d = bArr6;
        }
        return gZIPHeader;
    }
}
