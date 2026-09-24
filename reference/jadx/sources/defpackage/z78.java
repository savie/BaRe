package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum z78 extends e88 {
    public z78() {
        super("CdataSection", 66);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        String strC;
        StringBuilder sb = o58Var.h;
        int iP = e51Var.p("]]>");
        String[] strArr = e51Var.h;
        char[] cArr = e51Var.a;
        if (iP != -1) {
            strC = e51.c(cArr, strArr, e51Var.e, iP);
            e51Var.e += iP;
        } else {
            e51Var.b();
            int i = e51Var.e;
            strC = e51.c(cArr, strArr, i, e51Var.c - i);
            e51Var.e = e51Var.c;
        }
        sb.append(strC);
        if (e51Var.k("]]>") || e51Var.j()) {
            String string = sb.toString();
            v48 v48Var = new v48(5);
            v48Var.c = string;
            o58Var.g(v48Var);
            o58Var.c = e88.a;
        }
    }
}
