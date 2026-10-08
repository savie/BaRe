package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yj6 {
    public static final yj6 b = new yj6();
    public final HashMap a = new HashMap();

    public static wj6 a(uc2 uc2Var, xj6 xj6Var) {
        wj6 wj6Var;
        yj6 yj6Var = b;
        yj6Var.getClass();
        synchronized (uc2Var) {
            if (!uc2Var.j) {
                uc2Var.j = true;
                uc2Var.c();
            }
        }
        String str = "https://" + xj6Var.a + "/" + xj6Var.c;
        synchronized (yj6Var.a) {
            try {
                if (!yj6Var.a.containsKey(uc2Var)) {
                    yj6Var.a.put(uc2Var, new HashMap());
                }
                Map map = (Map) yj6Var.a.get(uc2Var);
                if (map.containsKey(str)) {
                    throw new IllegalStateException("createLocalRepo() called for existing repo.");
                }
                wj6Var = new wj6(uc2Var, xj6Var);
                map.put(str, wj6Var);
            } catch (Throwable th) {
                throw th;
            }
        }
        return wj6Var;
    }
}
