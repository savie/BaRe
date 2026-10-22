package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y81 {
    public final HashMap a = new HashMap();
    public final HashMap b;

    public y81(HashMap map) {
        this.b = map;
        for (Map.Entry entry : map.entrySet()) {
            rt4 rt4Var = (rt4) entry.getValue();
            List arrayList = (List) this.a.get(rt4Var);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.a.put(rt4Var, arrayList);
            }
            arrayList.add((z81) entry.getKey());
        }
    }

    public static void a(List list, fu4 fu4Var, rt4 rt4Var, eu4 eu4Var) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                z81 z81Var = (z81) list.get(size);
                Method method = z81Var.b;
                try {
                    int i = z81Var.a;
                    if (i == 0) {
                        method.invoke(eu4Var, null);
                    } else if (i == 1) {
                        method.invoke(eu4Var, fu4Var);
                    } else if (i == 2) {
                        method.invoke(eu4Var, fu4Var, rt4Var);
                    }
                } catch (IllegalAccessException e) {
                    y5.k(e);
                    return;
                } catch (InvocationTargetException e2) {
                    e6.i("Failed to call observer method", e2.getCause());
                    return;
                }
            }
        }
    }
}
