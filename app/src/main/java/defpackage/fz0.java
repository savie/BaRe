package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class fz0 implements uq4 {
    public final Annotation a;
    public final s03 b;
    public final xd2 c;
    public final au1 d;
    public final String[] e;
    public final String[] f;
    public final Class g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final uq4 l;
    public final Object m;
    public final vb8 n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public final boolean v;

    public fz0(uq4 uq4Var) throws Exception {
        this.a = uq4Var.c();
        this.b = uq4Var.f();
        this.c = uq4Var.e();
        this.r = uq4Var.h();
        this.t = uq4Var.i();
        this.d = uq4Var.k();
        this.n = uq4Var.b();
        this.s = uq4Var.isRequired();
        this.j = uq4Var.d();
        this.v = uq4Var.p();
        this.u = uq4Var.isInline();
        this.q = uq4Var.s();
        this.e = uq4Var.g();
        this.f = uq4Var.m();
        this.i = uq4Var.a();
        this.g = uq4Var.getType();
        this.k = uq4Var.getName();
        this.h = uq4Var.r();
        this.o = uq4Var.t();
        this.p = uq4Var.j();
        this.m = uq4Var.getKey();
        this.l = uq4Var;
    }

    @Override // defpackage.uq4
    public final String a() {
        return this.i;
    }

    @Override // defpackage.uq4
    public final vb8 b() {
        return this.n;
    }

    @Override // defpackage.uq4
    public final Annotation c() {
        return this.a;
    }

    @Override // defpackage.uq4
    public final String d() {
        return this.j;
    }

    @Override // defpackage.uq4
    public final xd2 e() {
        return this.c;
    }

    @Override // defpackage.uq4
    public final s03 f() {
        return this.b;
    }

    @Override // defpackage.uq4
    public final String[] g() {
        return this.e;
    }

    @Override // defpackage.uq4
    public final Object getKey() {
        return this.m;
    }

    @Override // defpackage.uq4
    public final String getName() {
        return this.k;
    }

    @Override // defpackage.uq4
    public final Class getType() {
        return this.g;
    }

    @Override // defpackage.uq4
    public final boolean h() {
        return this.r;
    }

    @Override // defpackage.uq4
    public final boolean i() {
        return this.t;
    }

    @Override // defpackage.uq4
    public final boolean isInline() {
        return this.u;
    }

    @Override // defpackage.uq4
    public final boolean isRequired() {
        return this.s;
    }

    @Override // defpackage.uq4
    public final boolean j() {
        return this.p;
    }

    @Override // defpackage.uq4
    public final au1 k() {
        return this.d;
    }

    @Override // defpackage.uq4
    public final vb8 l(Class cls) {
        return this.l.l(cls);
    }

    @Override // defpackage.uq4
    public final String[] m() {
        return this.f;
    }

    @Override // defpackage.uq4
    public final uq4 n(Class cls) {
        return this.l.n(cls);
    }

    @Override // defpackage.uq4
    public final Object o(ai5 ai5Var) {
        return this.l.o(ai5Var);
    }

    @Override // defpackage.uq4
    public final boolean p() {
        return this.v;
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) {
        return this.l.q(ai5Var);
    }

    @Override // defpackage.uq4
    public final String r() {
        return this.h;
    }

    @Override // defpackage.uq4
    public final boolean s() {
        return this.q;
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return this.o;
    }

    public final String toString() {
        return this.l.toString();
    }
}
