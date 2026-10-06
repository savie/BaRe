package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ex8 implements gg7 {
    public static final boolean[] d = {true, true, true, false, true, false, false, false};
    public static final int[] e = {0, 1, 2, 2, 3, 3, 3, 3};
    public final boolean a;
    public int b;
    public int c = 0;

    public ex8(int i, boolean z) {
        this.a = z;
        this.b = i + 5;
    }

    @Override // defpackage.gg7
    public final int b(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5 = i - 1;
        int i6 = (i2 + i) - 5;
        int i7 = i;
        while (true) {
            if (i7 > i6) {
                break;
            }
            if ((bArr[i7] & 254) == 232) {
                int i8 = i7 - i5;
                int i9 = i8 & (-4);
                int[] iArr = e;
                if (i9 != 0) {
                    this.c = 0;
                } else {
                    int i10 = (this.c << (i8 - 1)) & 7;
                    this.c = i10;
                    if (i10 != 0 && (!d[i10] || (i3 = bArr[(i7 + 4) - iArr[i10]] & 255) == 0 || i3 == 255)) {
                        this.c = (i10 << 1) | 1;
                    }
                    i5 = i7;
                }
                int i11 = i7 + 4;
                int i12 = bArr[i11] & 255;
                if (i12 == 0 || i12 == 255) {
                    int i13 = i7 + 1;
                    int iP = pe4.p(bArr, i13);
                    while (true) {
                        int i14 = this.b;
                        i4 = this.a ? ((i14 + i7) - i) + iP : iP - ((i14 + i7) - i);
                        int i15 = this.c;
                        if (i15 != 0) {
                            int i16 = iArr[i15] * 8;
                            int i17 = ((byte) (i4 >>> (24 - i16))) & 255;
                            if (i17 != 0 && i17 != 255) {
                                break;
                            }
                            iP = ((1 << (32 - i16)) - 1) ^ i4;
                        } else {
                            break;
                        }
                    }
                    pe4.C(bArr, i13, (i4 << 7) >> 7);
                    i5 = i7;
                    i7 = i11;
                } else {
                    this.c = (this.c << 1) | 1;
                    i5 = i7;
                }
            }
            i7++;
        }
        int i18 = i7 - i5;
        this.c = (i18 & (-4)) == 0 ? this.c << (i18 - 1) : 0;
        int i19 = i7 - i;
        this.b += i19;
        return i19;
    }
}
