package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x69 extends w69 {
    public final byte[] d;

    public x69(byte[] bArr) {
        bArr.getClass();
        this.d = bArr;
    }

    @Override // defpackage.t69
    public final byte c(int i) {
        return this.d[i];
    }

    @Override // defpackage.t69
    public final int d() {
        return this.d.length;
    }

    @Override // defpackage.t69
    public final w69 f(int i, int i2) {
        byte[] bArr = this.d;
        int iE = t69.e(0, i2, bArr.length);
        return iE == 0 ? t69.b : new v69(bArr, 0, iE);
    }

    @Override // defpackage.t69
    public final void i(byte[] bArr, int i) {
        System.arraycopy(this.d, 0, bArr, 0, i);
    }

    @Override // defpackage.t69
    public final boolean k(t69 t69Var) {
        boolean z = t69Var instanceof x69;
        byte[] bArr = this.d;
        if (z) {
            return Arrays.equals(bArr, ((x69) t69Var).d);
        }
        if (!(t69Var instanceof v69)) {
            return t69Var.k(this);
        }
        int length = bArr.length;
        if (length > t69Var.d()) {
            l0.c(length, bArr.length);
            return false;
        }
        if (length > t69Var.d()) {
            c6.f(dj7.i("Ran off end of other: 0, ", length, t69Var.d(), ", "));
            return false;
        }
        if (t69Var instanceof x69) {
            return t69.l(bArr, 0, 0, ((x69) t69Var).d, length);
        }
        v69 v69Var = (v69) t69Var;
        return t69.l(bArr, 0, v69Var.e, v69Var.d, length);
    }

    @Override // defpackage.t69
    public final void p(c79 c79Var) {
        byte[] bArr = this.d;
        c79Var.i(bArr, 0, bArr.length);
    }

    @Override // defpackage.t69
    public final int s(int i, int i2) {
        return l79.a(i, this.d, 0, i2);
    }

    @Override // defpackage.t69
    public final y69 t() {
        byte[] bArr = this.d;
        return gk1.E(bArr, 0, bArr.length);
    }
}
