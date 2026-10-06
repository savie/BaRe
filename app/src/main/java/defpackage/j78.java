package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum j78 extends e88 {
    public j78() {
        super("BeforeDoctypeName", 51);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        y48 y48Var = o58Var.m;
        boolean zO = e51Var.o();
        k78 k78Var = e88.r0;
        if (zO) {
            y48Var.f();
            o58Var.c = k78Var;
            return;
        }
        char cD = e51Var.d();
        if (cD == 0) {
            o58Var.m(this);
            y48Var.f();
            y48Var.c.append((char) 65533);
            o58Var.c = k78Var;
            return;
        }
        if (cD != ' ') {
            if (cD == 65535) {
                o58Var.l(this);
                y48Var.f();
                y48Var.getClass();
                o58Var.j();
                o58Var.c = e88.a;
                return;
            }
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r') {
                return;
            }
            y48Var.f();
            y48Var.c.append(cD);
            o58Var.c = k78Var;
        }
    }
}
