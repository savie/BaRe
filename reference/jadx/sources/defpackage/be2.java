package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class be2 extends sw0 {
    public final byte[] h;
    public int i = 0;
    public boolean j;
    public final ly0 k;
    public final ly0 l;
    public final boolean m;
    public final boolean n;

    public be2(ly0 ly0Var) {
        this.k = ly0Var;
        this.l = ly0Var;
        this.h = new byte[ly0Var.getBlockSize()];
        boolean z = false;
        String strF = ly0Var.f();
        int iIndexOf = strF.indexOf(47) + 1;
        boolean z2 = iIndexOf > 0 && strF.startsWith("PGP", iIndexOf);
        this.n = z2;
        if (z2 || (ly0Var instanceof cp7)) {
            this.m = true;
            return;
        }
        if (iIndexOf > 0 && strF.startsWith("OpenPGP", iIndexOf)) {
            z = true;
        }
        this.m = z;
    }

    @Override // defpackage.sw0
    public final int a(byte[] bArr, int i) {
        byte[] bArr2;
        int i2;
        int iB;
        int blockSize;
        byte[] bArr3 = this.h;
        try {
            int i3 = this.i;
            if (i + i3 > bArr.length) {
                throw new dv5("output buffer too short for doFinal()");
            }
            int i4 = 0;
            if (i3 != 0) {
                ly0 ly0Var = this.l;
                if (ly0Var != null) {
                    xs0 xs0Var = ly0Var.e;
                    int blockSize2 = i3 / xs0Var.getBlockSize();
                    bArr2 = bArr;
                    i2 = i;
                    iB = ly0Var.b(this.h, 0, blockSize2, bArr2, i2);
                    blockSize = blockSize2 * xs0Var.getBlockSize();
                } else {
                    bArr2 = bArr;
                    i2 = i;
                    iB = 0;
                    blockSize = 0;
                }
                if (this.i == blockSize) {
                    i4 = iB;
                } else {
                    if (!this.m) {
                        throw new ua2("data not block size aligned");
                    }
                    this.k.j(bArr3, bArr3, blockSize, blockSize);
                    System.arraycopy(bArr3, blockSize, bArr2, i2 + iB, this.i - blockSize);
                    int i5 = (this.i - blockSize) + iB;
                    this.i = 0;
                    i4 = i5;
                }
            }
            g();
            return i4;
        } catch (Throwable th) {
            g();
            throw th;
        }
    }

    @Override // defpackage.sw0
    public final int b() {
        return this.k.e.getBlockSize();
    }

    @Override // defpackage.sw0
    public final int c(int i) {
        int i2 = i + this.i;
        boolean z = this.n;
        byte[] bArr = this.h;
        return i2 - ((z && this.j) ? (i2 % bArr.length) - (this.k.e.getBlockSize() + 2) : i2 % bArr.length);
    }

    @Override // defpackage.sw0
    public final void d(boolean z, z61 z61Var) {
        this.j = z;
        g();
        this.k.a(z, z61Var);
    }

    @Override // defpackage.sw0
    public final int f(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        byte[] bArr3;
        int i4;
        int iH = 0;
        if (i2 < 0) {
            c6.f("Can't have a negative input length!");
            return 0;
        }
        ly0 ly0Var = this.k;
        int blockSize = ly0Var.e.getBlockSize();
        int iC = c(i2);
        if (iC > 0 && iC + i3 > bArr2.length) {
            throw new dv5("output buffer too short");
        }
        byte[] bArr4 = this.h;
        int length = bArr4.length;
        int i5 = this.i;
        int i6 = length - i5;
        if (i2 > i6) {
            if (i5 != 0) {
                System.arraycopy(bArr, i, bArr4, i5, i6);
                i += i6;
                i2 -= i6;
            }
            if (bArr == bArr2) {
                bArr = new byte[i2];
                System.arraycopy(bArr2, i, bArr, 0, i2);
                i4 = 0;
            } else {
                i4 = i;
            }
            byte[] bArr5 = bArr;
            iH = this.i != 0 ? h(bArr2, i3) : 0;
            ly0 ly0Var2 = this.l;
            if (ly0Var2 != null) {
                int blockSize2 = (ly0Var2.getBlockSize() / blockSize) * (i2 / ly0Var2.getBlockSize());
                if (blockSize2 > 0) {
                    bArr3 = bArr2;
                    iH += ly0Var2.b(bArr5, i4, blockSize2, bArr3, i3 + iH);
                    int i7 = blockSize2 * blockSize;
                    i2 -= i7;
                    i4 += i7;
                } else {
                    bArr3 = bArr2;
                }
                i = i4;
            } else {
                bArr3 = bArr2;
                i = i4;
                while (i2 > bArr4.length) {
                    iH += ly0Var.j(bArr5, bArr3, i, i3 + iH);
                    i2 -= blockSize;
                    i += blockSize;
                }
            }
            bArr = bArr5;
        } else {
            bArr3 = bArr2;
        }
        System.arraycopy(bArr, i, bArr4, this.i, i2);
        int i8 = this.i + i2;
        this.i = i8;
        return i8 == bArr4.length ? h(bArr3, i3 + iH) + iH : iH;
    }

    @Override // defpackage.sw0
    public final void g() {
        int i = 0;
        while (true) {
            byte[] bArr = this.h;
            if (i >= bArr.length) {
                this.i = 0;
                this.k.reset();
                return;
            } else {
                bArr[i] = 0;
                i++;
            }
        }
    }

    public final int h(byte[] bArr, int i) {
        this.i = 0;
        byte[] bArr2 = this.h;
        ly0 ly0Var = this.l;
        return ly0Var != null ? ly0Var.b(bArr2, 0, bArr2.length / ly0Var.e.getBlockSize(), bArr, i) : this.k.j(bArr2, bArr, 0, i);
    }
}
