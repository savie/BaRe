package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum s58 extends e88 {
    public s58() {
        super("RCDATAEndTagName", 12);
    }

    public static void e(o58 o58Var, e51 e51Var) {
        o58Var.h("</".concat(o58Var.h.toString()));
        e51Var.q();
        o58Var.c = e88.c;
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        if (e51Var.o()) {
            String strE = e51Var.e();
            o58Var.i.m(strE);
            o58Var.h.append(strE);
            return;
        }
        char cD = e51Var.d();
        if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
            if (o58Var.n()) {
                o58Var.c = e88.Y;
                return;
            } else {
                e(o58Var, e51Var);
                return;
            }
        }
        if (cD == '/') {
            if (o58Var.n()) {
                o58Var.c = e88.g0;
                return;
            } else {
                e(o58Var, e51Var);
                return;
            }
        }
        if (cD != '>') {
            e(o58Var, e51Var);
        } else if (!o58Var.n()) {
            e(o58Var, e51Var);
        } else {
            o58Var.k();
            o58Var.c = e88.a;
        }
    }
}
