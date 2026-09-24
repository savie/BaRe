package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ht2 extends vz7 {
    public final fu b;
    public final bs2 c;
    public final gt2 d;
    public s03 e;
    public final vq3 f;
    public final String g;
    public String h;
    public String i;
    public String j;
    public final Class k;
    public Class l;
    public final boolean m;
    public final boolean n;
    public final boolean o;

    public ht2(au1 au1Var, gt2 gt2Var, vq3 vq3Var) {
        this.c = new bs2(au1Var, this, vq3Var);
        this.b = new fu(au1Var);
        this.m = gt2Var.required();
        this.k = au1Var.getType();
        this.g = gt2Var.name();
        this.n = gt2Var.inline();
        this.h = gt2Var.entry();
        this.o = gt2Var.data();
        this.l = gt2Var.type();
        this.f = vq3Var;
        this.d = gt2Var;
    }

    @Override // defpackage.uq4
    public final String a() {
        if (this.j == null) {
            this.j = f().b(getName());
        }
        return this.j;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final vb8 b() throws wt1 {
        au1 au1Var = (au1) this.c.c;
        if (this.l == Void.TYPE) {
            this.l = au1Var.b();
        }
        Class cls = this.l;
        if (cls != null) {
            return new ln5(cls, 4);
        }
        throw new wt1("Unable to determine generic type for %s", au1Var);
    }

    @Override // defpackage.uq4
    public final Annotation c() {
        return this.d;
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
        if (this.e == null) {
            this.e = this.c.d();
        }
        return this.e;
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
        return this.k;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean isInline() {
        return this.n;
    }

    @Override // defpackage.uq4
    public final boolean isRequired() {
        return this.m;
    }

    @Override // defpackage.uq4
    public final au1 k() {
        return (au1) this.c.c;
    }

    @Override // defpackage.uq4
    public final Object o(ai5 ai5Var) {
        xk1 xk1Var = new xk1(ai5Var, new ln5(this.k, 4), null);
        if (this.d.empty()) {
            return null;
        }
        return xk1Var.h();
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) throws wt1 {
        String strR = r();
        boolean zInline = this.d.inline();
        bs2 bs2Var = this.c;
        if (zInline) {
            vb8 vb8VarB = b();
            au1 au1Var = (au1) bs2Var.c;
            ai5Var.getClass();
            ln5 ln5Var = (ln5) vb8VarB;
            return !((x44) ai5Var.d).e((Class) ln5Var.b) ? new ap1(ai5Var, au1Var, ln5Var, strR) : new s56(ai5Var, au1Var, ln5Var, strR);
        }
        vb8 vb8VarB2 = b();
        au1 au1Var2 = (au1) bs2Var.c;
        ai5Var.getClass();
        ln5 ln5Var2 = (ln5) vb8VarB2;
        return !((x44) ai5Var.d).e((Class) ln5Var2.b) ? new cp1(ai5Var, au1Var2, ln5Var2, strR) : new ju7(ai5Var, au1Var2, ln5Var2, strR);
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String r() {
        cz4 cz4Var = this.f.a;
        String str = this.h;
        bs2 bs2Var = this.c;
        bs2Var.getClass();
        if (bs2.f(str)) {
            this.h = bs2Var.c();
        }
        return this.h;
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return this.o;
    }

    public final String toString() {
        return this.c.toString();
    }
}
