package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class tv6 extends y0 {
    public final t0 a;
    public final ya b;

    public tv6(v1 v1Var) {
        this.a = t0.x(v1Var.C(0));
        this.b = ya.k(v1Var.C(1));
    }

    public static final tv6 k(Object obj) {
        if (obj instanceof tv6) {
            return (tv6) obj;
        }
        if (obj != null) {
            return new tv6(v1.B(obj));
        }
        return null;
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        c0 c0Var = new c0();
        c0Var.a(this.a);
        c0Var.a(this.b);
        t82 t82Var = new t82(c0Var);
        t82Var.c = -1;
        return t82Var;
    }

    public tv6(ya yaVar) {
        this.a = new t0(0L);
        this.b = yaVar;
    }
}
