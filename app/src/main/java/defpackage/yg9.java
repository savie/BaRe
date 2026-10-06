package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yg9 extends dh9 {
    public final byte[] c;
    public final int d;
    public final int e;

    public yg9(byte[] bArr, int i, int i2) {
        dh9.l(i, i + i2, bArr.length);
        this.c = bArr;
        this.d = i;
        this.e = i2;
    }

    @Override // defpackage.dh9
    public final byte c(int i) {
        int i2 = this.e;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.c[this.d + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(fz5.j(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(dj7.i("Index > length: ", i, i2, ", "));
    }

    @Override // defpackage.dh9
    public final byte d(int i) {
        return this.c[this.d + i];
    }

    @Override // defpackage.dh9
    public final int e(int i, int i2) {
        return nj9.a(i, this.c, this.d, i2);
    }

    @Override // defpackage.dh9
    public final int f() {
        return this.e;
    }

    @Override // defpackage.dh9
    public final dh9 g(int i, int i2) {
        int iL = dh9.l(i, i2, this.e);
        if (iL == 0) {
            return dh9.b;
        }
        return new yg9(this.c, this.d + i, iL);
    }

    @Override // defpackage.dh9
    public final void i(nh9 nh9Var) {
        nh9Var.b(this.c, this.d, this.e);
    }

    @Override // defpackage.dh9
    public final boolean k(dh9 dh9Var) {
        boolean z = dh9Var instanceof fh9;
        if (!z && !(dh9Var instanceof yg9)) {
            return dh9Var.k(this);
        }
        int iF = dh9Var.f();
        int i = this.e;
        if (i > iF) {
            throw new IllegalArgumentException("Length too large: " + i + i);
        }
        if (i > dh9Var.f()) {
            c6.f(dj7.i("Ran off end of other: 0, ", i, dh9Var.f(), ", "));
            return false;
        }
        byte[] bArr = this.c;
        int i2 = this.d;
        if (z) {
            return dh9.p(bArr, i2, 0, ((fh9) dh9Var).c, i);
        }
        if (!(dh9Var instanceof yg9)) {
            return dh9Var.g(0, i).equals(g(i2, i + i2));
        }
        yg9 yg9Var = (yg9) dh9Var;
        return dh9.p(bArr, i2, yg9Var.d, yg9Var.c, i);
    }
}
