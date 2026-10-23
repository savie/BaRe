package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class hx8 extends y0 {
    public final t0 a;
    public final int b;
    public final ya c;

    public hx8(v1 v1Var) {
        this.a = t0.x(v1Var.C(0));
        this.b = t0.x(v1Var.C(1)).C();
        this.c = ya.k(v1Var.C(2));
    }

    public static hx8 k(Object obj) {
        if (obj instanceof hx8) {
            return (hx8) obj;
        }
        if (obj != null) {
            return new hx8(v1.B(obj));
        }
        return null;
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        c0 c0Var = new c0();
        c0Var.a(this.a);
        c0Var.a(new t0(this.b));
        c0Var.a(this.c);
        t82 t82Var = new t82(c0Var);
        t82Var.c = -1;
        return t82Var;
    }

    public hx8(int i, ya yaVar) {
        this.a = new t0(0L);
        this.b = i;
        this.c = yaVar;
    }
}
