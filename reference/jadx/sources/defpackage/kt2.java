package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class kt2 extends vz7 {
    public final ny1 b;
    public s03 c;
    public final au1 d;
    public final ht2 e;

    public kt2(au1 au1Var, jt2 jt2Var, gt2 gt2Var, vq3 vq3Var) throws Exception {
        this.e = new ht2(au1Var, gt2Var, vq3Var);
        this.b = new ny1(au1Var, jt2Var, vq3Var);
        this.d = au1Var;
    }

    @Override // defpackage.uq4
    public final String a() {
        return this.e.a();
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final vb8 b() {
        return this.e.b();
    }

    @Override // defpackage.uq4
    public final Annotation c() {
        return this.e.d;
    }

    @Override // defpackage.uq4
    public final String d() {
        return this.e.g;
    }

    @Override // defpackage.uq4
    public final xd2 e() {
        return this.e.b;
    }

    @Override // defpackage.uq4
    public final s03 f() {
        if (this.c == null) {
            this.c = this.e.f();
        }
        return this.c;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String[] g() {
        return this.b.b();
    }

    @Override // defpackage.uq4
    public final String getName() {
        return this.e.getName();
    }

    @Override // defpackage.uq4
    public final Class getType() {
        return this.e.k;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean i() {
        this.e.getClass();
        return true;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean isInline() {
        return this.e.n;
    }

    @Override // defpackage.uq4
    public final boolean isRequired() {
        return this.e.m;
    }

    @Override // defpackage.uq4
    public final au1 k() {
        return this.d;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final vb8 l(Class cls) {
        return this.d;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String[] m() {
        return this.b.c();
    }

    @Override // defpackage.uq4
    public final Object o(ai5 ai5Var) {
        return this.e.o(ai5Var);
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean p() {
        ((q14) this.b.c).getClass();
        return false;
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) throws wt1 {
        s03 s03VarF = f();
        au1 au1Var = this.d;
        if (au1Var != null) {
            return new dp1(ai5Var, this.b, s03VarF, au1Var);
        }
        throw new wt1("Union %s was not declared on a field or method", this.e);
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String r() {
        return this.e.r();
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return this.e.o;
    }

    public final String toString() {
        return this.e.c.toString();
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final uq4 n(Class cls) {
        return this;
    }
}
