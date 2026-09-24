package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class td5 implements k57 {
    public final s4 a;
    public final ke8 b;
    public final d13 c;

    public td5(ke8 ke8Var, d13 d13Var, s4 s4Var) {
        this.b = ke8Var;
        d13Var.getClass();
        this.c = d13Var;
        this.a = s4Var;
    }

    @Override // defpackage.k57
    public final void a(Object obj, fu fuVar) {
        this.c.getClass();
        xs1.r(obj);
        throw null;
    }

    @Override // defpackage.k57
    public final void b(Object obj, Object obj2) {
        u57.k(this.b, obj, obj2);
    }

    @Override // defpackage.k57
    public final void c(Object obj) {
        this.b.getClass();
        je8 je8Var = ((av3) obj).unknownFields;
        if (je8Var.e) {
            je8Var.e = false;
        }
        this.c.getClass();
        xs1.r(obj);
        throw null;
    }

    @Override // defpackage.k57
    public final boolean d(Object obj) {
        this.c.getClass();
        xs1.r(obj);
        throw null;
    }

    @Override // defpackage.k57
    public final boolean e(av3 av3Var, av3 av3Var2) {
        this.b.getClass();
        return av3Var.unknownFields.equals(av3Var2.unknownFields);
    }

    @Override // defpackage.k57
    public final void f(Object obj, hk1 hk1Var, c13 c13Var) {
        this.b.getClass();
        ke8.a(obj);
        this.c.getClass();
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // defpackage.k57
    public final int g(av3 av3Var) {
        this.b.getClass();
        return av3Var.unknownFields.hashCode();
    }

    @Override // defpackage.k57
    public final int h(av3 av3Var) {
        this.b.getClass();
        je8 je8Var = av3Var.unknownFields;
        int i = je8Var.d;
        if (i != -1) {
            return i;
        }
        int iF = 0;
        for (int i2 = 0; i2 < je8Var.a; i2++) {
            int i3 = je8Var.b[i2] >>> 3;
            iF += jk1.f(3, (gy0) je8Var.c[i2]) + jk1.i(i3) + jk1.h(2) + (jk1.h(1) * 2);
        }
        je8Var.d = iF;
        return iF;
    }

    @Override // defpackage.k57
    public final av3 i() {
        s4 s4Var = this.a;
        return s4Var instanceof av3 ? ((av3) s4Var).i() : ((yu3) ((av3) s4Var).c(5)).b();
    }
}
