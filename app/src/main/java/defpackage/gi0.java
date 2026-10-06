package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class gi0 extends ei0 {
    public byte[] c;
    public byte[] d;
    public byte[] e;

    public final byte[] getEncoded() {
        byte[] bArr = this.c;
        byte[] bArr2 = this.d;
        byte[] bArr3 = this.e;
        if (bArr == null) {
            return ms8.p(bArr2, bArr3);
        }
        if (bArr2 == null) {
            return ms8.p(bArr, bArr3);
        }
        if (bArr3 == null) {
            return ms8.p(bArr, bArr2);
        }
        byte[] bArr4 = new byte[bArr.length + bArr2.length + bArr3.length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        int length = bArr.length;
        System.arraycopy(bArr2, 0, bArr4, length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr4, length + bArr2.length, bArr3.length);
        return bArr4;
    }
}
