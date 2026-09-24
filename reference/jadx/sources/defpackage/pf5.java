package defpackage;

import android.util.SparseArray;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pf5 {
    public final SparseArray a;
    public ad8 b;

    public pf5(int i) {
        this.a = new SparseArray(i);
    }

    public final void a(ad8 ad8Var, int i, int i2) {
        int iA = ad8Var.a(i);
        SparseArray sparseArray = this.a;
        pf5 pf5Var = sparseArray == null ? null : (pf5) sparseArray.get(iA);
        if (pf5Var == null) {
            pf5Var = new pf5(1);
            sparseArray.put(ad8Var.a(i), pf5Var);
        }
        if (i2 > i) {
            pf5Var.a(ad8Var, i + 1, i2);
        } else {
            pf5Var.b = ad8Var;
        }
    }
}
