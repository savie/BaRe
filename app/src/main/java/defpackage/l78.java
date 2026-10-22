package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum l78 extends e88 {
    public l78() {
        super("AfterDoctypeName", 53);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        y48 y48Var = o58Var.m;
        boolean zJ = e51Var.j();
        z58 z58Var = e88.a;
        if (zJ) {
            o58Var.l(this);
            y48Var.getClass();
            o58Var.j();
            o58Var.c = z58Var;
            return;
        }
        if (e51Var.n('\t', '\n', '\r', '\f', ' ')) {
            e51Var.a();
            return;
        }
        if (e51Var.m('>')) {
            o58Var.j();
            o58Var.a(z58Var);
            return;
        }
        if (e51Var.l("PUBLIC")) {
            y48Var.getClass();
            o58Var.c = e88.t0;
        } else if (e51Var.l("SYSTEM")) {
            y48Var.getClass();
            o58Var.c = e88.z0;
        } else {
            o58Var.m(this);
            y48Var.getClass();
            o58Var.a(e88.E0);
        }
    }
}
