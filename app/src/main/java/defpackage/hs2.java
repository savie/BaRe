package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class hs2 extends n60 {
    public final byte[] b;
    public is2 c;

    public hs2(byte[] bArr) {
        super(true);
        byte[] bArr2 = new byte[57];
        this.b = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, 57);
    }

    public final void a(byte[] bArr, byte[] bArr2, int i, byte[] bArr3) {
        is2 is2Var;
        synchronized (this.b) {
            try {
                if (this.c == null) {
                    this.c = new is2(yc9.r(this.b));
                }
                is2Var = this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        byte[] bArr4 = new byte[57];
        yc9.n(is2Var.b, bArr4);
        if (bArr == null) {
            f6.n("'ctx' cannot be null");
            return;
        }
        if (bArr.length > 255) {
            c6.f("ctx");
            return;
        }
        byte[] bArr5 = this.b;
        if (bArr == null || bArr.length >= 256) {
            c6.f("ctx");
            return;
        }
        lr6 lr6Var = new lr6(256);
        byte[] bArr6 = new byte[114];
        lr6Var.update(bArr5, 0, 57);
        lr6Var.l(bArr6, 0, 114);
        byte[] bArr7 = new byte[57];
        yc9.V(bArr6, bArr7);
        yc9.l(lr6Var, (byte) 0, bArr);
        lr6Var.update(bArr6, 57, 57);
        lr6Var.update(bArr2, 0, i);
        lr6Var.l(bArr6, 0, 114);
        byte[] bArrW = od2.w(bArr6);
        byte[] bArr8 = new byte[57];
        bp0 bp0Var = new bp0();
        yc9.d0(bArrW, bp0Var);
        int[] iArr = new int[16];
        int[] iArr2 = new int[16];
        zh8.u((int[]) bp0Var.c, iArr2);
        zh8.z(iArr2, (int[]) bp0Var.a, iArr);
        zh8.z(iArr2, (int[]) bp0Var.b, iArr2);
        zh8.E(iArr, 1);
        zh8.E(iArr, -1);
        zh8.E(iArr2, 1);
        zh8.E(iArr2, -1);
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[16];
        int[] iArr5 = new int[16];
        zh8.L(iArr, iArr4);
        zh8.L(iArr2, iArr5);
        zh8.z(iArr4, iArr5, iArr3);
        zh8.b(iArr4, iArr5, iArr4);
        zh8.y(39081, iArr3, iArr3);
        int[] iArr6 = new int[16];
        iArr6[0] = 1;
        zh8.M(iArr3, iArr6, iArr3);
        zh8.b(iArr3, iArr4, iArr3);
        zh8.E(iArr3, 1);
        zh8.E(iArr3, -1);
        zh8.E(iArr5, 1);
        zh8.E(iArr5, -1);
        int iW = (~zh8.w(iArr5)) & zh8.w(iArr3);
        zh8.l(bArr8, iArr2);
        bArr8[56] = (byte) ((iArr[0] & 1) << 7);
        if (iW == 0) {
            g84.c();
            return;
        }
        yc9.l(lr6Var, (byte) 0, bArr);
        lr6Var.update(bArr8, 0, 57);
        lr6Var.update(bArr4, 0, 57);
        lr6Var.update(bArr2, 0, i);
        lr6Var.l(bArr6, 0, 114);
        byte[] bArrW2 = od2.w(bArr6);
        int[] iArr7 = new int[28];
        od2.c(bArrW, iArr7);
        int[] iArr8 = new int[14];
        od2.c(bArrW2, iArr8);
        int[] iArr9 = new int[14];
        od2.c(bArr7, iArr9);
        long j = 0;
        for (int i2 = 0; i2 < 14; i2++) {
            int i3 = i2 + 14;
            long jH = j + (((long) jb9.H(iArr8[i2], i2, iArr9, iArr7)) & 4294967295L) + (((long) iArr7[i3]) & 4294967295L);
            iArr7[i3] = (int) jH;
            j = jH >>> 32;
        }
        byte[] bArr9 = new byte[114];
        g67.o(bArr9, 28, iArr7);
        byte[] bArrW3 = od2.w(bArr9);
        System.arraycopy(bArr8, 0, bArr3, 0, 57);
        System.arraycopy(bArrW3, 0, bArr3, 57, 57);
    }
}
