package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum c78 extends e88 {
    public c78() {
        super("CommentStartDash", 45);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        x48 x48Var = o58Var.n;
        char cD = e51Var.d();
        d78 d78Var = e88.l0;
        if (cD == 0) {
            o58Var.m(this);
            x48Var.c.append((char) 65533);
            o58Var.c = d78Var;
            return;
        }
        if (cD == '-') {
            o58Var.c = e88.k0;
            return;
        }
        z58 z58Var = e88.a;
        if (cD == '>') {
            o58Var.m(this);
            o58Var.i();
            o58Var.c = z58Var;
        } else if (cD != 65535) {
            x48Var.c.append(cD);
            o58Var.c = d78Var;
        } else {
            o58Var.l(this);
            o58Var.i();
            o58Var.c = z58Var;
        }
    }
}
