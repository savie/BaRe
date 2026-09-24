package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class xy0 implements b55 {
    public byte[] a;
    public byte[] b;
    public byte[] c;
    public byte[] d;
    public int e;
    public ly0 f;
    public int g;
    public byte[] h;
    public byte[] i;

    @Override // defpackage.b55
    public final void a(byte b) {
        int i = this.e;
        byte[] bArr = this.d;
        if (i == bArr.length) {
            this.f.j(bArr, this.c, 0, 0);
            this.e = 0;
        }
        int i2 = this.e;
        this.e = i2 + 1;
        bArr[i2] = b;
    }

    @Override // defpackage.b55
    public final int b() {
        return this.g;
    }

    @Override // defpackage.b55
    public final void c(z61 z61Var) {
        ly0 ly0Var = this.f;
        ly0Var.a(true, z61Var);
        byte[] bArr = this.b;
        byte[] bArr2 = new byte[bArr.length];
        ly0Var.j(bArr, bArr2, 0, 0);
        byte[] bArrD = d(bArr2);
        this.h = bArrD;
        this.i = d(bArrD);
        int i = 0;
        while (true) {
            byte[] bArr3 = this.d;
            if (i >= bArr3.length) {
                this.e = 0;
                ly0Var.reset();
                return;
            } else {
                bArr3[i] = 0;
                i++;
            }
        }
    }

    public final byte[] d(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int length = bArr.length;
        int i = 0;
        while (true) {
            length--;
            if (length < 0) {
                int i2 = (-i) & 255;
                int length2 = bArr.length - 3;
                byte b = bArr2[length2];
                byte[] bArr3 = this.a;
                bArr2[length2] = (byte) (b ^ (bArr3[1] & i2));
                int length3 = bArr.length - 2;
                bArr2[length3] = (byte) ((bArr3[2] & i2) ^ bArr2[length3]);
                int length4 = bArr.length - 1;
                bArr2[length4] = (byte) ((bArr3[3] & i2) ^ bArr2[length4]);
                return bArr2;
            }
            int i3 = bArr[length] & 255;
            bArr2[length] = (byte) (i | (i3 << 1));
            i = (i3 >>> 7) & 1;
        }
    }

    @Override // defpackage.b55
    public final int doFinal(byte[] bArr, int i) {
        byte[] bArr2;
        int i2 = this.g;
        byte[] bArr3 = this.c;
        byte[] bArr4 = this.d;
        ly0 ly0Var = this.f;
        int blockSize = ly0Var.e.getBlockSize();
        int i3 = this.e;
        if (i3 == blockSize) {
            bArr2 = this.h;
        } else {
            int length = bArr4.length;
            bArr4[i3] = -128;
            while (true) {
                i3++;
                if (i3 >= bArr4.length) {
                    break;
                }
                bArr4[i3] = 0;
            }
            bArr2 = this.i;
        }
        for (int i4 = 0; i4 < bArr3.length; i4++) {
            bArr4[i4] = (byte) (bArr4[i4] ^ bArr2[i4]);
        }
        ly0Var.j(bArr4, bArr3, 0, 0);
        System.arraycopy(bArr3, 0, bArr, 0, i2);
        for (int i5 = 0; i5 < bArr4.length; i5++) {
            bArr4[i5] = 0;
        }
        this.e = 0;
        ly0Var.reset();
        return i2;
    }

    @Override // defpackage.b55
    public final void update(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.c;
        byte[] bArr3 = this.d;
        ly0 ly0Var = this.f;
        if (i2 < 0) {
            c6.f("Can't have a negative input length!");
            return;
        }
        int blockSize = ly0Var.e.getBlockSize();
        int i3 = this.e;
        int i4 = blockSize - i3;
        if (i2 > i4) {
            System.arraycopy(bArr, i, bArr3, i3, i4);
            ly0Var.j(bArr3, bArr2, 0, 0);
            this.e = 0;
            i2 -= i4;
            i += i4;
            while (i2 > blockSize) {
                ly0Var.j(bArr, bArr2, i, 0);
                i2 -= blockSize;
                i += blockSize;
            }
        }
        System.arraycopy(bArr, i, bArr3, this.e, i2);
        this.e += i2;
    }
}
