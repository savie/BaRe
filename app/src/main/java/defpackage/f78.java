package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum f78 extends e88 {
    public f78() {
        super("CommentEnd", 48);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        x48 x48Var = o58Var.n;
        char cD = e51Var.d();
        d78 d78Var = e88.l0;
        if (cD == 0) {
            o58Var.m(this);
            StringBuilder sb = x48Var.c;
            sb.append("--");
            sb.append((char) 65533);
            o58Var.c = d78Var;
            return;
        }
        if (cD == '!') {
            o58Var.m(this);
            o58Var.c = e88.o0;
            return;
        }
        if (cD == '-') {
            o58Var.m(this);
            x48Var.c.append('-');
            return;
        }
        z58 z58Var = e88.a;
        if (cD == '>') {
            o58Var.i();
            o58Var.c = z58Var;
        } else if (cD == 65535) {
            o58Var.l(this);
            o58Var.i();
            o58Var.c = z58Var;
        } else {
            o58Var.m(this);
            StringBuilder sb2 = x48Var.c;
            sb2.append("--");
            sb2.append(cD);
            o58Var.c = d78Var;
        }
    }
}
