package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum u58 extends e88 {
    public u58() {
        super("RawtextEndTagOpen", 14);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        if (e51Var.o()) {
            o58Var.d(false);
            o58Var.c = e88.G;
        } else {
            o58Var.h("</");
            o58Var.c = e88.e;
        }
    }
}
