package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class o implements gg7 {
    public final /* synthetic */ int a;
    public final boolean b;
    public int c;

    public o(int i, int i2, boolean z) {
        this.a = i2;
        switch (i2) {
            case 1:
                this.b = z;
                this.c = i;
                break;
            default:
                this.b = z;
                this.c = i + 4;
                break;
        }
    }

    @Override // defpackage.gg7
    public final int b(byte[] bArr, int i, int i2) {
        int i3 = this.a;
        boolean z = this.b;
        switch (i3) {
            case 0:
                int i4 = (i2 + i) - 4;
                int i5 = i;
                while (i5 <= i4) {
                    int i6 = i5 + 1;
                    int i7 = bArr[i6];
                    if ((i7 & 248) == 240) {
                        int i8 = i5 + 3;
                        int i9 = bArr[i8];
                        if ((i9 & 248) == 248) {
                            int i10 = ((i7 & 7) << 19) | ((bArr[i5] & 255) << 11) | ((i9 & 7) << 8);
                            int i11 = i5 + 2;
                            int i12 = (i10 | (bArr[i11] & 255)) << 1;
                            int i13 = this.c;
                            int i14 = z ? ((i13 + i5) - i) + i12 : i12 - ((i13 + i5) - i);
                            bArr[i6] = (byte) (240 | ((i14 >>> 20) & 7));
                            bArr[i5] = (byte) (i14 >>> 12);
                            bArr[i8] = (byte) (((i14 >>> 9) & 7) | 248);
                            bArr[i11] = (byte) (i14 >>> 1);
                            i5 = i11;
                        }
                    }
                    i5 += 2;
                }
                int i15 = i5 - i;
                this.c += i15;
                return i15;
            default:
                int i16 = (i2 + i) - 4;
                int i17 = i;
                while (i17 <= i16) {
                    if ((bArr[i17] & 252) == 72 && (bArr[i17 + 3] & 3) == 1) {
                        int iO = pe4.o(bArr, i17);
                        int i18 = (this.c + i17) - i;
                        if (!z) {
                            i18 = -i18;
                        }
                        pe4.B(bArr, i17, ((iO + i18) & 67108860) | 1207959553);
                    }
                    i17 += 4;
                }
                int i19 = i17 - i;
                this.c += i19;
                return i19;
        }
    }
}
