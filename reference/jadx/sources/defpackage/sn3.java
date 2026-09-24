package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sn3 {
    public final qp3 a;
    public im3 b;
    public final rn3 c = new rn3();
    public boolean d;

    public sn3(qp3 qp3Var) {
        this.a = qp3Var;
    }

    public final boolean a() {
        if (this.d) {
            return true;
        }
        ArrayList arrayList = this.c.b;
        if (arrayList != null && arrayList.isEmpty()) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = ((hm3) it.next()).a;
            if (str != null && str.length() != 0) {
                return true;
            }
        }
        return false;
    }
}
