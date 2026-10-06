package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum uv5 {
    /* JADX INFO: Fake field, exist only in values array */
    DES(26113),
    /* JADX INFO: Fake field, exist only in values array */
    RC2pre52(26114),
    /* JADX INFO: Fake field, exist only in values array */
    TripleDES168(26115),
    /* JADX INFO: Fake field, exist only in values array */
    TripleDES192(26121),
    /* JADX INFO: Fake field, exist only in values array */
    AES128(26126),
    /* JADX INFO: Fake field, exist only in values array */
    AES192(26127),
    /* JADX INFO: Fake field, exist only in values array */
    AES256(26128),
    /* JADX INFO: Fake field, exist only in values array */
    RC2(26370),
    /* JADX INFO: Fake field, exist only in values array */
    RC4(26625),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(65535);

    public static final Map b;
    public final int a;

    static {
        HashMap map = new HashMap();
        for (uv5 uv5Var : values()) {
            map.put(Integer.valueOf(uv5Var.a), uv5Var);
        }
        b = Collections.unmodifiableMap(map);
    }

    uv5(int i) {
        this.a = i;
    }
}
