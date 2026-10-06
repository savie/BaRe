package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class l74 implements gg7 {
    public static final int[] c = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 6, 6, 0, 0, 7, 7, 4, 4, 0, 0, 4, 4, 0, 0};
    public final boolean a;
    public int b;

    public l74(int i, boolean z) {
        this.a = z;
        this.b = i;
    }

    @Override // defpackage.gg7
    public final int b(byte[] bArr, int i, int i2) {
        char c2;
        int i3;
        char c3 = 16;
        int i4 = (i + i2) - 16;
        int i5 = i;
        while (i5 <= i4) {
            int i6 = c[bArr[i5] & 31];
            int i7 = 5;
            int i8 = 0;
            while (i8 < 3) {
                if (((i6 >>> i8) & 1) == 0) {
                    c2 = c3;
                    i3 = i5;
                } else {
                    int i9 = i7 >>> 3;
                    int i10 = i7 & 7;
                    long j = 0;
                    int i11 = 0;
                    while (i11 < 6) {
                        j |= (((long) bArr[(i5 + i9) + i11]) & 255) << (i11 * 8);
                        i11++;
                        c3 = c3;
                        i5 = i5;
                    }
                    c2 = c3;
                    i3 = i5;
                    long j2 = j >>> i10;
                    if (((j2 >>> 37) & 15) == 5 && ((j2 >>> 9) & 7) == 0) {
                        int i12 = (((((int) (j2 >>> 36)) & 1) << 20) | ((int) ((j2 >>> 13) & 1048575))) << 4;
                        int i13 = this.b;
                        long j3 = (this.a ? ((i13 + i3) - i) + i12 : i12 - ((i13 + i3) - i)) >>> 4;
                        long j4 = ((((j2 & (-77309403137L)) | ((j3 & 1048575) << 13)) | ((j3 & 1048576) << c2)) << i10) | (j & ((1 << i10) - 1));
                        for (int i14 = 0; i14 < 6; i14++) {
                            bArr[i3 + i9 + i14] = (byte) (j4 >>> (i14 * 8));
                        }
                    }
                    i8++;
                    i7 += 41;
                    c3 = c2;
                    i5 = i3;
                }
                i8++;
                i7 += 41;
                c3 = c2;
                i5 = i3;
            }
            i5 += 16;
        }
        int i15 = i5 - i;
        this.b += i15;
        return i15;
    }
}
