package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class vx8 extends uv6 implements wv2 {
    public final rx8 c;
    public final int d;
    public final byte[] e;
    public final byte[] f;

    /* JADX WARN: Illegal instructions before constructor call */
    public vx8(xt1 xt1Var) {
        rx8 rx8Var = (rx8) xt1Var.a;
        super(rx8Var.e, false);
        this.c = rx8Var;
        int i = rx8Var.f;
        byte[] bArr = (byte[]) xt1Var.d;
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
        hg2 hg2Var = rx8Var.a;
        if (hg2Var != null) {
            this.d = hg2Var.a;
        } else {
            this.d = 0;
        }
        byte[] bArr2 = (byte[]) xt1Var.b;
        if (bArr2 == null) {
            this.e = new byte[i];
        } else {
            if (bArr2.length != i) {
                c6.f("length of root must be equal to length of digest");
                throw null;
            }
            this.e = bArr2;
        }
        byte[] bArr3 = (byte[]) xt1Var.c;
        if (bArr3 == null) {
            this.f = new byte[i];
        } else if (bArr3.length == i) {
            this.f = bArr3;
        } else {
            c6.f("length of publicSeed must be equal to length of digest");
            throw null;
        }
    }

    @Override // defpackage.wv2
    public final byte[] getEncoded() {
        byte[] bArr;
        int i = this.c.f;
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
}
