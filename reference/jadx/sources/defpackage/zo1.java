package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zo1 extends h23 {
    public final h23[] a;
    public h23 b = null;

    public zo1(h23[] h23VarArr) {
        this.a = h23VarArr;
    }

    @Override // defpackage.h23
    public final g23 b(String str) {
        h23 h23Var = this.b;
        if (h23Var != null) {
            return h23Var.b(str);
        }
        for (int i = 0; i < 2; i++) {
            h23 h23Var2 = this.a[i];
            g23 g23VarB = h23Var2.b(str);
            if (g23VarB != null) {
                this.b = h23Var2;
                return g23VarB;
            }
        }
        return null;
    }
}
