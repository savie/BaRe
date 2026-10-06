package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum c88 extends e88 {
    public c88() {
        super("TagOpen", 7);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        char cI = e51Var.i();
        if (cI == '!') {
            o58Var.a(e88.i0);
            return;
        }
        if (cI == '/') {
            o58Var.a(e88.n);
            return;
        }
        if (cI == '?') {
            o58Var.a(e88.h0);
            return;
        }
        if (e51Var.o()) {
            o58Var.d(true);
            o58Var.c = e88.p;
        } else {
            o58Var.m(this);
            o58Var.f('<');
            o58Var.c = e88.a;
        }
    }
}
