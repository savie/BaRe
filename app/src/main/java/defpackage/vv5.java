package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum vv5 {
    /* JADX INFO: Fake field, exist only in values array */
    NONE(0),
    /* JADX INFO: Fake field, exist only in values array */
    CRC32(1),
    /* JADX INFO: Fake field, exist only in values array */
    MD5(32771),
    /* JADX INFO: Fake field, exist only in values array */
    SHA1(32772),
    /* JADX INFO: Fake field, exist only in values array */
    RIPEND160(32775),
    /* JADX INFO: Fake field, exist only in values array */
    SHA256(32780),
    /* JADX INFO: Fake field, exist only in values array */
    SHA384(32781),
    /* JADX INFO: Fake field, exist only in values array */
    SHA512(32782);

    public static final Map b;
    public final int a;

    static {
        HashMap map = new HashMap();
        for (vv5 vv5Var : values()) {
            map.put(Integer.valueOf(vv5Var.a), vv5Var);
        }
        b = Collections.unmodifiableMap(map);
    }

    vv5(int i) {
        this.a = i;
    }
}
