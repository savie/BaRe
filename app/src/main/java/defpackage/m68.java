package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum m68 extends e88 {
    public m68() {
        super("ScriptDataDoubleEscapedDashDash", 30);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        char cD = e51Var.d();
        j68 j68Var = e88.T;
        if (cD == 0) {
            o58Var.m(this);
            o58Var.f((char) 65533);
            o58Var.c = j68Var;
            return;
        }
        if (cD == '-') {
            o58Var.f(cD);
            return;
        }
        if (cD == '<') {
            o58Var.f(cD);
            o58Var.c = e88.W;
        } else if (cD == '>') {
            o58Var.f(cD);
            o58Var.c = e88.f;
        } else if (cD != 65535) {
            o58Var.f(cD);
            o58Var.c = j68Var;
        } else {
            o58Var.l(this);
            o58Var.c = e88.a;
        }
    }
}
