package defpackage;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cz0 extends s51 {
    public static final long[][] e = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 4, 256);
    public long d;

    static {
        int i = 0;
        while (i < 4) {
            for (int i2 = 0; i2 < 256; i2++) {
                long j = i == 0 ? i2 : e[i - 1][i2];
                for (int i3 = 0; i3 < 8; i3++) {
                    j = (j & 1) == 1 ? (j >>> 1) ^ (-3932672073523589310L) : j >>> 1;
                }
                e[i][i2] = j;
            }
            i++;
        }
    }

    @Override // defpackage.s51
    public final byte[] a() {
        long j = ~this.d;
        byte[] bArr = {(byte) j, (byte) (j >>> 8), (byte) (j >>> 16), (byte) (j >>> 24), (byte) (j >>> 32), (byte) (j >>> 40), (byte) (j >>> 48), (byte) (j >>> 56)};
        this.d = -1L;
        return bArr;
    }

    @Override // defpackage.s51
    public final void d(byte[] bArr, int i, int i2) {
        long[][] jArr;
        int i3 = i2 + i;
        int i4 = i3 - 3;
        while (true) {
            jArr = e;
            if (i >= i4) {
                break;
            }
            long j = this.d;
            int i5 = (int) j;
            this.d = (((j >>> 32) ^ (jArr[3][(i5 & 255) ^ (bArr[i] & 255)] ^ jArr[2][((i5 >>> 8) & 255) ^ (bArr[i + 1] & 255)])) ^ jArr[1][((i5 >>> 16) & 255) ^ (bArr[i + 2] & 255)]) ^ jArr[0][((i5 >>> 24) & 255) ^ (bArr[i + 3] & 255)];
            i += 4;
        }
        while (i < i3) {
            long[] jArr2 = jArr[0];
            int i6 = i + 1;
            int i7 = bArr[i] & 255;
            long j2 = this.d;
            this.d = (j2 >>> 8) ^ jArr2[i7 ^ (((int) j2) & 255)];
            i = i6;
        }
    }
}
