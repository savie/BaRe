package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fh9 extends dh9 {
    public final byte[] c;

    public fh9(byte[] bArr) {
        bArr.getClass();
        this.c = bArr;
    }

    @Override // defpackage.dh9
    public final byte c(int i) {
        return this.c[i];
    }

    @Override // defpackage.dh9
    public final byte d(int i) {
        return this.c[i];
    }

    @Override // defpackage.dh9
    public final int e(int i, int i2) {
        return nj9.a(i, this.c, 0, i2);
    }

    @Override // defpackage.dh9
    public final int f() {
        return this.c.length;
    }

    @Override // defpackage.dh9
    public final dh9 g(int i, int i2) {
        byte[] bArr = this.c;
        int iL = dh9.l(0, i2, bArr.length);
        return iL == 0 ? dh9.b : new yg9(bArr, 0, iL);
    }

    @Override // defpackage.dh9
    public final void i(nh9 nh9Var) {
        byte[] bArr = this.c;
        nh9Var.b(bArr, 0, bArr.length);
    }

    @Override // defpackage.dh9
    public final boolean k(dh9 dh9Var) {
        boolean z = dh9Var instanceof fh9;
        byte[] bArr = this.c;
        if (z) {
            return Arrays.equals(bArr, ((fh9) dh9Var).c);
        }
        boolean z2 = dh9Var instanceof yg9;
        if (!z2) {
            return dh9Var.k(this);
        }
        yg9 yg9Var = (yg9) dh9Var;
        int i = yg9Var.e;
        int length = bArr.length;
        if (length > i) {
            throw new IllegalArgumentException("Length too large: " + length + length);
        }
        if (length > i) {
            c6.f(dj7.i("Ran off end of other: 0, ", length, i, ", "));
            return false;
        }
        if (z) {
            return dh9.p(bArr, 0, 0, ((fh9) dh9Var).c, length);
        }
        if (!z2) {
            return dh9Var.g(0, length).equals(g(0, length));
        }
        return dh9.p(bArr, 0, yg9Var.d, yg9Var.c, length);
    }
}
