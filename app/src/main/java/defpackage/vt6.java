package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vt6 extends mt6 {
    public List b;
    public byte[] c;

    @Override // defpackage.mt6
    public final void c(zu6 zu6Var) throws iw0 {
        int iD = zu6Var.b.d(zu6Var);
        vw2 vw2Var = zu6Var.b;
        int iD2 = vw2Var.d(zu6Var);
        for (int i = 0; i < iD; i++) {
            int iD3 = vw2Var.d(zu6Var);
            xu6 xu6Var = (xu6) sz8.k0(iD3, xu6.class, null);
            if (xu6Var == null) {
                throw new IllegalStateException(String.format("Unknown SMB3HashAlgorithm with value '%d'", Integer.valueOf(iD3)));
            }
            this.b.add(xu6Var);
        }
        byte[] bArr = new byte[iD2];
        zu6Var.o(bArr, iD2);
        this.c = bArr;
    }

    @Override // defpackage.mt6
    public final int d(zu6 zu6Var) {
        List list = this.b;
        if (list == null) {
            l0.e("There should be at least 1 hash algorithm provided");
            return 0;
        }
        if (this.c == null) {
            l0.e("A salt should be provided");
            return 0;
        }
        zu6Var.k(list.size());
        zu6Var.k(this.c.length);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((xu6) it.next()).getClass();
            zu6Var.k(1);
        }
        byte[] bArr = this.c;
        zu6Var.i(bArr, bArr.length);
        return (list.size() * 2) + 4 + this.c.length;
    }
}
