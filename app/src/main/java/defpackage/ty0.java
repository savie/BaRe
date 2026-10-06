package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ty0 extends y0 {
    public int a;
    public byte[] b;
    public byte[] c;
    public byte[] d;
    public byte[] e;
    public byte[] f;
    public vy0 k;

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        c0 c0Var = new c0();
        c0Var.a(new t0(this.a));
        c0Var.a(new p82(this.b));
        c0Var.a(new p82(this.c));
        c0Var.a(new p82(this.d));
        c0Var.a(new p82(this.e));
        c0Var.a(new p82(this.f));
        vy0 vy0Var = this.k;
        if (vy0Var != null) {
            c0Var.a(new vy0(ms8.k(vy0Var.a)));
        }
        t82 t82Var = new t82(c0Var);
        t82Var.c = -1;
        return t82Var;
    }
}
