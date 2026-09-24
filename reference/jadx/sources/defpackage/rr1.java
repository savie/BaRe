package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rr1 extends uw0 {
    public final pw0 H;

    public rr1(int i, pw0 pw0Var) {
        super(i);
        this.H = pw0Var;
        if (pw0Var == pw0.a) {
            c6.d(ph6.a(uw0.class).c(), " instead", "This implementation does not support suspension for senders, use ");
            throw null;
        }
        if (i >= 1) {
            return;
        }
        f6.g(xs1.h(i, "Buffered channel capacity must be at least 1, but ", " was specified"));
        throw null;
    }

    public final Object K(Object obj, boolean z) {
        pw0 pw0Var = this.H;
        pw0 pw0Var2 = pw0.c;
        be8 be8Var = be8.a;
        if (pw0Var == pw0Var2) {
            Object objF = super.f(obj);
            return (!(objF instanceof r41) || (objF instanceof q41)) ? objF : be8Var;
        }
        Object obj2 = ww0.d;
        t41 t41Var = (t41) uw0.f.get(this);
        while (true) {
            long andIncrement = uw0.b.getAndIncrement(this);
            long j = 1152921504606846975L & andIncrement;
            boolean zW = w(andIncrement, false);
            int i = ww0.b;
            long j2 = i;
            long j3 = j / j2;
            int i2 = (int) (j % j2);
            if (t41Var.e != j3) {
                t41 t41VarN = n(j3, t41Var);
                if (t41VarN != null) {
                    t41Var = t41VarN;
                } else if (zW) {
                    return new q41(q());
                }
            }
            int iB = uw0.b(this, t41Var, i2, obj, j, obj2, zW);
            if (iB == 0) {
                t41Var.b();
                return be8Var;
            }
            if (iB != 1) {
                if (iB != 2) {
                    if (iB == 3) {
                        l0.e("unexpected");
                        return null;
                    }
                    if (iB == 4) {
                        if (j < uw0.c.get(this)) {
                            t41Var.b();
                        }
                        return new q41(q());
                    }
                    if (iB == 5) {
                        t41Var.b();
                    }
                } else {
                    if (zW) {
                        t41Var.n();
                        return new q41(q());
                    }
                    wn8 wn8Var = obj2 instanceof wn8 ? (wn8) obj2 : null;
                    if (wn8Var != null) {
                        wn8Var.a(t41Var, i2 + i);
                    }
                    j((t41Var.e * j2) + ((long) i2));
                }
            }
            return be8Var;
        }
    }

    @Override // defpackage.uw0, defpackage.c77
    public final Object c(jv1 jv1Var, Object obj) throws Throwable {
        if (K(obj, true) instanceof q41) {
            throw q();
        }
        return be8.a;
    }

    @Override // defpackage.uw0, defpackage.c77
    public final Object f(Object obj) {
        return K(obj, false);
    }

    @Override // defpackage.uw0
    public final boolean x() {
        return this.H == pw0.b;
    }
}
