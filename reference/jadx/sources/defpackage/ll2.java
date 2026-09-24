package defpackage;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class ll2 {
    public static final HashMap a;
    public static final HashMap b;

    static {
        HashMap map = new HashMap();
        a = map;
        HashMap map2 = new HashMap();
        b = map2;
        f1 f1Var = pj5.a;
        map.put("SHA-256", f1Var);
        f1 f1Var2 = pj5.b;
        map.put("SHA-512", f1Var2);
        f1 f1Var3 = pj5.e;
        map.put("SHAKE128", f1Var3);
        f1 f1Var4 = pj5.f;
        map.put("SHAKE256", f1Var4);
        map2.put(f1Var, "SHA-256");
        map2.put(f1Var2, "SHA-512");
        map2.put(f1Var3, "SHAKE128");
        map2.put(f1Var4, "SHAKE256");
    }

    public static hl2 a(f1 f1Var) {
        if (f1Var.s(pj5.a)) {
            return new hr6();
        }
        if (f1Var.s(pj5.b)) {
            return new kr6();
        }
        if (f1Var.s(pj5.e)) {
            return new lr6(128);
        }
        if (f1Var.s(pj5.f)) {
            return new lr6(256);
        }
        g84.k(f1Var, "unrecognized digest OID: ");
        return null;
    }

    public static f1 b(String str) {
        f1 f1Var = (f1) a.get(str);
        if (f1Var != null) {
            return f1Var;
        }
        c6.f(xs1.j("unrecognized digest name: ", str));
        return null;
    }
}
