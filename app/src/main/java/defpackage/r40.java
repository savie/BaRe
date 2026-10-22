package defpackage;

import java.util.ArrayList;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r40 extends ha4 {
    public static final Comparator b = Comparator.comparing(new q40(0));

    static {
        ArrayList arrayList = new ArrayList();
        if (arrayList.size() == 2 && arrayList.get(0) != null) {
            arrayList.toArray();
            return;
        }
        Object[] array = arrayList.toArray();
        for (int i = 0; i < array.length; i += 2) {
            zd4 zd4Var = (zd4) array[i];
            if (zd4Var != null && zd4Var.b.isEmpty()) {
                array[i] = null;
            }
        }
        new r40(array, b);
    }
}
