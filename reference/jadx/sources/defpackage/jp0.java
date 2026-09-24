package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jp0 implements kp0, Serializable {
    public final gc8 a;
    public final od b;

    public jp0(gc8 gc8Var, od odVar, x86 x86Var) {
        this.a = gc8Var;
        this.b = odVar;
    }

    @Override // defpackage.kp0
    public final od a() {
        return this.b;
    }

    @Override // defpackage.kp0
    public final bk4 b(s65 s65Var, Class cls) {
        bk4 bk4VarH;
        bk4 bk4VarF = s65Var.f(cls);
        as5 as5VarD = s65Var.d();
        od odVar = this.b;
        return (odVar == null || (bk4VarH = as5VarD.h(odVar)) == null) ? bk4VarF : bk4VarF.c(bk4VarH);
    }

    @Override // defpackage.kp0
    public final qk4 c(s65 s65Var, Class cls) {
        t65 t65Var = (t65) s65Var;
        t65Var.e(this.a.f);
        t65Var.e(cls);
        t65Var.k.getClass();
        qk4 qk4Var = qk4.e;
        as5 as5VarD = s65Var.d();
        od odVar = this.b;
        return odVar == null ? qk4Var : qk4Var.a(as5VarD.z(odVar));
    }
}
