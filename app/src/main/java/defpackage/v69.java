package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v69 extends w69 {
    public final byte[] d;
    public final int e;
    public final int f;

    public v69(byte[] bArr, int i, int i2) {
        t69.e(i, i + i2, bArr.length);
        this.d = bArr;
        this.e = i;
        this.f = i2;
    }

    @Override // defpackage.t69
    public final byte c(int i) {
        return this.d[this.e + i];
    }

    @Override // defpackage.t69
    public final int d() {
        return this.f;
    }

    @Override // defpackage.t69
    public final w69 f(int i, int i2) {
        int iE = t69.e(i, i2, this.f);
        if (iE == 0) {
            return t69.b;
        }
        return new v69(this.d, this.e + i, iE);
    }

    @Override // defpackage.t69
    public final void i(byte[] bArr, int i) {
        System.arraycopy(this.d, this.e, bArr, 0, i);
    }

    @Override // defpackage.t69
    public final boolean k(t69 t69Var) {
        if (!(t69Var instanceof x69) && !(t69Var instanceof v69)) {
            return t69Var.k(this);
        }
        int iD = t69Var.d();
        int i = this.f;
        if (i > iD) {
            throw new IllegalArgumentException("Length too large: " + i + i);
        }
        if (i > t69Var.d()) {
            c6.f(dj7.i("Ran off end of other: 0, ", i, t69Var.d(), ", "));
            return false;
        }
        boolean z = t69Var instanceof x69;
        byte[] bArr = this.d;
        int i2 = this.e;
        if (z) {
            return t69.l(bArr, i2, 0, ((x69) t69Var).d, i);
        }
        if (!(t69Var instanceof v69)) {
            return t69Var.f(0, i).equals(f(i2, i + i2));
        }
        v69 v69Var = (v69) t69Var;
        return t69.l(bArr, i2, v69Var.e, v69Var.d, i);
    }

    @Override // defpackage.t69
    public final void p(c79 c79Var) {
        c79Var.i(this.d, this.e, this.f);
    }

    @Override // defpackage.t69
    public final int s(int i, int i2) {
        return l79.a(i, this.d, this.e, i2);
    }

    @Override // defpackage.t69
    public final y69 t() {
        return gk1.E(this.d, this.e, this.f);
    }
}
