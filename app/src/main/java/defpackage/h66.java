package defpackage;

import android.util.SparseArray;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h66 {
    public static final SparseArray a = new SparseArray();
    public static final HashMap b;

    static {
        HashMap map = new HashMap();
        b = map;
        map.put(d66.a, 0);
        map.put(d66.b, 1);
        map.put(d66.c, 2);
        for (d66 d66Var : map.keySet()) {
            a.append(((Integer) b.get(d66Var)).intValue(), d66Var);
        }
    }

    public static int a(d66 d66Var) {
        Integer num = (Integer) b.get(d66Var);
        if (num != null) {
            return num.intValue();
        }
        y5.g(d66Var, "PriorityMapping is missing known Priority value ");
        return 0;
    }

    public static d66 b(int i) {
        d66 d66Var = (d66) a.get(i);
        if (d66Var != null) {
            return d66Var;
        }
        c6.f(fz5.j(i, "Unknown Priority for value "));
        return null;
    }
}
