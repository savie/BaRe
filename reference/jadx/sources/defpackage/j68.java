package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum j68 extends e88 {
    public j68() {
        super("ScriptDataDoubleEscaped", 28);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        char cI = e51Var.i();
        if (cI == 0) {
            o58Var.m(this);
            e51Var.a();
            o58Var.f((char) 65533);
        } else if (cI == '-') {
            o58Var.f(cI);
            o58Var.a(e88.U);
        } else if (cI == '<') {
            o58Var.f(cI);
            o58Var.a(e88.W);
        } else if (cI != 65535) {
            o58Var.h(e51Var.g('-', '<', 0));
        } else {
            o58Var.l(this);
            o58Var.c = e88.a;
        }
    }
}
