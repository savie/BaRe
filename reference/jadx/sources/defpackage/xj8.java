package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class xj8 extends vz7 {
    public final fu b;
    public final bs2 c;
    public s03 d;
    public final vj8 e;
    public final vq3 f;
    public final Class g;
    public final String h;
    public final boolean i;

    public xj8(au1 au1Var, vj8 vj8Var, vq3 vq3Var) {
        this.c = new bs2(au1Var, this, vq3Var);
        this.b = new fu(au1Var);
        this.i = vj8Var.required();
        this.g = au1Var.getType();
        this.h = vj8Var.name();
        this.f = vq3Var;
        this.e = vj8Var;
    }

    @Override // defpackage.uq4
    public final String a() {
        return f().getAttribute(getName());
    }

    @Override // defpackage.uq4
    public final Annotation c() {
        return this.e;
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
        if (this.d == null) {
            this.d = this.c.d();
        }
        return this.d;
    }

    @Override // defpackage.uq4
    public final String getName() {
        cz4 cz4Var = this.f.a;
        return this.c.e();
    }

    @Override // defpackage.uq4
    public final Class getType() {
        return this.g;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final boolean h() {
        return true;
    }

    @Override // defpackage.uq4
    public final boolean isRequired() {
        return this.i;
    }

    @Override // defpackage.uq4
    public final au1 k() {
        return (au1) this.c.c;
    }

    @Override // defpackage.uq4
    public final /* bridge */ /* synthetic */ Object o(ai5 ai5Var) {
        return null;
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) throws w70 {
        au1 au1Var = (au1) this.c.c;
        ai5Var.getClass();
        Class type = au1Var.getType();
        if (type == Double.class || type == Float.class || type == Float.TYPE || type == Double.TYPE) {
            return new cy6(ai5Var, au1Var, null);
        }
        throw new w70("Cannot use %s to represent %s", this.e, au1Var);
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return false;
    }

    public final String toString() {
        return this.c.toString();
    }
}
