package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hj8 implements uq4 {
    public final Object a;
    public final uq4 b;

    public hj8(uq4 uq4Var, Object obj) {
        this.b = uq4Var;
        this.a = obj;
    }

    @Override // defpackage.uq4
    public final String a() {
        return this.b.a();
    }

    @Override // defpackage.uq4
    public final vb8 b() {
        return this.b.b();
    }

    @Override // defpackage.uq4
    public final Annotation c() {
        return this.b.c();
    }

    @Override // defpackage.uq4
    public final String d() {
        return this.b.d();
    }

    @Override // defpackage.uq4
    public final xd2 e() {
        return this.b.e();
    }

    @Override // defpackage.uq4
    public final s03 f() {
        return this.b.f();
    }

    @Override // defpackage.uq4
    public final String[] g() {
        return this.b.g();
    }

    @Override // defpackage.uq4
    public final Object getKey() {
        return this.b.getKey();
    }

    @Override // defpackage.uq4
    public final String getName() {
        return this.b.getName();
    }

    @Override // defpackage.uq4
    public final Class getType() {
        return this.b.getType();
    }

    @Override // defpackage.uq4
    public final boolean h() {
        return this.b.h();
    }

    @Override // defpackage.uq4
    public final boolean i() {
        return this.b.i();
    }

    @Override // defpackage.uq4
    public final boolean isInline() {
        return this.b.isInline();
    }

    @Override // defpackage.uq4
    public final boolean isRequired() {
        return this.b.isRequired();
    }

    @Override // defpackage.uq4
    public final boolean j() {
        return this.b.j();
    }

    @Override // defpackage.uq4
    public final au1 k() {
        return this.b.k();
    }

    @Override // defpackage.uq4
    public final vb8 l(Class cls) {
        return this.b.l(cls);
    }

    @Override // defpackage.uq4
    public final String[] m() {
        return this.b.m();
    }

    @Override // defpackage.uq4
    public final Object o(ai5 ai5Var) {
        return this.b.o(ai5Var);
    }

    @Override // defpackage.uq4
    public final boolean p() {
        return this.b.p();
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) {
        uq4 uq4Var = this.b;
        bw1 bw1VarQ = uq4Var.q(ai5Var);
        return bw1VarQ instanceof gj8 ? bw1VarQ : new gj8(bw1VarQ, uq4Var, this.a);
    }

    @Override // defpackage.uq4
    public final String r() {
        return this.b.r();
    }

    @Override // defpackage.uq4
    public final boolean s() {
        return this.b.s();
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return this.b.t();
    }

    public final String toString() {
        return this.b.toString();
    }

    @Override // defpackage.uq4
    public final uq4 n(Class cls) {
        return this;
    }
}
