package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ky3 {
    public final Map a;

    public ky3(bb2 bb2Var) {
        this.a = Collections.unmodifiableMap(new HashMap(bb2Var.a));
    }

    public sj7 a(Class cls) {
        return (sj7) this.a.get(cls);
    }

    public ky3(Map map) {
        this.a = map;
    }
}
