package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum a78 extends e88 {
    public a78() {
        super("MarkupDeclarationOpen", 43);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        if (e51Var.k("--")) {
            o58Var.n.f();
            o58Var.c = e88.j0;
        } else if (e51Var.l("DOCTYPE")) {
            o58Var.c = e88.p0;
        } else if (e51Var.k("[CDATA[")) {
            o58Var.e();
            o58Var.c = e88.F0;
        } else {
            o58Var.m(this);
            o58Var.a(e88.h0);
        }
    }
}
