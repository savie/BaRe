package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum x68 extends e88 {
    public x68() {
        super("AfterAttributeValue_quoted", 40);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        char cD = e51Var.d();
        p68 p68Var = e88.Y;
        if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
            o58Var.c = p68Var;
            return;
        }
        if (cD == '/') {
            o58Var.c = e88.g0;
            return;
        }
        z58 z58Var = e88.a;
        if (cD == '>') {
            o58Var.k();
            o58Var.c = z58Var;
        } else if (cD == 65535) {
            o58Var.l(this);
            o58Var.c = z58Var;
        } else {
            o58Var.m(this);
            e51Var.q();
            o58Var.c = p68Var;
        }
    }
}
