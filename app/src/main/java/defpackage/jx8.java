package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class jx8 extends y0 {
    public final t0 a;
    public final int b;
    public final int c;
    public final ya d;

    public jx8(v1 v1Var) {
        this.a = t0.x(v1Var.C(0));
        this.b = t0.x(v1Var.C(1)).C();
        this.c = t0.x(v1Var.C(2)).C();
        this.d = ya.k(v1Var.C(3));
    }

    public static jx8 k(Object obj) {
        if (obj instanceof jx8) {
            return (jx8) obj;
        }
        if (obj != null) {
            return new jx8(v1.B(obj));
        }
        return null;
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        c0 c0Var = new c0();
        c0Var.a(this.a);
        c0Var.a(new t0(this.b));
        c0Var.a(new t0(this.c));
        c0Var.a(this.d);
        t82 t82Var = new t82(c0Var);
        t82Var.c = -1;
        return t82Var;
    }

    public jx8(int i, int i2, ya yaVar) {
        this.a = new t0(0L);
        this.b = i;
        this.c = i2;
        this.d = yaVar;
    }
}
