package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum z58 extends e88 {
    public z58() {
        super("Data", 0);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        int i;
        char c;
        char cI = e51Var.i();
        if (cI == 0) {
            o58Var.m(this);
            o58Var.f(e51Var.d());
            return;
        }
        if (cI == '&') {
            o58Var.a(e88.b);
            return;
        }
        if (cI == '<') {
            o58Var.a(e88.k);
            return;
        }
        if (cI == 65535) {
            o58Var.g(new z48());
            return;
        }
        e51Var.b();
        int i2 = e51Var.e;
        int i3 = e51Var.c;
        char[] cArr = e51Var.a;
        while (true) {
            i = e51Var.e;
            if (i >= i3 || (c = cArr[i]) == '&' || c == '<' || c == 0) {
                break;
            } else {
                e51Var.e = i + 1;
            }
        }
        o58Var.h(i > i2 ? e51.c(cArr, e51Var.h, i2, i - i2) : "");
    }
}
