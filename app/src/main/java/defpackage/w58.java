package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum w58 extends e88 {
    public w58() {
        super("ScriptDataLessthanSign", 16);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        char cD = e51Var.d();
        if (cD == '!') {
            o58Var.h("<!");
            o58Var.c = e88.K;
        } else if (cD == '/') {
            o58Var.e();
            o58Var.c = e88.I;
        } else {
            o58Var.h("<");
            e51Var.q();
            o58Var.c = e88.f;
        }
    }
}
