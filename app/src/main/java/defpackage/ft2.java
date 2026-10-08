package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ft2 extends vz7 {
    public final fu b;
    public final bs2 c;
    public s03 d;
    public final at2 e;
    public final vq3 f;
    public final String g;
    public String h;
    public String i;
    public final Class j;
    public final Class k;
    public final boolean l;
    public final boolean m;

    public ft2(au1 au1Var, at2 at2Var, vq3 vq3Var) {
        this.c = new bs2(au1Var, this, vq3Var);
        this.b = new fu(au1Var);
        this.l = at2Var.required();
        this.k = au1Var.getType();
        this.g = at2Var.name();
        this.j = at2Var.type();
        this.m = at2Var.data();
        this.f = vq3Var;
        this.e = at2Var;
    }

    @Override // defpackage.uq4
    public final String a() {
        if (this.h == null) {
            this.h = f().b(getName());
        }
        return this.h;
    }

    @Override // defpackage.uq4
    public final Annotation c() {
        return this.e;
    }

    @Override // defpackage.uq4
    public final String d() {
        return this.g;
    }

    @Override // defpackage.uq4
    public final xd2 e() {
        return this.b;
    }

    @Override // defpackage.uq4
    public final s03 f() {
        if (this.d == null) {
            this.d = this.c.d();
        }
        return this.d;
    }

    @Override // defpackage.uq4
    public final String getName() {
        if (this.i == null) {
            cz4 cz4Var = this.f.a;
            this.i = this.c.e();
        }
        return this.i;
    }

    @Override // defpackage.uq4
    public final Class getType() {
        Class cls = Void.TYPE;
        Class cls2 = this.j;
        return cls2 == cls ? this.k : cls2;
    }

    @Override // defpackage.uq4
    public final boolean isRequired() {
        return this.l;
    }

    @Override // defpackage.uq4
    public final au1 k() {
        return (au1) this.c.c;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final vb8 l(Class cls) {
        au1 au1Var = (au1) this.c.c;
        Class cls2 = Void.TYPE;
        Class cls3 = this.j;
        return cls3 == cls2 ? au1Var : new c00(au1Var, cls3, 10, false);
    }

    @Override // defpackage.uq4
    public final Object o(ai5 ai5Var) {
        return null;
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) {
        au1 au1Var = (au1) this.c.c;
        ai5Var.getClass();
        if (((x44) ai5Var.d).e(au1Var.getType())) {
            return new cy6(ai5Var, au1Var, null);
        }
        Class cls = Void.TYPE;
        Class cls2 = this.j;
        return cls2 == cls ? new yo1(ai5Var, au1Var, null) : new yo1(ai5Var, au1Var, cls2);
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return this.m;
    }

    public final String toString() {
        return this.c.toString();
    }
}
