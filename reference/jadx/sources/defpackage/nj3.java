package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nj3 {
    public static void a(ww4 ww4Var, pj3 pj3Var, Long l, Long l2, Long l3, Integer num) {
        if (io4.h(l2) > 0 || io4.h(l3) > 0) {
            ww4Var.add(new oj3(pj3Var, (l == null || l.longValue() <= 0) ? null : l, (l2 == null || l2.longValue() <= 0) ? null : l2, (l3 == null || l3.longValue() <= 0) ? null : l3, (num == null || num.intValue() <= 0) ? null : num));
        }
    }

    public static Long b(vm3 vm3Var) {
        Object bn6Var;
        try {
            bn6Var = Long.valueOf(vm3Var.getDate());
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (bn6Var instanceof bn6) {
            bn6Var = null;
        }
        Long l = (Long) bn6Var;
        if (l == null || l.longValue() <= 0) {
            return null;
        }
        return l;
    }

    public static Long c(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        long jH = 0;
        while (it.hasNext()) {
            Long l = (Long) it.next();
            if (io4.h(l) <= 0) {
                return null;
            }
            jH += io4.h(l);
        }
        return Long.valueOf(jH);
    }
}
