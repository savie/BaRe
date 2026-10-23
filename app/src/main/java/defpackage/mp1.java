package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mp1 implements ta4 {
    public final HashMap a;

    public mp1() {
        this.a = new HashMap();
    }

    @Override // defpackage.ta4
    public Object g(gy5 gy5Var, Object obj, Object obj2) {
        qn5 qn5Var = (qn5) obj;
        int i = gy5Var.b;
        String string = "/";
        if (!gy5Var.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (int i2 = i; i2 < gy5Var.c; i2++) {
                if (i2 > i) {
                    sb.append("/");
                }
                sb.append(gy5Var.a[i2].a);
            }
            string = sb.toString();
        }
        this.a.put(string, qn5Var.g0(true));
        return null;
    }

    public mp1(HashMap map) {
        this.a = map;
    }
}
