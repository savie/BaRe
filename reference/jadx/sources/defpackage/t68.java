package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum t68 extends e88 {
    public t68() {
        super("AttributeValue_doubleQuoted", 37);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        String strG = e51Var.g(e88.H0);
        int length = strG.length();
        c58 c58Var = o58Var.i;
        if (length > 0) {
            c58Var.k(strG);
        } else {
            c58Var.h = true;
        }
        char cD = e51Var.d();
        if (cD == 0) {
            o58Var.m(this);
            o58Var.i.j((char) 65533);
            return;
        }
        if (cD == '\"') {
            o58Var.c = e88.f0;
            return;
        }
        if (cD != '&') {
            if (cD != 65535) {
                o58Var.i.j(cD);
                return;
            } else {
                o58Var.l(this);
                o58Var.c = e88.a;
                return;
            }
        }
        int[] iArrC = o58Var.c('\"', true);
        c58 c58Var2 = o58Var.i;
        if (iArrC != null) {
            c58Var2.l(iArrC);
        } else {
            c58Var2.j('&');
        }
    }
}
