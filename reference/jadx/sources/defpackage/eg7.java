package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eg7 extends lp0 {
    public static final /* synthetic */ int f = 0;
    public final od b;
    public final x86 c;
    public final z86 d;
    public final qk4 e;

    public eg7(as5 as5Var, od odVar, z86 z86Var, x86 x86Var, qk4 qk4Var) {
        this.b = odVar;
        this.d = z86Var;
        this.c = x86Var == null ? x86.p : x86Var;
        this.e = qk4Var;
    }

    public static eg7 t(s65 s65Var, hn8 hn8Var, z86 z86Var, x86 x86Var, pk4 pk4Var) {
        qk4 qk4Var;
        pk4 pk4Var2;
        if (pk4Var == null || pk4Var == (pk4Var2 = pk4.e)) {
            qk4Var = lp0.a;
        } else {
            qk4 qk4Var2 = qk4.e;
            qk4Var = pk4Var != pk4Var2 ? new qk4(pk4Var, null, null, null) : qk4.e;
        }
        return new eg7(s65Var.d(), hn8Var, z86Var, x86Var, qk4Var);
    }

    @Override // defpackage.lp0
    public final qk4 b() {
        return this.e;
    }

    @Override // defpackage.lp0
    public final td f() {
        od odVar = this.b;
        if (odVar instanceof td) {
            return (td) odVar;
        }
        return null;
    }

    @Override // defpackage.lp0
    public final ld g() {
        od odVar = this.b;
        if (odVar instanceof ld) {
            return (ld) odVar;
        }
        return null;
    }

    @Override // defpackage.lp0
    public final pd h() {
        od odVar = this.b;
        if (!(odVar instanceof pd)) {
            return null;
        }
        pd pdVar = (pd) odVar;
        if (pdVar.P.getParameterCount() == 0) {
            return pdVar;
        }
        return null;
    }

    @Override // defpackage.lp0
    public final x86 i() {
        return this.c;
    }

    @Override // defpackage.lp0
    public final String j() {
        return this.d.a;
    }

    @Override // defpackage.lp0
    public final gc8 k() {
        return this.b.D();
    }

    @Override // defpackage.lp0
    public final Class l() {
        return this.b.C();
    }

    @Override // defpackage.lp0
    public final pd o() {
        od odVar = this.b;
        if (!(odVar instanceof pd)) {
            return null;
        }
        pd pdVar = (pd) odVar;
        if (pdVar.P.getParameterCount() == 1) {
            return pdVar;
        }
        return null;
    }

    @Override // defpackage.lp0
    public final boolean r() {
        return false;
    }

    @Override // defpackage.lp0
    public final void p() {
    }
}
