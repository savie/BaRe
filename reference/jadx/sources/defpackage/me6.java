package defpackage;

import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class me6 implements gg7 {
    public int a;

    public me6(int i) {
        this.a = i;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0091 A[PHI: r2
      0x0091: PHI (r2v10 int) = (r2v1 int), (r2v11 int) binds: [B:19:0x00a5, B:15:0x008f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.gg7
    public int b(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5 = (i2 + i) - 8;
        int i6 = i;
        while (i6 <= i5) {
            int i7 = bArr[i6];
            int i8 = i7 & 255;
            if (i8 == 239) {
                int i9 = i6 + 1;
                int i10 = bArr[i9];
                if ((i10 & 13) == 0) {
                    int i11 = i6 + 2;
                    int i12 = i6 + 3;
                    int i13 = ((((i10 & 240) << 13) | ((bArr[i11] & 255) << 9)) | ((bArr[i12] & 255) << 1)) - ((this.a + i6) - i);
                    bArr[i9] = (byte) ((i10 & 15) | ((i13 >>> 8) & 240));
                    bArr[i11] = (byte) (((i13 >>> 16) & 15) | ((i13 >>> 7) & 16) | ((i13 << 4) & 224));
                    bArr[i12] = (byte) (((i13 >>> 13) & 128) | ((i13 >>> 4) & 127));
                    i6 = i11;
                }
            } else if ((i7 & 127) == 23) {
                int i14 = ((bArr[i6 + 1] & 255) << 8) | i8;
                int i15 = i6 + 2;
                int i16 = i14 | ((bArr[i15] & 255) << 16) | ((bArr[i6 + 3] & 255) << 24);
                if ((i16 & 3712) != 0) {
                    i15 = i6 + 4;
                    int iP = pe4.p(bArr, i15);
                    if ((((i16 << 8) ^ iP) & 1015811) != 3) {
                        i6 = i15;
                    } else {
                        i3 = (i16 & (-4096)) + (iP >>> 20);
                        i4 = (iP << 12) | 279;
                        pe4.C(bArr, i6, i4);
                        pe4.C(bArr, i6 + 4, i3);
                        i6 += 6;
                    }
                } else {
                    int i17 = i16 >>> 27;
                    if (((i16 - 12544) & 16256) >= (i17 & 29)) {
                        i6 = i15;
                    } else {
                        int iO = pe4.o(bArr, i6 + 4) - ((this.a + i6) - i);
                        i3 = (i16 >>> 12) | (iO << 20);
                        i4 = ((iO + RSAKeyGenerator.MIN_KEY_SIZE_BITS) & (-4096)) | 23 | (i17 << 7);
                        pe4.C(bArr, i6, i4);
                        pe4.C(bArr, i6 + 4, i3);
                        i6 += 6;
                    }
                }
            }
            i6 += 2;
        }
        int i18 = i6 - i;
        this.a += i18;
        return i18;
    }
}
