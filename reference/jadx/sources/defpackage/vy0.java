package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class vy0 extends y0 {
    public byte[] a;

    public vy0(byte[] bArr) {
        this.a = bArr;
    }

    public static vy0 k(b0 b0Var) {
        if (b0Var instanceof vy0) {
            return (vy0) b0Var;
        }
        if (b0Var == null) {
            return null;
        }
        v1 v1VarB = v1.B(b0Var);
        vy0 vy0Var = new vy0();
        vy0Var.a = ms8.k(j1.x(v1VarB.C(0)).a);
        return vy0Var;
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        c0 c0Var = new c0();
        c0Var.a(new p82(this.a));
        t82 t82Var = new t82(c0Var);
        t82Var.c = -1;
        return t82Var;
    }
}
