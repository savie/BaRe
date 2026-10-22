package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class sw0 {
    public byte[] a;
    public int b;
    public boolean c;
    public ln5 d;
    public gf2 e;
    public boolean f;
    public boolean g;

    public int a(byte[] bArr, int i) {
        byte[] bArr2;
        int i2;
        int iB;
        int blockSize;
        byte[] bArr3 = this.a;
        gf2 gf2Var = this.e;
        try {
            int i3 = this.b;
            if (i + i3 > bArr.length) {
                throw new dv5("output buffer too short for doFinal()");
            }
            int i4 = 0;
            if (i3 != 0) {
                if (gf2Var != null) {
                    int blockSize2 = i3 / gf2Var.getBlockSize();
                    bArr2 = bArr;
                    i2 = i;
                    iB = gf2Var.b(this.a, 0, blockSize2, bArr2, i2);
                    blockSize = blockSize2 * gf2Var.getBlockSize();
                } else {
                    bArr2 = bArr;
                    i2 = i;
                    iB = 0;
                    blockSize = 0;
                }
                if (this.b == blockSize) {
                    i4 = iB;
                } else {
                    if (!this.f) {
                        throw new ua2("data not block size aligned");
                    }
                    this.d.j(bArr3, bArr3, blockSize, blockSize);
                    System.arraycopy(bArr3, blockSize, bArr2, i2 + iB, this.b - blockSize);
                    int i5 = (this.b - blockSize) + iB;
                    this.b = 0;
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

    public int b() {
        this.d.getClass();
        return 8;
    }

    public int c(int i) {
        int length;
        byte[] bArr = this.a;
        int i2 = i + this.b;
        if (this.g && this.c) {
            int length2 = i2 % bArr.length;
            this.d.getClass();
            length = length2 - 10;
        } else {
            length = i2 % bArr.length;
        }
        return i2 - length;
    }

    public void d(boolean z, z61 z61Var) {
        this.c = z;
        g();
        this.d.a(z, z61Var);
    }

    public final int e(byte[] bArr, int i) {
        byte[] bArr2 = this.a;
        this.b = 0;
        gf2 gf2Var = this.e;
        if (gf2Var != null) {
            return gf2Var.b(bArr2, 0, bArr2.length / gf2Var.getBlockSize(), bArr, i);
        }
        this.d.j(bArr2, bArr, 0, i);
        return 8;
    }

    public int f(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        byte[] bArr3;
        int iE;
        int i4;
        gf2 gf2Var = this.e;
        byte[] bArr4 = this.a;
        int i5 = 0;
        if (i2 < 0) {
            c6.f("Can't have a negative input length!");
            return 0;
        }
        int iB = b();
        int iC = c(i2);
        if (iC > 0 && iC > bArr2.length) {
            throw new dv5("output buffer too short");
        }
        int length = bArr4.length;
        int i6 = this.b;
        int i7 = length - i6;
        if (i2 > i7) {
            if (i6 != 0) {
                System.arraycopy(bArr, 0, bArr4, i6, i7);
                i2 -= i7;
            } else {
                i7 = 0;
            }
            if (bArr == bArr2) {
                bArr = new byte[i2];
                System.arraycopy(bArr2, i7, bArr, 0, i2);
                i4 = 0;
            } else {
                i4 = i7;
            }
            byte[] bArr5 = bArr;
            iE = this.b != 0 ? e(bArr2, 0) : 0;
            if (gf2Var != null) {
                int blockSize = (gf2Var.getBlockSize() / iB) * (i2 / gf2Var.getBlockSize());
                bArr3 = bArr2;
                if (blockSize > 0) {
                    iE += gf2Var.b(bArr5, i4, blockSize, bArr3, iE);
                    int i8 = blockSize * iB;
                    i2 -= i8;
                    i4 += i8;
                }
                i5 = i4;
                bArr = bArr5;
            } else {
                bArr3 = bArr2;
                int i9 = iE;
                while (i2 > bArr4.length) {
                    this.d.j(bArr5, bArr3, i4, i9);
                    i9 += 8;
                    i2 -= iB;
                    i4 += iB;
                }
                iE = i9;
                bArr = bArr5;
                i5 = i4;
            }
        } else {
            bArr3 = bArr2;
            iE = 0;
        }
        System.arraycopy(bArr, i5, bArr4, this.b, i2);
        int i10 = this.b + i2;
        this.b = i10;
        return i10 == bArr4.length ? e(bArr3, iE) + iE : iE;
    }

    public void g() {
        int i = 0;
        while (true) {
            byte[] bArr = this.a;
            if (i >= bArr.length) {
                this.b = 0;
                this.d.getClass();
                return;
            } else {
                bArr[i] = 0;
                i++;
            }
        }
    }
}
