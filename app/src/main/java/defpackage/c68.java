package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum c68 extends e88 {
    public c68() {
        super("ScriptDataEscaped", 21);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        if (e51Var.j()) {
            o58Var.l(this);
            o58Var.c = e88.a;
            return;
        }
        char cI = e51Var.i();
        if (cI == 0) {
            o58Var.m(this);
            e51Var.a();
            o58Var.f((char) 65533);
        } else if (cI == '-') {
            o58Var.f('-');
            o58Var.a(e88.N);
        } else if (cI != '<') {
            o58Var.h(e51Var.g('-', '<', 0));
        } else {
            o58Var.a(e88.P);
        }
    }
}
