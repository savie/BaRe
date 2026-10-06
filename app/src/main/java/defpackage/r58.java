package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum r58 extends e88 {
    public r58() {
        super("RCDATAEndTagOpen", 11);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        if (!e51Var.o()) {
            o58Var.h("</");
            o58Var.c = e88.c;
            return;
        }
        o58Var.d(false);
        c58 c58Var = o58Var.i;
        char cI = e51Var.i();
        c58Var.getClass();
        c58Var.m(String.valueOf(cI));
        o58Var.h.append(e51Var.i());
        o58Var.a(e88.t);
    }
}
