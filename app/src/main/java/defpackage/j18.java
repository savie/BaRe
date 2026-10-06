package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class j18 extends vz7 {
    public final bs2 b;
    public s03 c;
    public final au1 d;
    public final q08 e;
    public final Class f;
    public final String g;
    public final boolean h;
    public final boolean i;

    public j18(au1 au1Var, q08 q08Var, vq3 vq3Var) {
        this.b = new bs2(au1Var, this, vq3Var);
        this.h = q08Var.required();
        this.f = au1Var.getType();
        this.g = q08Var.empty();
        this.i = q08Var.data();
        this.d = au1Var;
        this.e = q08Var;
    }

    @Override // defpackage.uq4
    public final String a() {
        return f().a();
    }

    @Override // defpackage.uq4
    public final Annotation c() {
        return this.e;
    }

    @Override // defpackage.uq4
    public final String d() {
        return this.d.toString();
    }

    @Override // defpackage.uq4
    public final xd2 e() {
        return null;
    }

    @Override // defpackage.uq4
    public final s03 f() {
        if (this.c == null) {
            this.c = this.b.d();
        }
        return this.c;
    }

    @Override // defpackage.uq4
    public final String getName() {
        return "";
    }

    @Override // defpackage.uq4
    public final Class getType() {
        return this.f;
    }

    @Override // defpackage.uq4
    public final boolean isRequired() {
        return this.h;
    }

    @Override // defpackage.uq4
    public final au1 k() {
        return this.d;
    }

    @Override // defpackage.uq4
    public final Object o(ai5 ai5Var) {
        this.b.getClass();
        String str = this.g;
        if (bs2.f(str)) {
            return null;
        }
        return str;
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) throws sf5 {
        this.b.getClass();
        String str = this.g;
        if (bs2.f(str)) {
            str = null;
        }
        ai5Var.getClass();
        au1 au1Var = this.d;
        if (((x44) ai5Var.d).e(au1Var.getType())) {
            return new cy6(ai5Var, au1Var, str);
        }
        throw new sf5("Cannot use %s to represent %s", au1Var, this.e);
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return this.i;
    }

    public final String toString() {
        return this.b.toString();
    }
}
