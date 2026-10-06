package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yh5 implements ch5 {
    public final ArrayList a;
    public final d36 b;

    public yh5(ArrayList arrayList, l22 l22Var) {
        this.a = arrayList;
        this.b = l22Var;
    }

    @Override // defpackage.ch5
    public final boolean a(Object obj) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            if (((ch5) it.next()).a(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        bh5 bh5VarB;
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        jo4 jo4Var = null;
        for (int i3 = 0; i3 < size; i3++) {
            ch5 ch5Var = (ch5) arrayList.get(i3);
            if (ch5Var.a(obj) && (bh5VarB = ch5Var.b(obj, i, i2, ou5Var)) != null) {
                jo4Var = bh5VarB.a;
                arrayList2.add(bh5VarB.c);
            }
        }
        if (arrayList2.isEmpty() || jo4Var == null) {
            return null;
        }
        return new bh5(jo4Var, new xh5(arrayList2, this.b));
    }

    public final String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.a.toArray()) + '}';
    }
}
