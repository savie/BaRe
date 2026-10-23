package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m implements gg7 {
    public final boolean a;
    public int b;

    public m(int i, boolean z) {
        this.a = z;
        this.b = i + 8;
    }

    @Override // defpackage.gg7
    public final int b(byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            if ((bArr[i4 + 3] & 255) == 235) {
                int i5 = i4 + 2;
                int i6 = i4 + 1;
                int i7 = ((((bArr[i5] & 255) << 16) | ((bArr[i6] & 255) << 8)) | (bArr[i4] & 255)) << 2;
                int i8 = this.b;
                int i9 = this.a ? ((i8 + i4) - i) + i7 : i7 - ((i8 + i4) - i);
                bArr[i5] = (byte) (i9 >>> 18);
                bArr[i6] = (byte) (i9 >>> 10);
                bArr[i4] = (byte) (i9 >>> 2);
            }
            i4 += 4;
        }
        int i10 = i4 - i;
        this.b += i10;
        return i10;
    }
}
