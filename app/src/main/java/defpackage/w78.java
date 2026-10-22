package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum w78 extends e88 {
    public w78() {
        super("DoctypeSystemIdentifier_singleQuoted", 63);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        y48 y48Var = o58Var.m;
        char cD = e51Var.d();
        if (cD == 0) {
            o58Var.m(this);
            y48Var.e.append((char) 65533);
            return;
        }
        if (cD == '\'') {
            o58Var.c = e88.D0;
            return;
        }
        z58 z58Var = e88.a;
        if (cD == '>') {
            o58Var.m(this);
            y48Var.getClass();
            o58Var.j();
            o58Var.c = z58Var;
            return;
        }
        if (cD != 65535) {
            y48Var.e.append(cD);
            return;
        }
        o58Var.l(this);
        y48Var.getClass();
        o58Var.j();
        o58Var.c = z58Var;
    }
}
