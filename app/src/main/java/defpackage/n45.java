package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class n45 implements AlgorithmParameterSpec {
    public static final HashMap b;
    public final String a;

    static {
        n45 n45Var = new n45("ML-KEM-512");
        n45 n45Var2 = new n45("ML-KEM-768");
        n45 n45Var3 = new n45("ML-KEM-1024");
        HashMap map = new HashMap();
        b = map;
        map.put("ml-kem-512", n45Var);
        map.put("ml-kem-768", n45Var2);
        map.put("ml-kem-1024", n45Var3);
        map.put("kyber512", n45Var);
        map.put("kyber768", n45Var2);
        map.put("kyber1024", n45Var3);
    }

    public n45(String str) {
        this.a = str;
    }

    public static n45 a(String str) {
        if (str == null) {
            f6.n("name cannot be null");
            return null;
        }
        n45 n45Var = (n45) b.get(lq7.c(str));
        if (n45Var != null) {
            return n45Var;
        }
        c6.f("unknown parameter name: ".concat(str));
        return null;
    }
}
