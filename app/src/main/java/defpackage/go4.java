package defpackage;

import com.nimbusds.jose.crypto.impl.XC20P;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class go4 implements hl2 {
    public static final long[] h = {1, 32898, -9223372036854742902L, -9223372034707259392L, 32907, 2147483649L, -9223372034707259263L, -9223372036854743031L, 138, 136, 2147516425L, 2147483658L, 2147516555L, -9223372036854775669L, -9223372036854742903L, -9223372036854743037L, -9223372036854743038L, -9223372036854775680L, 32778, -9223372034707292150L, -9223372034707259263L, -9223372036854742912L, 2147483649L, -9223372034707259384L};
    public final b42 a;
    public final long[] b;
    public final byte[] c;
    public int d;
    public int e;
    public int f;
    public boolean g;

    public go4(go4 go4Var) {
        long[] jArr = new long[25];
        this.b = jArr;
        byte[] bArr = new byte[XC20P.IV_BIT_LENGTH];
        this.c = bArr;
        this.a = go4Var.a;
        long[] jArr2 = go4Var.b;
        System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
        byte[] bArr2 = go4Var.c;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        this.d = go4Var.d;
        this.e = go4Var.e;
        this.f = go4Var.f;
        this.g = go4Var.g;
        i();
        e42.a();
    }

    @Override // defpackage.hl2
    public final void a(byte b) {
        int i = this.e;
        if (i % 8 != 0) {
            l0.e("attempt to absorb with odd length queue");
            return;
        }
        if (this.g) {
            l0.e("attempt to absorb while squeezing");
            return;
        }
        byte[] bArr = this.c;
        bArr[i >>> 3] = b;
        int i2 = i + 8;
        this.e = i2;
        if (i2 == this.d) {
            d(bArr, 0);
            this.e = 0;
        }
    }

    @Override // defpackage.hl2
    public int c() {
        return this.f / 8;
    }

    public final void d(byte[] bArr, int i) {
        int i2 = this.d >>> 6;
        for (int i3 = 0; i3 < i2; i3++) {
            long[] jArr = this.b;
            jArr[i3] = jArr[i3] ^ xx3.t(bArr, i);
            i += 8;
        }
        e();
    }

    public final void e() {
        long[] jArr = this.b;
        long j = jArr[0];
        long j2 = jArr[1];
        char c = 2;
        long j3 = jArr[2];
        char c2 = 3;
        long j4 = jArr[3];
        char c3 = 4;
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        long j9 = jArr[8];
        long j10 = jArr[9];
        long j11 = jArr[10];
        long j12 = jArr[11];
        long j13 = jArr[12];
        long j14 = jArr[13];
        long j15 = jArr[14];
        long j16 = jArr[15];
        long j17 = jArr[16];
        long j18 = jArr[17];
        long j19 = jArr[18];
        long j20 = jArr[19];
        long j21 = jArr[20];
        long j22 = jArr[21];
        long j23 = jArr[22];
        long j24 = jArr[23];
        int i = 24;
        long j25 = jArr[24];
        int i2 = 0;
        while (i2 < i) {
            long j26 = (((j ^ j6) ^ j11) ^ j16) ^ j21;
            long j27 = (((j2 ^ j7) ^ j12) ^ j17) ^ j22;
            long j28 = (((j3 ^ j8) ^ j13) ^ j18) ^ j23;
            long j29 = (((j4 ^ j9) ^ j14) ^ j19) ^ j24;
            long j30 = (((j5 ^ j10) ^ j15) ^ j20) ^ j25;
            long j31 = ((j27 << 1) | (j27 >>> (-1))) ^ j30;
            long j32 = ((j28 << 1) | (j28 >>> (-1))) ^ j26;
            long j33 = ((j29 << 1) | (j29 >>> (-1))) ^ j27;
            long j34 = ((j30 << 1) | (j30 >>> (-1))) ^ j28;
            long j35 = ((j26 << 1) | (j26 >>> (-1))) ^ j29;
            long j36 = j ^ j31;
            long j37 = j6 ^ j31;
            long j38 = j11 ^ j31;
            long j39 = j16 ^ j31;
            long j40 = j21 ^ j31;
            long j41 = j2 ^ j32;
            long j42 = j7 ^ j32;
            long j43 = j12 ^ j32;
            long j44 = j17 ^ j32;
            long j45 = j22 ^ j32;
            long j46 = j3 ^ j33;
            long j47 = j8 ^ j33;
            long j48 = j13 ^ j33;
            long j49 = j18 ^ j33;
            long j50 = j23 ^ j33;
            long j51 = j4 ^ j34;
            long j52 = j9 ^ j34;
            long j53 = j14 ^ j34;
            long j54 = j19 ^ j34;
            long j55 = j24 ^ j34;
            long j56 = j5 ^ j35;
            long j57 = j10 ^ j35;
            long j58 = j15 ^ j35;
            long j59 = j20 ^ j35;
            long j60 = j25 ^ j35;
            long j61 = (j41 << 1) | (j41 >>> 63);
            char c4 = c;
            long j62 = (j42 << 44) | (j42 >>> 20);
            char c5 = c2;
            long j63 = (j57 << 20) | (j57 >>> 44);
            char c6 = c3;
            long j64 = (j50 << 61) | (j50 >>> c5);
            long j65 = (j58 << 39) | (j58 >>> 25);
            long j66 = (j40 << 18) | (j40 >>> 46);
            long j67 = (j46 << 62) | (j46 >>> c4);
            long j68 = (j48 << 43) | (j48 >>> 21);
            long j69 = (j53 << 25) | (j53 >>> 39);
            int i3 = i;
            long j70 = (j59 << 8) | (j59 >>> 56);
            int i4 = i2;
            long j71 = (j55 << 56) | (j55 >>> 8);
            long j72 = (j39 << 41) | (j39 >>> 23);
            long j73 = (j56 << 27) | (j56 >>> 37);
            long j74 = (j60 << 14) | (j60 >>> 50);
            long j75 = (j45 << c4) | (j45 >>> 62);
            long j76 = (j52 << 55) | (j52 >>> 9);
            long j77 = (j44 << 45) | (j44 >>> 19);
            long j78 = (j37 << 36) | (j37 >>> 28);
            long j79 = (j51 << 28) | (j51 >>> 36);
            long[] jArr2 = jArr;
            long j80 = (j54 << 21) | (j54 >>> 43);
            long j81 = (j49 << 15) | (j49 >>> 49);
            long j82 = (j43 << 10) | (j43 >>> 54);
            long j83 = (j47 << 6) | (j47 >>> 58);
            long j84 = (j38 << c5) | (j38 >>> 61);
            long j85 = j36 ^ ((~j62) & j68);
            long j86 = ((~j68) & j80) ^ j62;
            long j87 = ((~j80) & j74) ^ j68;
            j4 = ((~j74) & j36) ^ j80;
            long j88 = ((~j36) & j62) ^ j74;
            long j89 = j79 ^ ((~j63) & j84);
            long j90 = ((~j84) & j77) ^ j63;
            long j91 = ((~j77) & j64) ^ j84;
            long j92 = ((~j64) & j79) ^ j77;
            long j93 = ((~j79) & j63) ^ j64;
            j11 = j61 ^ ((~j83) & j69);
            long j94 = ((~j69) & j70) ^ j83;
            long j95 = ((~j70) & j66) ^ j69;
            j14 = j70 ^ ((~j66) & j61);
            long j96 = ((~j61) & j83) ^ j66;
            long j97 = j73 ^ ((~j78) & j82);
            long j98 = ((~j82) & j81) ^ j78;
            long j99 = j82 ^ ((~j81) & j71);
            long j100 = j81 ^ ((~j71) & j73);
            long j101 = j71 ^ ((~j73) & j78);
            j21 = j67 ^ ((~j76) & j65);
            long j102 = ((~j65) & j72) ^ j76;
            long j103 = j65 ^ ((~j72) & j75);
            long j104 = j72 ^ ((~j75) & j67);
            i2 = i4 + 1;
            j17 = j98;
            j12 = j94;
            j18 = j99;
            j22 = j102;
            j20 = j101;
            j16 = j97;
            j5 = j88;
            j7 = j90;
            c3 = c6;
            j25 = j75 ^ ((~j67) & j76);
            j24 = j104;
            j = j85 ^ h[i4];
            jArr = jArr2;
            c = c4;
            i = i3;
            c2 = c5;
            j3 = j87;
            j2 = j86;
            j19 = j100;
            j23 = j103;
            j13 = j95;
            j8 = j91;
            j15 = j96;
            j10 = j93;
            j9 = j92;
            j6 = j89;
        }
        long[] jArr3 = jArr;
        jArr3[0] = j;
        jArr3[1] = j2;
        jArr3[c] = j3;
        jArr3[c2] = j4;
        jArr3[c3] = j5;
        jArr3[5] = j6;
        jArr3[6] = j7;
        jArr3[7] = j8;
        jArr3[8] = j9;
        jArr3[9] = j10;
        jArr3[10] = j11;
        jArr3[11] = j12;
        jArr3[12] = j13;
        jArr3[13] = j14;
        jArr3[14] = j15;
        jArr3[15] = j16;
        jArr3[16] = j17;
        jArr3[17] = j18;
        jArr3[18] = j19;
        jArr3[19] = j20;
        jArr3[20] = j21;
        jArr3[21] = j22;
        jArr3[22] = j23;
        jArr3[23] = j24;
        jArr3[i] = j25;
    }

    public final void g(int i, int i2) {
        if (i2 < 1 || i2 > 7) {
            c6.f("'bits' must be in the range 1 to 7");
            return;
        }
        int i3 = this.e;
        if (i3 % 8 != 0) {
            l0.e("attempt to absorb with odd length queue");
            return;
        }
        if (this.g) {
            l0.e("attempt to absorb while squeezing");
            return;
        }
        byte[] bArr = this.c;
        bArr[i3 >>> 3] = (byte) (i & ((1 << i2) - 1));
        this.e = i3 + i2;
    }

    public final void h(go4 go4Var) {
        if (this.a != go4Var.a) {
            c6.f("attempt to copy digest of different purpose");
            return;
        }
        long[] jArr = go4Var.b;
        System.arraycopy(jArr, 0, this.b, 0, jArr.length);
        byte[] bArr = go4Var.c;
        System.arraycopy(bArr, 0, this.c, 0, bArr.length);
        this.d = go4Var.d;
        this.e = go4Var.e;
        this.f = go4Var.f;
        this.g = go4Var.g;
        i();
        e42.a();
    }

    public a42 i() {
        return zh8.r(this);
    }

    public final void j(int i) {
        if (i != 128 && i != 224 && i != 256 && i != 288 && i != 384 && i != 512) {
            c6.f("bitLength must be one of 128, 224, 256, 288, 384, or 512.");
            return;
        }
        int i2 = 1600 - (i << 1);
        if (i2 <= 0 || i2 >= 1600 || i2 % 64 != 0) {
            l0.e("invalid rate value");
            return;
        }
        this.d = i2;
        int i3 = 0;
        while (true) {
            long[] jArr = this.b;
            if (i3 >= jArr.length) {
                Arrays.fill(this.c, (byte) 0);
                this.e = 0;
                this.g = false;
                this.f = (1600 - i2) / 2;
                return;
            }
            jArr[i3] = 0;
            i3++;
        }
    }

    public final void k(int i, long j, byte[] bArr) {
        boolean z = this.g;
        long[] jArr = this.b;
        byte[] bArr2 = this.c;
        if (!z) {
            int i2 = this.e;
            int i3 = i2 >>> 3;
            bArr2[i3] = (byte) (bArr2[i3] | ((byte) (1 << (i2 & 7))));
            int i4 = i2 + 1;
            this.e = i4;
            if (i4 == this.d) {
                d(bArr2, 0);
            } else {
                int i5 = i4 >>> 6;
                int i6 = i4 & 63;
                int i7 = 0;
                for (int i8 = 0; i8 < i5; i8++) {
                    jArr[i8] = jArr[i8] ^ xx3.t(bArr2, i7);
                    i7 += 8;
                }
                if (i6 > 0) {
                    jArr[i5] = (xx3.t(bArr2, i7) & ((1 << i6) - 1)) ^ jArr[i5];
                }
            }
            int i9 = (this.d - 1) >>> 6;
            jArr[i9] = jArr[i9] ^ Long.MIN_VALUE;
            this.e = 0;
            this.g = true;
        }
        long j2 = 0;
        if (j % 8 != 0) {
            l0.e("outputLength not a multiple of 8");
            return;
        }
        while (j2 < j) {
            if (this.e == 0) {
                e();
                int i10 = this.d >>> 6;
                int i11 = 0;
                for (int i12 = 0; i12 < i10; i12++) {
                    xx3.v(i11, jArr[i12], bArr2);
                    i11 += 8;
                }
                this.e = this.d;
            }
            int iMin = (int) Math.min(this.e, j - j2);
            System.arraycopy(bArr2, (this.d - this.e) / 8, bArr, ((int) (j2 / 8)) + i, iMin / 8);
            this.e -= iMin;
            j2 += (long) iMin;
        }
    }

    @Override // defpackage.hl2
    public final void reset() {
        j(this.f);
    }

    @Override // defpackage.hl2
    public final void update(byte[] bArr, int i, int i2) {
        int i3 = this.e;
        if (i3 % 8 != 0) {
            l0.e("attempt to absorb with odd length queue");
            return;
        }
        if (this.g) {
            l0.e("attempt to absorb while squeezing");
            return;
        }
        int i4 = i3 >>> 3;
        int i5 = this.d >>> 3;
        int i6 = i5 - i4;
        byte[] bArr2 = this.c;
        if (i2 < i6) {
            System.arraycopy(bArr, i, bArr2, i4, i2);
            this.e += i2 << 3;
            return;
        }
        if (i4 > 0) {
            System.arraycopy(bArr, i, bArr2, i4, i6);
            d(bArr2, 0);
        } else {
            i6 = 0;
        }
        while (true) {
            int i7 = i2 - i6;
            if (i7 < i5) {
                System.arraycopy(bArr, i + i6, bArr2, 0, i7);
                this.e = i7 << 3;
                return;
            } else {
                d(bArr, i + i6);
                i6 += i5;
            }
        }
    }

    public go4(int i) {
        this.b = new long[25];
        this.c = new byte[XC20P.IV_BIT_LENGTH];
        this.a = b42.a;
        j(i);
        i();
        e42.a();
    }
}
