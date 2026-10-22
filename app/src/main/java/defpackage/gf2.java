package defpackage;

/* JADX INFO: loaded from: classes.dex */
public abstract class gf2 implements xs0 {
    public final int b(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int blockSize = getBlockSize();
        int i4 = i2 * blockSize;
        if (bArr == bArr2) {
            bArr = new byte[i4];
            System.arraycopy(bArr2, i, bArr, 0, i4);
            i = 0;
        }
        int iJ = 0;
        for (int i5 = 0; i5 != i2; i5++) {
            iJ += j(bArr, bArr2, i, i3 + iJ);
            i += blockSize;
        }
        return iJ;
    }
}
