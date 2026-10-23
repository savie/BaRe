package defpackage;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c13 {
    public static volatile c13 a;
    public static final c13 b;

    static {
        c13 c13Var = new c13();
        Map map = Collections.EMPTY_MAP;
        b = c13Var;
    }

    public static c13 a() {
        c13 c13Var;
        s96 s96Var = s96.c;
        c13 c13Var2 = a;
        if (c13Var2 != null) {
            return c13Var2;
        }
        synchronized (c13.class) {
            try {
                c13Var = a;
                if (c13Var == null) {
                    Class cls = b13.a;
                    c13 c13Var3 = null;
                    if (cls != null) {
                        try {
                            c13Var3 = (c13) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                        } catch (Exception unused) {
                        }
                    }
                    c13Var = c13Var3 != null ? c13Var3 : b;
                    a = c13Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c13Var;
    }
}
