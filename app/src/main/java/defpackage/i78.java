package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum i78 extends e88 {
    public i78() {
        super("Doctype", 50);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        y48 y48Var = o58Var.m;
        char cD = e51Var.d();
        j78 j78Var = e88.q0;
        if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
            o58Var.c = j78Var;
            return;
        }
        if (cD != '>') {
            if (cD != 65535) {
                o58Var.m(this);
                o58Var.c = j78Var;
                return;
            }
            o58Var.l(this);
        }
        o58Var.m(this);
        y48Var.f();
        y48Var.getClass();
        o58Var.j();
        o58Var.c = e88.a;
    }
}
