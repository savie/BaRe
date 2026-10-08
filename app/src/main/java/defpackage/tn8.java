package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class tn8 {
    public static final Map b;
    public final String a;

    static {
        HashMap map = new HashMap();
        map.put(a(32, 67, "SHA-256"), new tn8(16777217, "WOTSP_SHA2-256_W16"));
        map.put(a(64, 131, "SHA-512"), new tn8(33554434, "WOTSP_SHA2-512_W16"));
        map.put(a(32, 67, "SHAKE128"), new tn8(50331651, "WOTSP_SHAKE128_W16"));
        map.put(a(64, 131, "SHAKE256"), new tn8(67108868, "WOTSP_SHAKE256_W16"));
        b = Collections.unmodifiableMap(map);
    }

    public tn8(int i, String str) {
        this.a = str;
    }

    public static String a(int i, int i2, String str) {
        return str + "-" + i + "-16-" + i2;
    }

    public final String toString() {
        return this.a;
    }
}
