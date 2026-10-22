package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum d88 extends e88 {
    public d88() {
        super("EndTagOpen", 8);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        boolean zJ = e51Var.j();
        z58 z58Var = e88.a;
        if (zJ) {
            o58Var.l(this);
            o58Var.h("</");
            o58Var.c = z58Var;
        } else if (e51Var.o()) {
            o58Var.d(false);
            o58Var.c = e88.p;
        } else if (e51Var.m('>')) {
            o58Var.m(this);
            o58Var.a(z58Var);
        } else {
            o58Var.m(this);
            o58Var.a(e88.h0);
        }
    }
}
