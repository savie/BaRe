package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum p58 extends e88 {
    public p58() {
        super("TagName", 9);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        int i;
        char c;
        e51Var.b();
        int i2 = e51Var.e;
        int i3 = e51Var.c;
        char[] cArr = e51Var.a;
        while (true) {
            i = e51Var.e;
            if (i >= i3 || (c = cArr[i]) == '\t' || c == '\n' || c == '\r' || c == '\f' || c == ' ' || c == '/' || c == '>' || c == 0) {
                break;
            } else {
                e51Var.e = i + 1;
            }
        }
        o58Var.i.m(i > i2 ? e51.c(cArr, e51Var.h, i2, i - i2) : "");
        char cD = e51Var.d();
        if (cD == 0) {
            o58Var.i.m(e88.K0);
            return;
        }
        if (cD != ' ') {
            if (cD == '/') {
                o58Var.c = e88.g0;
                return;
            }
            z58 z58Var = e88.a;
            if (cD == '>') {
                o58Var.k();
                o58Var.c = z58Var;
                return;
            }
            if (cD == 65535) {
                o58Var.l(this);
                o58Var.c = z58Var;
                return;
            } else if (cD != '\t' && cD != '\n' && cD != '\f' && cD != '\r') {
                c58 c58Var = o58Var.i;
                c58Var.getClass();
                c58Var.m(String.valueOf(cD));
                return;
            }
        }
        o58Var.c = e88.Y;
    }
}
