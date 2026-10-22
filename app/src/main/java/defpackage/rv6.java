package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rv6 implements gg7 {
    public final boolean a;
    public int b;

    public rv6(int i, boolean z) {
        this.a = z;
        this.b = i;
    }

    @Override // defpackage.gg7
    public final int b(byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            byte b = bArr[i4];
            if ((b == 64 && (bArr[i4 + 1] & 192) == 0) || (b == 127 && (bArr[i4 + 1] & 192) == 192)) {
                int iO = pe4.o(bArr, i4);
                int i5 = ((this.b + i4) - i) >>> 2;
                if (!this.a) {
                    i5 = -i5;
                }
                pe4.B(bArr, i4, ((((iO + i5) << 9) >> 9) & 1073741823) | 1073741824);
            }
            i4 += 4;
        }
        int i6 = i4 - i;
        this.b += i6;
        return i6;
    }
}
