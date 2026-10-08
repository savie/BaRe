package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class x70 extends vz7 {
    public final fu b;
    public final bs2 c;
    public s03 d;
    public final u70 e;
    public final vq3 f;
    public final Class g;
    public final String h;
    public final String i;
    public final boolean j;

    public x70(au1 au1Var, u70 u70Var, vq3 vq3Var) {
        this.c = new bs2(au1Var, this, vq3Var);
        this.b = new fu(au1Var);
        this.j = u70Var.required();
        this.g = au1Var.getType();
        this.i = u70Var.empty();
        this.h = u70Var.name();
        this.f = vq3Var;
        this.e = u70Var;
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

    @Override // defpackage.uq4
    public final boolean isRequired() {
        return this.j;
    }

    @Override // defpackage.uq4
    public final au1 k() {
        return (au1) this.c.c;
    }

    @Override // defpackage.uq4
    public final Object o(ai5 ai5Var) {
        this.c.getClass();
        String str = this.i;
        if (bs2.f(str)) {
            return null;
        }
        return str;
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) {
        bs2 bs2Var = this.c;
        bs2Var.getClass();
        String str = this.i;
        if (bs2.f(str)) {
            str = null;
        }
        return new cy6(ai5Var, (au1) bs2Var.c, str);
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return false;
    }

    public final String toString() {
        return this.c.toString();
    }
}
