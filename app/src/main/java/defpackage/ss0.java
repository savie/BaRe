package defpackage;

import android.R;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ss0 implements hl2 {
    public static final long[] i = {7640891576956012808L, -4942790177534073029L, 4354685564936845355L, -6534734903238641935L, 5840696475078001361L, -7276294671716946913L, 2270897969802886507L, 6620516959819538809L};
    public static final byte[][] j = {new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, new byte[]{14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3}, new byte[]{11, 8, 12, 0, 5, 2, 15, 13, 10, 14, 3, 6, 7, 1, 9, 4}, new byte[]{7, 9, 3, 1, 13, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8}, new byte[]{9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, 13}, new byte[]{2, 12, 6, 10, 0, 11, 8, 3, 4, 13, 7, 5, 15, 14, 1, 9}, new byte[]{12, 5, 1, 15, 14, 13, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11}, new byte[]{13, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10}, new byte[]{6, 15, 14, 9, 11, 3, 0, 8, 12, 2, 13, 7, 1, 4, 10, 5}, new byte[]{10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, 13, 0}, new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, new byte[]{14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3}};
    public final int a;
    public final byte[] b;
    public int c = 0;
    public final long[] d = new long[16];
    public long[] e = null;
    public long f = 0;
    public long g = 0;
    public long h = 0;

    public ss0(int i2) {
        this.a = 64;
        this.b = null;
        if (i2 < 8 || i2 > 512 || i2 % 8 != 0) {
            c6.f("BLAKE2b digest bit length must be a multiple of 8 and not greater than 512");
            throw null;
        }
        this.b = new byte[128];
        this.a = i2 / 8;
        zh8.r(this);
        e42.a();
        e();
    }

    @Override // defpackage.hl2
    public final void a(byte b) {
        int i2 = this.c;
        int i3 = 128 - i2;
        byte[] bArr = this.b;
        if (i3 != 0) {
            bArr[i2] = b;
            this.c = i2 + 1;
            return;
        }
        long j2 = this.f + 128;
        this.f = j2;
        if (j2 == 0) {
            this.g++;
        }
        d(bArr, 0);
        Arrays.fill(bArr, (byte) 0);
        bArr[0] = b;
        this.c = 1;
    }

    public final void b(long j2, long j3, int i2, int i3, int i4, int i5) {
        long[] jArr = this.d;
        long j4 = jArr[i2] + jArr[i3] + j2;
        jArr[i2] = j4;
        long jRotateRight = Long.rotateRight(jArr[i5] ^ j4, 32);
        jArr[i5] = jRotateRight;
        long j5 = jArr[i4] + jRotateRight;
        jArr[i4] = j5;
        long jRotateRight2 = Long.rotateRight(jArr[i3] ^ j5, 24);
        jArr[i3] = jRotateRight2;
        long j6 = jArr[i2] + jRotateRight2 + j3;
        jArr[i2] = j6;
        long jRotateRight3 = Long.rotateRight(jArr[i5] ^ j6, 16);
        jArr[i5] = jRotateRight3;
        long j7 = jArr[i4] + jRotateRight3;
        jArr[i4] = j7;
        jArr[i3] = Long.rotateRight(jArr[i3] ^ j7, 63);
    }

    @Override // defpackage.hl2
    public final int c() {
        return this.a;
    }

    public final void d(byte[] bArr, int i2) {
        ss0 ss0Var = this;
        long[] jArr = ss0Var.e;
        int length = jArr.length;
        int i3 = 0;
        long[] jArr2 = ss0Var.d;
        System.arraycopy(jArr, 0, jArr2, 0, length);
        int length2 = ss0Var.e.length;
        long[] jArr3 = i;
        System.arraycopy(jArr3, 0, jArr2, length2, 4);
        jArr2[12] = ss0Var.f ^ jArr3[4];
        jArr2[13] = ss0Var.g ^ jArr3[5];
        jArr2[14] = ss0Var.h ^ jArr3[6];
        jArr2[15] = jArr3[7];
        long[] jArr4 = new long[16];
        int i4 = i2;
        for (int i5 = 0; i5 < 16; i5++) {
            jArr4[i5] = xx3.t(bArr, i4);
            i4 += 8;
        }
        int i6 = 0;
        while (i6 < 12) {
            byte[][] bArr2 = j;
            byte[] bArr3 = bArr2[i6];
            int i7 = i6;
            long[] jArr5 = jArr4;
            ss0Var.b(jArr4[bArr3[0]], jArr4[bArr3[1]], 0, 4, 8, 12);
            byte[] bArr4 = bArr2[i7];
            b(jArr5[bArr4[2]], jArr5[bArr4[3]], 1, 5, 9, 13);
            byte[] bArr5 = bArr2[i7];
            b(jArr5[bArr5[4]], jArr5[bArr5[5]], 2, 6, 10, 14);
            byte[] bArr6 = bArr2[i7];
            b(jArr5[bArr6[6]], jArr5[bArr6[7]], 3, 7, 11, 15);
            byte[] bArr7 = bArr2[i7];
            b(jArr5[bArr7[8]], jArr5[bArr7[9]], 0, 5, 10, 15);
            byte[] bArr8 = bArr2[i7];
            b(jArr5[bArr8[10]], jArr5[bArr8[11]], 1, 6, 11, 12);
            byte[] bArr9 = bArr2[i7];
            b(jArr5[bArr9[12]], jArr5[bArr9[13]], 2, 7, 8, 13);
            byte[] bArr10 = bArr2[i7];
            long j2 = jArr5[bArr10[14]];
            long j3 = jArr5[bArr10[15]];
            ss0Var = this;
            ss0Var.b(j2, j3, 3, 4, 9, 14);
            i6 = i7 + 1;
            jArr4 = jArr5;
        }
        while (true) {
            long[] jArr6 = ss0Var.e;
            if (i3 >= jArr6.length) {
                return;
            }
            jArr6[i3] = (jArr6[i3] ^ jArr2[i3]) ^ jArr2[i3 + 8];
            i3++;
        }
    }

    @Override // defpackage.hl2
    public final int doFinal(byte[] bArr, int i2) {
        int length = bArr.length;
        int i3 = this.a;
        if (i2 > length - i3) {
            throw new dv5("output buffer too short");
        }
        this.h = -1L;
        long j2 = this.f;
        int i4 = this.c;
        long j3 = j2 + ((long) i4);
        this.f = j3;
        if (i4 > 0 && j3 == 0) {
            this.g++;
        }
        byte[] bArr2 = this.b;
        d(bArr2, 0);
        Arrays.fill(bArr2, (byte) 0);
        Arrays.fill(this.d, 0L);
        int i5 = i3 >>> 3;
        int i6 = i3 & 7;
        long[] jArr = this.e;
        int i7 = i2;
        for (int i8 = 0; i8 < i5; i8++) {
            xx3.v(i7, jArr[i8], bArr);
            i7 += 8;
        }
        if (i6 > 0) {
            byte[] bArr3 = new byte[8];
            xx3.v(0, this.e[i5], bArr3);
            System.arraycopy(bArr3, 0, bArr, (i2 + i3) - i6, i6);
        }
        Arrays.fill(this.e, 0L);
        reset();
        return i3;
    }

    public final void e() {
        if (this.e == null) {
            this.e = new long[]{jArr[0] ^ ((long) (this.a | R.attr.theme)), jArr[1], jArr[2], jArr[3], jArr[4], jArr[5], jArr[6], jArr[7]};
            long[] jArr = i;
        }
    }

    @Override // defpackage.hl2
    public final String f() {
        return "BLAKE2b";
    }

    @Override // defpackage.hl2
    public final void reset() {
        this.c = 0;
        this.h = 0L;
        this.f = 0L;
        this.g = 0L;
        this.e = null;
        Arrays.fill(this.b, (byte) 0);
        e();
    }

    @Override // defpackage.hl2
    public final void update(byte[] bArr, int i2, int i3) {
        int i4;
        if (bArr == null || i3 == 0) {
            return;
        }
        int i5 = this.c;
        byte[] bArr2 = this.b;
        if (i5 != 0) {
            i4 = 128 - i5;
            if (i4 < i3) {
                System.arraycopy(bArr, i2, bArr2, i5, i4);
                long j2 = this.f + 128;
                this.f = j2;
                if (j2 == 0) {
                    this.g++;
                }
                d(bArr2, 0);
                this.c = 0;
                Arrays.fill(bArr2, (byte) 0);
            } else {
                System.arraycopy(bArr, i2, bArr2, i5, i3);
            }
            this.c += i3;
        }
        i4 = 0;
        int i6 = i3 + i2;
        int i7 = i6 - 128;
        int i8 = i2 + i4;
        while (i8 < i7) {
            long j3 = this.f + 128;
            this.f = j3;
            if (j3 == 0) {
                this.g++;
            }
            d(bArr, i8);
            i8 += 128;
        }
        i3 = i6 - i8;
        System.arraycopy(bArr, i8, bArr2, 0, i3);
        this.c += i3;
    }
}
