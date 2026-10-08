package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b66 implements bw1 {
    public final xk1 a;
    public final ai5 b;
    public final cy6 c;
    public final cz4 d;
    public final ix2 e;
    public final ln5 f;

    public b66(ai5 ai5Var, ix2 ix2Var, ln5 ln5Var) {
        this.a = new xk1(ai5Var, ln5Var, null);
        this.c = new cy6(ai5Var, ln5Var, null);
        this.d = ai5Var.n();
        this.b = ai5Var;
        this.e = ix2Var;
        this.f = ln5Var;
    }

    @Override // defpackage.bw1
    public final void a(ev5 ev5Var, Object obj) {
        ln5 ln5Var = this.f;
        Class cls = (Class) ln5Var.b;
        ix2 ix2Var = this.e;
        String strE = ix2Var.e();
        boolean z = ix2Var.h;
        cy6 cy6Var = this.c;
        cz4 cz4Var = this.d;
        if (z) {
            if (obj != null) {
                if (strE != null) {
                    cz4Var.getClass();
                    ev5Var = ev5Var.setAttribute(strE, null);
                }
                cy6Var.a(ev5Var, obj);
                return;
            }
            return;
        }
        if (strE == null) {
            strE = this.b.m(cls);
        }
        cz4Var.getClass();
        ev5 ev5VarI = ev5Var.i(strE);
        if (obj == null || this.a.e(ln5Var, obj, ev5VarI)) {
            return;
        }
        cy6Var.a(ev5VarI, obj);
    }

    @Override // defpackage.bw1
    public final Object b(mc4 mc4Var) {
        Class cls = (Class) this.f.b;
        ix2 ix2Var = this.e;
        String strE = ix2Var.e();
        boolean z = ix2Var.h;
        cy6 cy6Var = this.c;
        cz4 cz4Var = this.d;
        if (z) {
            if (strE != null) {
                cz4Var.getClass();
                mc4Var = mc4Var.getAttribute(strE);
            }
            if (mc4Var == null) {
                return null;
            }
            return cy6Var.b(mc4Var);
        }
        if (strE == null) {
            strE = this.b.m(cls);
        }
        cz4Var.getClass();
        mc4 mc4VarF = mc4Var.f(strE);
        if (mc4VarF == null) {
            return null;
        }
        return cy6Var.b(mc4VarF);
    }

    @Override // defpackage.bw1
    public final Object c(mc4 mc4Var, Object obj) throws kd5 {
        Class cls = (Class) this.f.b;
        if (obj == null) {
            return b(mc4Var);
        }
        throw new kd5("Can not read value of %s for %s", cls, this.e);
    }

    @Override // defpackage.bw1
    public final boolean d(mc4 mc4Var) {
        Class cls = (Class) this.f.b;
        ix2 ix2Var = this.e;
        String strE = ix2Var.e();
        boolean z = ix2Var.h;
        cy6 cy6Var = this.c;
        cz4 cz4Var = this.d;
        if (z) {
            if (strE != null) {
                cz4Var.getClass();
                mc4Var = mc4Var.f(strE);
            }
            if (mc4Var != null) {
                cy6Var.d(mc4Var);
                return true;
            }
        } else {
            if (strE == null) {
                strE = this.b.m(cls);
            }
            cz4Var.getClass();
            if (mc4Var.f(strE) != null) {
                cy6Var.d(mc4Var);
                return true;
            }
        }
        return true;
    }
}
