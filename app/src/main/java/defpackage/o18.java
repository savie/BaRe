package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class o18 extends vz7 {
    public final String b;
    public final uq4 c;
    public final q08 d;

    public o18(uq4 uq4Var, q08 q08Var) {
        this.b = q08Var.empty();
        this.c = uq4Var;
        this.d = q08Var;
    }

    @Override // defpackage.uq4
    public final String a() {
        return this.c.a();
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final vb8 b() {
        return this.c.b();
    }

    @Override // defpackage.uq4
    public final Annotation c() {
        return this.c.c();
    }

    @Override // defpackage.uq4
    public final String d() {
        return this.c.d();
    }

    @Override // defpackage.uq4
    public final xd2 e() {
        return null;
    }

    @Override // defpackage.uq4
    public final s03 f() {
        return this.c.f();
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String[] g() {
        return this.c.g();
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final Object getKey() {
        return this.c.getKey();
    }

    @Override // defpackage.uq4
    public final String getName() {
        return this.c.getName();
    }

    @Override // defpackage.uq4
    public final Class getType() {
        return this.c.getType();
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean i() {
        return true;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean isInline() {
        return this.c.isInline();
    }

    @Override // defpackage.uq4
    public final boolean isRequired() {
        return this.c.isRequired();
    }

    @Override // defpackage.uq4
    public final au1 k() {
        return this.c.k();
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String[] m() {
        return this.c.m();
    }

    @Override // defpackage.uq4
    public final Object o(ai5 ai5Var) {
        return this.b;
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) throws sf5 {
        uq4 uq4Var = this.c;
        au1 au1VarK = uq4Var.k();
        if (uq4Var.i()) {
            return new n18(ai5Var, au1VarK);
        }
        throw new sf5("Cannot use %s to represent %s", au1VarK, uq4Var);
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String r() {
        return this.c.r();
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return this.c.t();
    }

    public final String toString() {
        return String.format("%s %s", this.d, this.c);
    }
}
