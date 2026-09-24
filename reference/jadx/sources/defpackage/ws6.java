package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ws6 extends mt6 {
    public List b;

    @Override // defpackage.mt6
    public final void c(zu6 zu6Var) {
        int iD = zu6Var.b.d(zu6Var);
        for (int i = 0; i < iD; i++) {
            this.b.add((wu6) sz8.k0(zu6Var.b.d(zu6Var), wu6.class, null));
        }
    }

    @Override // defpackage.mt6
    public final int d(zu6 zu6Var) {
        List list = this.b;
        if (list == null || list.isEmpty()) {
            l0.e("Cannot serialize an empty or null cipherList");
            return 0;
        }
        zu6Var.k(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zu6Var.k((int) ((wu6) it.next()).a);
        }
        return (list.size() * 2) + 2;
    }
}
