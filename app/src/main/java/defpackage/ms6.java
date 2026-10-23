package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ms6 extends mt6 {
    public ArrayList b;

    @Override // defpackage.mt6
    public final void c(zu6 zu6Var) throws iw0 {
        int iD = zu6Var.b.d(zu6Var);
        zu6Var.t(2);
        zu6Var.t(4);
        for (int i = 0; i < iD; i++) {
            int iD2 = zu6Var.b.d(zu6Var);
            tu6 tu6Var = (tu6) sz8.k0(iD2, tu6.class, null);
            if (tu6Var == null) {
                throw new IllegalStateException(String.format("Unknown SMB3CompressionAlgorithm with value '%d'", Integer.valueOf(iD2)));
            }
            this.b.add(tu6Var);
        }
    }

    @Override // defpackage.mt6
    public final int d(zu6 zu6Var) {
        ArrayList arrayList = this.b;
        if (arrayList == null) {
            l0.e("Cannot write a null compressionAlgorithms array");
            return 0;
        }
        zu6Var.k(arrayList.size());
        zu6Var.v();
        zu6Var.w();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            zu6Var.k((int) ((tu6) it.next()).a);
        }
        return (arrayList.size() * 2) + 8;
    }
}
