package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u26 implements nw6 {
    public final nw6 a;
    public final long b;
    public final /* synthetic */ b36 c;

    public u26(b36 b36Var, nw6 nw6Var) {
        nw6Var.getClass();
        this.c = b36Var;
        this.a = nw6Var;
        this.b = xh8.h();
    }

    @Override // defpackage.nw6
    public final void C(int i, String str) {
        str.getClass();
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            this.a.C(i, str);
        } else {
            ly8.P(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // defpackage.nw6
    public final String R(int i) {
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            return this.a.R(i);
        }
        ly8.P(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws Exception {
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            this.a.close();
        } else {
            ly8.P(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // defpackage.nw6
    public final void e(int i, long j) {
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            this.a.e(i, j);
        } else {
            ly8.P(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // defpackage.nw6
    public final void f(int i) {
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            this.a.f(i);
        } else {
            ly8.P(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // defpackage.nw6
    public final int getColumnCount() {
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            return this.a.getColumnCount();
        }
        ly8.P(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // defpackage.nw6
    public final String getColumnName(int i) {
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            return this.a.getColumnName(i);
        }
        ly8.P(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // defpackage.nw6
    public final long getLong(int i) {
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            return this.a.getLong(i);
        }
        ly8.P(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // defpackage.nw6
    public final void i() {
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            this.a.i();
        } else {
            ly8.P(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // defpackage.nw6
    public final boolean i0() {
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            return this.a.i0();
        }
        ly8.P(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // defpackage.nw6
    public final boolean isNull(int i) {
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            return this.a.isNull(i);
        }
        ly8.P(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // defpackage.nw6
    public final void reset() {
        if (this.c.e) {
            ly8.P(21, "Statement is recycled");
            throw null;
        }
        if (this.b == xh8.h()) {
            this.a.reset();
        } else {
            ly8.P(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }
}
