package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum e68 extends e88 {
    public e68() {
        super("ScriptDataEscapedDashDash", 23);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        if (e51Var.j()) {
            o58Var.l(this);
            o58Var.c = e88.a;
            return;
        }
        char cD = e51Var.d();
        c68 c68Var = e88.M;
        if (cD == 0) {
            o58Var.m(this);
            o58Var.f((char) 65533);
            o58Var.c = c68Var;
        } else {
            if (cD == '-') {
                o58Var.f(cD);
                return;
            }
            if (cD == '<') {
                o58Var.c = e88.P;
            } else if (cD != '>') {
                o58Var.f(cD);
                o58Var.c = c68Var;
            } else {
                o58Var.f(cD);
                o58Var.c = e88.f;
            }
        }
    }
}
