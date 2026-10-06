package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rw7 implements p75 {
    public final /* synthetic */ uw7 a;

    public rw7(uw7 uw7Var) {
        this.a = uw7Var;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    @Override // defpackage.p75
    public final void a(bs2 bs2Var, on5 on5Var) {
        tj7 tj7Var;
        int i;
        lw7 lw7Var = (lw7) on5Var;
        int iG = bs2Var.g();
        bs2Var.j(lw7Var);
        uw7 uw7Var = this.a;
        int i2 = 2;
        if (uw7Var.b == null) {
            uw7Var.b = new ArrayList(2);
        }
        ArrayList arrayList = uw7Var.b;
        kw7 kw7Var = lw7Var.g;
        if (kw7Var == null) {
            i2 = 0;
        } else {
            int iOrdinal = kw7Var.ordinal();
            if (iOrdinal == 1) {
                i2 = 1;
            } else if (iOrdinal != 2) {
                i2 = 0;
            }
        }
        wj7 wj7Var = (wj7) bs2Var.d;
        StringBuilder sb = wj7Var.a;
        int length = sb.length();
        uj7 uj7Var = new uj7(sb.subSequence(iG, length));
        Iterator it = wj7Var.b.iterator();
        while (it.hasNext() && (tj7Var = (tj7) it.next()) != null) {
            int i3 = tj7Var.b;
            if (i3 >= iG && (i = tj7Var.c) <= length) {
                uj7Var.setSpan(tj7Var.a, i3 - iG, i - iG, 33);
                it.remove();
            }
        }
        sb.replace(iG, length, "");
        arrayList.add(new zw7(i2, uj7Var));
        uw7Var.c = lw7Var.f;
    }
}
