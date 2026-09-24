package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class px8 extends uv6 implements wv2 {
    public final kx8 c;
    public final int d;
    public final byte[] e;
    public final byte[] f;

    /* JADX WARN: Illegal instructions before constructor call */
    public px8(e38 e38Var) {
        kx8 kx8Var = (kx8) e38Var.b;
        rx8 rx8Var = kx8Var.b;
        super(rx8Var.e, false);
        this.c = kx8Var;
        int i = rx8Var.f;
        byte[] bArr = (byte[]) e38Var.e;
        if (bArr != null) {
            if (bArr.length == i + i) {
                this.d = 0;
                this.e = jd4.o(bArr, 0, i);
                this.f = jd4.o(bArr, i, i);
                return;
            }
            int i2 = i + 4;
            if (bArr.length != i2 + i) {
                c6.f("public key has wrong size");
                throw null;
            }
            this.d = xx3.a(bArr, 0);
            this.e = jd4.o(bArr, 4, i);
            this.f = jd4.o(bArr, i2, i);
            return;
        }
        gg2 gg2Var = kx8Var.a;
        if (gg2Var != null) {
            this.d = gg2Var.a;
        } else {
            this.d = 0;
        }
        byte[] bArr2 = (byte[]) e38Var.c;
        if (bArr2 == null) {
            this.e = new byte[i];
        } else {
            if (bArr2.length != i) {
                c6.f("length of root must be equal to length of digest");
                throw null;
            }
            this.e = bArr2;
        }
        byte[] bArr3 = (byte[]) e38Var.d;
        if (bArr3 == null) {
            this.f = new byte[i];
        } else if (bArr3.length == i) {
            this.f = bArr3;
        } else {
            c6.f("length of publicSeed must be equal to length of digest");
            throw null;
        }
    }

    public final byte[] a() {
        byte[] bArr;
        int i = this.c.b.f;
        int i2 = 0;
        int i3 = this.d;
        if (i3 != 0) {
            bArr = new byte[i + 4 + i];
            xx3.n(bArr, i3, 0);
            i2 = 4;
        } else {
            bArr = new byte[i + i];
        }
        jd4.i(i2, bArr, this.e);
        jd4.i(i2 + i, bArr, this.f);
        return bArr;
    }

    @Override // defpackage.wv2
    public final byte[] getEncoded() {
        return a();
    }
}
