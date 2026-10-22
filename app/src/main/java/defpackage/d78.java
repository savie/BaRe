package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum d78 extends e88 {
    public d78() {
        super("Comment", 46);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        x48 x48Var = o58Var.n;
        char cI = e51Var.i();
        if (cI == 0) {
            o58Var.m(this);
            e51Var.a();
            x48Var.c.append((char) 65533);
        } else if (cI == '-') {
            o58Var.a(e88.m0);
        } else {
            if (cI != 65535) {
                x48Var.c.append(e51Var.g('-', 0));
                return;
            }
            o58Var.l(this);
            o58Var.i();
            o58Var.c = e88.a;
        }
    }
}
