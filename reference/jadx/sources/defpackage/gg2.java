package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class gg2 {
    public static final Map c;
    public final int a;
    public final String b;

    static {
        HashMap map = new HashMap();
        xs1.p(1, "XMSSMT_SHA2_20/2_256", map, a("SHA-256", 32, 16, 67, 20, 2));
        xs1.p(2, "XMSSMT_SHA2_20/4_256", map, a("SHA-256", 32, 16, 67, 20, 4));
        xs1.p(3, "XMSSMT_SHA2_40/2_256", map, a("SHA-256", 32, 16, 67, 40, 2));
        xs1.p(4, "XMSSMT_SHA2_40/4_256", map, a("SHA-256", 32, 16, 67, 40, 4));
        xs1.p(5, "XMSSMT_SHA2_40/8_256", map, a("SHA-256", 32, 16, 67, 40, 8));
        xs1.p(6, "XMSSMT_SHA2_60/3_256", map, a("SHA-256", 32, 16, 67, 60, 3));
        xs1.p(7, "XMSSMT_SHA2_60/6_256", map, a("SHA-256", 32, 16, 67, 60, 6));
        xs1.p(8, "XMSSMT_SHA2_60/12_256", map, a("SHA-256", 32, 16, 67, 60, 12));
        xs1.p(9, "XMSSMT_SHA2_20/2_512", map, a("SHA-512", 64, 16, 131, 20, 2));
        xs1.p(10, "XMSSMT_SHA2_20/4_512", map, a("SHA-512", 64, 16, 131, 20, 4));
        xs1.p(11, "XMSSMT_SHA2_40/2_512", map, a("SHA-512", 64, 16, 131, 40, 2));
        xs1.p(12, "XMSSMT_SHA2_40/4_512", map, a("SHA-512", 64, 16, 131, 40, 4));
        xs1.p(13, "XMSSMT_SHA2_40/8_512", map, a("SHA-512", 64, 16, 131, 40, 8));
        xs1.p(14, "XMSSMT_SHA2_60/3_512", map, a("SHA-512", 64, 16, 131, 60, 3));
        xs1.p(15, "XMSSMT_SHA2_60/6_512", map, a("SHA-512", 64, 16, 131, 60, 6));
        xs1.p(16, "XMSSMT_SHA2_60/12_512", map, a("SHA-512", 64, 16, 131, 60, 12));
        xs1.p(17, "XMSSMT_SHAKE_20/2_256", map, a("SHAKE128", 32, 16, 67, 20, 2));
        xs1.p(18, "XMSSMT_SHAKE_20/4_256", map, a("SHAKE128", 32, 16, 67, 20, 4));
        xs1.p(19, "XMSSMT_SHAKE_40/2_256", map, a("SHAKE128", 32, 16, 67, 40, 2));
        xs1.p(20, "XMSSMT_SHAKE_40/4_256", map, a("SHAKE128", 32, 16, 67, 40, 4));
        xs1.p(21, "XMSSMT_SHAKE_40/8_256", map, a("SHAKE128", 32, 16, 67, 40, 8));
        xs1.p(22, "XMSSMT_SHAKE_60/3_256", map, a("SHAKE128", 32, 16, 67, 60, 3));
        xs1.p(23, "XMSSMT_SHAKE_60/6_256", map, a("SHAKE128", 32, 16, 67, 60, 6));
        xs1.p(24, "XMSSMT_SHAKE_60/12_256", map, a("SHAKE128", 32, 16, 67, 60, 12));
        xs1.p(25, "XMSSMT_SHAKE_20/2_512", map, a("SHAKE256", 64, 16, 131, 20, 2));
        xs1.p(26, "XMSSMT_SHAKE_20/4_512", map, a("SHAKE256", 64, 16, 131, 20, 4));
        xs1.p(27, "XMSSMT_SHAKE_40/2_512", map, a("SHAKE256", 64, 16, 131, 40, 2));
        xs1.p(28, "XMSSMT_SHAKE_40/4_512", map, a("SHAKE256", 64, 16, 131, 40, 4));
        xs1.p(29, "XMSSMT_SHAKE_40/8_512", map, a("SHAKE256", 64, 16, 131, 40, 8));
        xs1.p(30, "XMSSMT_SHAKE_60/3_512", map, a("SHAKE256", 64, 16, 131, 60, 3));
        xs1.p(31, "XMSSMT_SHAKE_60/6_512", map, a("SHAKE256", 64, 16, 131, 60, 6));
        map.put(a("SHAKE256", 64, 16, 131, 60, 12), new gg2(32, "XMSSMT_SHAKE_60/12_512"));
        c = Collections.unmodifiableMap(map);
    }

    public gg2(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public static String a(String str, int i, int i2, int i3, int i4, int i5) {
        if (str == null) {
            f6.n("algorithmName == null");
            return null;
        }
        return str + "-" + i + "-" + i2 + "-" + i3 + "-" + i4 + "-" + i5;
    }

    public final String toString() {
        return this.b;
    }
}
