package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum k78 extends e88 {
    public k78() {
        super("DoctypeName", 52);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        y48 y48Var = o58Var.m;
        if (e51Var.o()) {
            y48Var.c.append(e51Var.e());
            return;
        }
        char cD = e51Var.d();
        if (cD == 0) {
            o58Var.m(this);
            y48Var.c.append((char) 65533);
            return;
        }
        if (cD != ' ') {
            z58 z58Var = e88.a;
            if (cD == '>') {
                o58Var.j();
                o58Var.c = z58Var;
                return;
            }
            if (cD == 65535) {
                o58Var.l(this);
                y48Var.getClass();
                o58Var.j();
                o58Var.c = z58Var;
                return;
            }
            if (cD != '\t' && cD != '\n' && cD != '\f' && cD != '\r') {
                y48Var.c.append(cD);
                return;
            }
        }
        o58Var.c = e88.s0;
    }
}
