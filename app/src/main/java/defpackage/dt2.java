package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class dt2 extends vz7 {
    public final fu b;
    public final ct2 c;
    public final bs2 d;
    public s03 e;
    public final vq3 f;
    public final Class g;
    public String h;
    public final String i;
    public final boolean j;
    public final boolean k;

    public dt2(au1 au1Var, ct2 ct2Var, vq3 vq3Var) {
        this.d = new bs2(au1Var, this, vq3Var);
        this.b = new fu(au1Var);
        this.j = ct2Var.required();
        this.g = au1Var.getType();
        this.h = ct2Var.entry();
        this.k = ct2Var.data();
        this.i = ct2Var.name();
        this.f = vq3Var;
        this.c = ct2Var;
    }

    @Override // defpackage.uq4
    public final String a() {
        return f().b(getName());
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final vb8 b() {
        Class cls = this.g;
        Class<?> componentType = cls.getComponentType();
        int i = 4;
        return componentType == null ? new ln5(cls, i) : new ln5(componentType, i);
    }

    @Override // defpackage.uq4
    public final Annotation c() {
        return this.c;
    }

    @Override // defpackage.uq4
    public final String d() {
        return this.i;
    }

    @Override // defpackage.uq4
    public final xd2 e() {
        return this.b;
    }

    @Override // defpackage.uq4
    public final s03 f() {
        if (this.e == null) {
            this.e = this.d.d();
        }
        return this.e;
    }

    @Override // defpackage.uq4
    public final String getName() {
        cz4 cz4Var = this.f.a;
        return this.d.e();
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
        return (au1) this.d.c;
    }

    @Override // defpackage.uq4
    public final Object o(ai5 ai5Var) throws w70 {
        ln5 ln5Var = new ln5(this.g, 4);
        Object obj = ai5Var.d;
        if (this.c.empty()) {
            return null;
        }
        Class type = ln5Var.getType();
        if (!type.isArray()) {
            throw new w70("The %s not an array for %s", type, ln5Var);
        }
        Class<?> componentType = type.getComponentType();
        if (componentType != null) {
            return Array.newInstance(componentType, 0);
        }
        return null;
    }

    @Override // defpackage.uq4
    public final bw1 q(ai5 ai5Var) throws w70 {
        bs2 bs2Var = this.d;
        au1 au1Var = (au1) bs2Var.c;
        String strR = r();
        Class cls = this.g;
        if (!cls.isArray()) {
            throw new w70("Type is not an array %s for %s", cls, au1Var);
        }
        vb8 vb8VarB = b();
        au1 au1Var2 = (au1) bs2Var.c;
        ai5Var.getClass();
        ln5 ln5Var = (ln5) vb8VarB;
        if (!((x44) ai5Var.d).e((Class) ln5Var.b)) {
            return new cy6(ai5Var, au1Var2, ln5Var, strR);
        }
        as2 as2Var = new as2();
        as2Var.a = new x40(ai5Var, au1Var2, null);
        as2Var.b = new cy6(ai5Var, ln5Var, null);
        as2Var.c = strR;
        as2Var.d = ln5Var;
        as2Var.e = au1Var2;
        return as2Var;
    }

    @Override // defpackage.vz7, defpackage.uq4
    public final String r() {
        cz4 cz4Var = this.f.a;
        String str = this.h;
        bs2 bs2Var = this.d;
        bs2Var.getClass();
        if (bs2.f(str)) {
            this.h = bs2Var.c();
        }
        return this.h;
    }

    @Override // defpackage.uq4
    public final boolean t() {
        return this.k;
    }

    public final String toString() {
        return this.d.toString();
    }
}
