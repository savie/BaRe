package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yh3 {
    public final byte[] a;
    public int b;

    public yh3() {
        this.a = new byte[15];
    }

    public static int e(long j, long j2) {
        long jG = ho6.G(j, j2);
        return (int) ((((jG & 4294967295L) + 4294967295L) >>> 32) | (jG >>> 31));
    }

    public void a(int i) {
        int i2 = this.b + 1;
        this.b = i2;
        this.a[i2] = (byte) i;
    }

    public void b(int i) {
        int iG = ((int) (ho6.G(((long) (i + 1)) << 28, 193428131138340668L) >>> 20)) - 1;
        for (int i2 = 0; i2 < 8; i2++) {
            int i3 = iG * 10;
            c(i3 >>> 28);
            iG = i3 & 268435455;
        }
    }

    public void c(int i) {
        int i2 = this.b + 1;
        this.b = i2;
        this.a[i2] = (byte) (i + 48);
    }

    public void d() {
        int i;
        byte b;
        while (true) {
            i = this.b;
            b = this.a[i];
            if (b != 48) {
                break;
            } else {
                this.b = i - 1;
            }
        }
        if (b == 46) {
            this.b = i + 1;
        }
    }

    public void f(int i, int i2) {
        int iNumberOfLeadingZeros = (int) ((((long) (32 - Integer.numberOfLeadingZeros(i))) * 661971961083L) >> 41);
        long j = i;
        long[] jArr = ho6.b;
        if (j >= jArr[iNumberOfLeadingZeros]) {
            iNumberOfLeadingZeros++;
        }
        int i3 = (int) (j * jArr[9 - iNumberOfLeadingZeros]);
        int i4 = i2 + iNumberOfLeadingZeros;
        int i5 = (int) ((((long) i3) * 1441151881) >>> 57);
        int i6 = i3 - (100000000 * i5);
        int i7 = 1;
        if (i4 > 0 && i4 <= 7) {
            c(i5);
            int iG = ((int) (ho6.G(((long) (i6 + 1)) << 28, 193428131138340668L) >>> 20)) - 1;
            while (i7 < i4) {
                int i8 = iG * 10;
                c(i8 >>> 28);
                iG = i8 & 268435455;
                i7++;
            }
            a(46);
            while (i7 <= 8) {
                int i9 = iG * 10;
                c(i9 >>> 28);
                iG = i9 & 268435455;
                i7++;
            }
            d();
            return;
        }
        if (-3 < i4 && i4 <= 0) {
            c(0);
            a(46);
            while (i4 < 0) {
                c(0);
                i4++;
            }
            c(i5);
            b(i6);
            d();
            return;
        }
        c(i5);
        a(46);
        b(i6);
        d();
        int i10 = i4 - 1;
        a(69);
        if (i10 < 0) {
            a(45);
            i10 = -i10;
        }
        if (i10 < 10) {
            c(i10);
            return;
        }
        int i11 = (i10 * 103) >>> 10;
        c(i11);
        c(i10 - (i11 * 10));
    }

    public void g(int i, int i2, int i3) {
        char c;
        long j;
        long j2;
        int i4 = i2 & 1;
        long j3 = i2 << 2;
        long j4 = j3 + 2;
        if ((i2 != 8388608) || (i == -149)) {
            j = j3 - 2;
            c = ')';
            j2 = ((long) i) * 661971961083L;
        } else {
            c = ')';
            j = j3 - 1;
            j2 = (((long) i) * 661971961083L) - 274743187321L;
        }
        int i5 = (int) (j2 >> c);
        int i6 = ((int) ((((long) (-i5)) * 913124641741L) >> 38)) + i + 33;
        long j5 = ho6.c[(i5 + 324) << 1] + 1;
        int iE = e(j5, j3 << i6);
        int iE2 = e(j5, j << i6);
        int iE3 = e(j5, j4 << i6);
        int i7 = iE >> 2;
        if (i7 >= 100) {
            int i8 = ((int) ((((long) i7) * 1717986919) >>> 34)) * 10;
            int i9 = i8 + 10;
            boolean z = iE2 + i4 <= (i8 << 2);
            if (z != ((i9 << 2) + i4 <= iE3)) {
                if (!z) {
                    i8 = i9;
                }
                f(i8, i5);
                return;
            }
        }
        int i10 = i7 + 1;
        boolean z2 = iE2 + i4 <= (i7 << 2);
        if (z2 != ((i10 << 2) + i4 <= iE3)) {
            if (!z2) {
                i7 = i10;
            }
            f(i7, i5 + i3);
        } else {
            int i11 = iE - ((i7 + i10) << 1);
            if (i11 >= 0 && (i11 != 0 || (i7 & 1) != 0)) {
                i7 = i10;
            }
            f(i7, i5 + i3);
        }
    }

    public yh3(byte[] bArr, int i) {
        this.a = bArr;
        this.b = i;
    }
}
