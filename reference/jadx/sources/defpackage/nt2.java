package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class nt2 extends vz7 {
    public final fu b;
    public final bs2 c;
    public final mt2 d;
    public s03 e;
    public final vq3 f;
    public final ix2 g;
    public final String h;
    public String i;
    public String j;
    public String k;
    public Class[] l;
    public final Class m;
    public final boolean n;
    public final boolean o;
    public final boolean p;

    public nt2(au1 au1Var, mt2 mt2Var, vq3 vq3Var) {
        this.c = new bs2(au1Var, this, vq3Var);
        this.b = new fu(au1Var);
        ix2 ix2Var = new ix2();
        ix2Var.h = mt2Var.attribute();
        ix2Var.e = mt2Var.entry();
        ix2Var.f = mt2Var.value();
        ix2Var.g = mt2Var.key();
        ix2Var.b = au1Var;
        ix2Var.a = mt2Var;
        this.g = ix2Var;
        this.n = mt2Var.required();
        this.m = au1Var.getType();
        this.o = mt2Var.inline();
        this.h = mt2Var.name();
        this.p = mt2Var.data();
        this.f = vq3Var;
        this.d = mt2Var;
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
        if (this.l == null) {
            this.l = au1Var.e();
        }
        Class[] clsArr = this.l;
        if (clsArr != null) {
            return clsArr.length == 0 ? new ln5(Object.class, 4) : new ln5(clsArr[0], 4);
        }
        throw new wt1("Unable to determine type for %s", au1Var);
    }

    @Override // defpackage.uq4
    public final Annotation c() {
        return this.d;
    }

    @Override // defpackage.uq4
    public final String d() {
        return this.h;
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
        if (this.k == null) {
            cz4 cz4Var = this.f.a;
            String strA = this.g.a();
            if (!this.d.inline()) {
                strA = this.c.e();
            }
            this.k = strA;
        }
        return this.k;
    }

    @Override // defpackage.uq4
    public final Class getType() {
        return this.m;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean i() {
        return true;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean isInline() {
        return this.o;
    }

    @Override // defpackage.uq4
    public final boolean isRequired() {
        return this.n;
    }

    @Override // defpackage.uq4
    public final au1 k() {
        return (au1) this.c.c;
    }

    @Override // defpackage.uq4
    public final Object o(ai5 ai5Var) {
        j65 j65Var = new j65(ai5Var, new ln5(this.m, 4), null);
        if (this.d.empty()) {
            return null;
        }
        return j65Var.h();
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) {
        ln5 ln5Var = new ln5(this.m, 4);
        boolean zInline = this.d.inline();
        ix2 ix2Var = this.g;
        return !zInline ? new l90(ai5Var, ix2Var, ln5Var) : new bp1(ai5Var, ix2Var, ln5Var);
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String r() {
        cz4 cz4Var = this.f.a;
        String str = this.i;
        bs2 bs2Var = this.c;
        bs2Var.getClass();
        if (bs2.f(str)) {
            this.i = bs2Var.c();
        }
        return this.i;
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return this.p;
    }

    public final String toString() {
        return this.c.toString();
    }
}
