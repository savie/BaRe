package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class cs2 extends n60 {
    public final byte[] b;
    public ds2 c;

    public cs2(byte[] bArr) {
        super(true);
        byte[] bArr2 = new byte[32];
        this.b = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, 32);
    }

    public final void a(byte[] bArr, byte[] bArr2, int i, byte[] bArr3) {
        ds2 ds2Var;
        synchronized (this.b) {
            try {
                if (this.c == null) {
                    this.c = new ds2(jb9.y(this.b));
                }
                ds2Var = this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        byte[] bArr4 = new byte[32];
        jb9.w(ds2Var.b, bArr4);
        byte[] bArr5 = this.b;
        kr6 kr6Var = new kr6();
        byte[] bArr6 = new byte[64];
        kr6Var.update(bArr5, 0, 32);
        kr6Var.doFinal(bArr6, 0);
        byte[] bArr7 = new byte[32];
        jb9.T(bArr6, bArr7);
        kr6Var.update(bArr6, 32, 32);
        kr6Var.update(bArr2, 0, i);
        kr6Var.doFinal(bArr6, 0);
        byte[] bArrY = iz1.y(bArr6);
        byte[] bArr8 = new byte[32];
        as2 as2Var = new as2();
        jb9.b0(bArrY, as2Var);
        int[] iArr = new int[10];
        int[] iArr2 = new int[10];
        nc8.E((int[]) as2Var.c, iArr2);
        nc8.K(iArr2, (int[]) as2Var.a, iArr);
        nc8.K(iArr2, (int[]) as2Var.b, iArr2);
        nc8.M(iArr);
        nc8.M(iArr2);
        int[] iArr3 = new int[10];
        int[] iArr4 = new int[10];
        int[] iArr5 = new int[10];
        nc8.i0(iArr, iArr4);
        nc8.i0(iArr2, iArr5);
        nc8.K(iArr4, iArr5, iArr3);
        nc8.l0(iArr4, iArr5, iArr4);
        nc8.K(iArr3, jb9.q, iArr3);
        iArr3[0] = iArr3[0] + 1;
        nc8.b(iArr3, iArr4, iArr3);
        nc8.M(iArr3);
        nc8.M(iArr5);
        int iH = nc8.H(iArr3) & (~nc8.H(iArr5));
        nc8.x(0, 0, bArr8, iArr2);
        nc8.x(5, 16, bArr8, iArr2);
        bArr8[31] = (byte) (((iArr[0] & 1) << 7) | bArr8[31]);
        if (iH == 0) {
            g84.c();
            return;
        }
        kr6Var.update(bArr8, 0, 32);
        kr6Var.update(bArr4, 0, 32);
        kr6Var.update(bArr2, 0, i);
        kr6Var.doFinal(bArr6, 0);
        byte[] bArrY2 = iz1.y(bArr6);
        int[] iArr6 = new int[16];
        iz1.i(bArrY, iArr6);
        int[] iArr7 = new int[8];
        iz1.i(bArrY2, iArr7);
        int[] iArr8 = new int[8];
        iz1.i(bArr7, iArr8);
        long j = ((long) iArr8[0]) & 4294967295L;
        long j2 = ((long) iArr8[1]) & 4294967295L;
        long j3 = ((long) iArr8[2]) & 4294967295L;
        long j4 = ((long) iArr8[3]) & 4294967295L;
        long j5 = ((long) iArr8[4]) & 4294967295L;
        long j6 = ((long) iArr8[5]) & 4294967295L;
        long j7 = ((long) iArr8[6]) & 4294967295L;
        long j8 = ((long) iArr8[7]) & 4294967295L;
        long j9 = 0;
        int i2 = 0;
        for (int i3 = 8; i2 < i3; i3 = 8) {
            int[] iArr9 = iArr7;
            long j10 = ((long) iArr7[i2]) & 4294967295L;
            int i4 = i2;
            long j11 = (j10 * j) + (((long) iArr6[i2]) & 4294967295L);
            iArr6[i4] = (int) j11;
            int i5 = i4 + 1;
            long j12 = (j10 * j2) + (((long) iArr6[i5]) & 4294967295L) + (j11 >>> 32);
            iArr6[i5] = (int) j12;
            long j13 = j10 * j3;
            int i6 = i4 + 2;
            long j14 = j13 + (((long) iArr6[i6]) & 4294967295L) + (j12 >>> 32);
            iArr6[i6] = (int) j14;
            long j15 = j10 * j4;
            int i7 = i4 + 3;
            long j16 = j15 + (((long) iArr6[i7]) & 4294967295L) + (j14 >>> 32);
            iArr6[i7] = (int) j16;
            long j17 = j10 * j5;
            int i8 = i4 + 4;
            long j18 = j17 + (((long) iArr6[i8]) & 4294967295L) + (j16 >>> 32);
            iArr6[i8] = (int) j18;
            long j19 = j10 * j6;
            int i9 = i4 + 5;
            long j20 = j19 + (((long) iArr6[i9]) & 4294967295L) + (j18 >>> 32);
            iArr6[i9] = (int) j20;
            long j21 = j10 * j7;
            int i10 = i4 + 6;
            long j22 = j21 + (((long) iArr6[i10]) & 4294967295L) + (j20 >>> 32);
            iArr6[i10] = (int) j22;
            long j23 = j10 * j8;
            int i11 = i4 + 7;
            long j24 = j23 + (((long) iArr6[i11]) & 4294967295L) + (j22 >>> 32);
            iArr6[i11] = (int) j24;
            int i12 = i4 + 8;
            long j25 = (j24 >>> 32) + (((long) iArr6[i12]) & 4294967295L) + j9;
            iArr6[i12] = (int) j25;
            j9 = j25 >>> 32;
            i2 = i5;
            iArr7 = iArr9;
        }
        byte[] bArr9 = new byte[64];
        g67.o(bArr9, 16, iArr6);
        byte[] bArrY3 = iz1.y(bArr9);
        System.arraycopy(bArr8, 0, bArr3, 0, 32);
        System.arraycopy(bArrY3, 0, bArr3, 32, 32);
    }
}
