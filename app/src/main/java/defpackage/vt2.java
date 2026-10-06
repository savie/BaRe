package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class vt2 extends vz7 {
    public final ny1 b;
    public final ut2 c;
    public s03 d;
    public final au1 e;
    public final ft2 f;

    public vt2(au1 au1Var, ut2 ut2Var, at2 at2Var, vq3 vq3Var) throws Exception {
        this.b = new ny1(au1Var, ut2Var, vq3Var);
        this.f = new ft2(au1Var, at2Var, vq3Var);
        this.e = au1Var;
        this.c = ut2Var;
    }

    @Override // defpackage.uq4
    public final String a() {
        return this.f.a();
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final vb8 b() {
        this.f.getClass();
        return null;
    }

    @Override // defpackage.uq4
    public final Annotation c() {
        return this.f.e;
    }

    @Override // defpackage.uq4
    public final String d() {
        return this.f.g;
    }

    @Override // defpackage.uq4
    public final xd2 e() {
        return this.f.b;
    }

    @Override // defpackage.uq4
    public final s03 f() {
        if (this.d == null) {
            this.d = this.f.f();
        }
        return this.d;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String[] g() {
        return this.b.b();
    }

    @Override // defpackage.uq4
    public final String getName() {
        return this.f.getName();
    }

    @Override // defpackage.uq4
    public final Class getType() {
        return this.f.getType();
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean i() {
        this.f.getClass();
        return false;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean isInline() {
        this.f.getClass();
        return false;
    }

    @Override // defpackage.uq4
    public final boolean isRequired() {
        return this.f.l;
    }

    @Override // defpackage.uq4
    public final au1 k() {
        return this.e;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final vb8 l(Class cls) throws wt1 {
        ny1 ny1Var = this.b;
        uq4 uq4VarD = ((q14) ny1Var.c).d(cls);
        au1 au1Var = this.e;
        if (uq4VarD != null) {
            return ((q14) ny1Var.c).containsKey(cls) ? new c00(au1Var, cls, 10, false) : au1Var;
        }
        throw new wt1("No type matches %s in %s for %s", cls, this.c, au1Var);
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String[] m() {
        return this.b.c();
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final uq4 n(Class cls) throws wt1 {
        ny1 ny1Var = this.b;
        if (((q14) ny1Var.c).d(cls) != null) {
            return ((q14) ny1Var.c).d(cls);
        }
        throw new wt1("No type matches %s in %s for %s", cls, this.c, this.e);
    }

    @Override // defpackage.uq4
    public final Object o(ai5 ai5Var) {
        this.f.getClass();
        return null;
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) throws wt1 {
        s03 s03VarF = f();
        au1 au1Var = this.e;
        if (au1Var != null) {
            return new fp1(ai5Var, this.b, s03VarF, au1Var);
        }
        throw new wt1("Union %s was not declared on a field or method", this.f);
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String r() {
        this.f.getClass();
        return null;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean s() {
        return true;
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return this.f.m;
    }

    public final String toString() {
        return this.f.c.toString();
    }
}
