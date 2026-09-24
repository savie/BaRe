package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface q18 {
    static q18 d(q18... q18VarArr) {
        List listAsList = Arrays.asList(q18VarArr);
        ArrayList arrayList = new ArrayList();
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((q18) it.next());
        }
        if (arrayList.isEmpty()) {
            return fo5.a;
        }
        return arrayList.size() == 1 ? (q18) arrayList.get(0) : new ki5(arrayList);
    }

    void a(t40 t40Var, HashMap map, r18 r18Var);

    Collection b();

    t40 c(t40 t40Var, Object obj, p18 p18Var);
}
