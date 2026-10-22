package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class vv6 extends y0 {
    public int a;
    public byte[] b;
    public byte[] c;
    public wv6 d;

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        c0 c0Var = new c0();
        c0Var.a(new t0(this.a));
        c0Var.a(new p82(this.b));
        c0Var.a(new p82(this.c));
        wv6 wv6Var = this.d;
        if (wv6Var != null) {
            byte[] bArrK = ms8.k(wv6Var.a);
            byte[] bArrK2 = ms8.k(wv6Var.b);
            wv6 wv6Var2 = new wv6();
            wv6Var2.a = bArrK;
            wv6Var2.b = bArrK2;
            c0Var.a(wv6Var2);
        }
        t82 t82Var = new t82(c0Var);
        t82Var.c = -1;
        return t82Var;
    }
}
