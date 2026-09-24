package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class my0 implements b55 {
    public byte[] a;
    public byte[] b;
    public int c;
    public ly0 d;
    public int e;

    @Override // defpackage.b55
    public final void a(byte b) {
        int i = this.c;
        byte[] bArr = this.b;
        if (i == bArr.length) {
            this.d.j(bArr, this.a, 0, 0);
            this.c = 0;
        }
        int i2 = this.c;
        this.c = i2 + 1;
        bArr[i2] = b;
    }

    @Override // defpackage.b55
    public final int b() {
        return this.e;
    }

    @Override // defpackage.b55
    public final void c(z61 z61Var) {
        ly0 ly0Var = this.d;
        int i = 0;
        while (true) {
            byte[] bArr = this.b;
            if (i >= bArr.length) {
                this.c = 0;
                ly0Var.reset();
                ly0Var.a(true, z61Var);
                return;
            }
            bArr[i] = 0;
            i++;
        }
    }

    @Override // defpackage.b55
    public final int doFinal(byte[] bArr, int i) {
        int i2 = this.e;
        byte[] bArr2 = this.a;
        byte[] bArr3 = this.b;
        ly0 ly0Var = this.d;
        int blockSize = ly0Var.e.getBlockSize();
        while (true) {
            int i3 = this.c;
            if (i3 >= blockSize) {
                break;
            }
            bArr3[i3] = 0;
            this.c = i3 + 1;
        }
        ly0Var.j(bArr3, bArr2, 0, 0);
        System.arraycopy(bArr2, 0, bArr, 0, i2);
        for (int i4 = 0; i4 < bArr3.length; i4++) {
            bArr3[i4] = 0;
        }
        this.c = 0;
        ly0Var.reset();
        return i2;
    }

    @Override // defpackage.b55
    public final void update(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.a;
        byte[] bArr3 = this.b;
        ly0 ly0Var = this.d;
        if (i2 < 0) {
            c6.f("Can't have a negative input length!");
            return;
        }
        int blockSize = ly0Var.e.getBlockSize();
        int i3 = this.c;
        int i4 = blockSize - i3;
        if (i2 > i4) {
            System.arraycopy(bArr, i, bArr3, i3, i4);
            ly0Var.j(bArr3, bArr2, 0, 0);
            this.c = 0;
            i2 -= i4;
            i += i4;
            while (i2 > blockSize) {
                ly0Var.j(bArr, bArr2, i, 0);
                i2 -= blockSize;
                i += blockSize;
            }
        }
        System.arraycopy(bArr, i, bArr3, this.c, i2);
        this.c += i2;
    }
}
