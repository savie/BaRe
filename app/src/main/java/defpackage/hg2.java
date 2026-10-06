package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class hg2 {
    public static final Map c;
    public final int a;
    public final String b;

    static {
        HashMap map = new HashMap();
        map.put(a("SHA-256", 32, 16, 67, 10), new hg2(1, "XMSS_SHA2_10_256"));
        map.put(a("SHA-256", 32, 16, 67, 16), new hg2(2, "XMSS_SHA2_16_256"));
        map.put(a("SHA-256", 32, 16, 67, 20), new hg2(3, "XMSS_SHA2_20_256"));
        map.put(a("SHA-512", 64, 16, 131, 10), new hg2(4, "XMSS_SHA2_10_512"));
        map.put(a("SHA-512", 64, 16, 131, 16), new hg2(5, "XMSS_SHA2_16_512"));
        map.put(a("SHA-512", 64, 16, 131, 20), new hg2(6, "XMSS_SHA2_20_512"));
        map.put(a("SHAKE128", 32, 16, 67, 10), new hg2(7, "XMSS_SHAKE_10_256"));
        map.put(a("SHAKE128", 32, 16, 67, 16), new hg2(8, "XMSS_SHAKE_16_256"));
        map.put(a("SHAKE128", 32, 16, 67, 20), new hg2(9, "XMSS_SHAKE_20_256"));
        map.put(a("SHAKE256", 64, 16, 131, 10), new hg2(10, "XMSS_SHAKE_10_512"));
        map.put(a("SHAKE256", 64, 16, 131, 16), new hg2(11, "XMSS_SHAKE_16_512"));
        map.put(a("SHAKE256", 64, 16, 131, 20), new hg2(12, "XMSS_SHAKE_20_512"));
        c = Collections.unmodifiableMap(map);
    }

    public hg2(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public static String a(String str, int i, int i2, int i3, int i4) {
        return str + "-" + i + "-" + i2 + "-" + i3 + "-" + i4;
    }

    public final String toString() {
        return this.b;
    }
}
