package defpackage;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ab0 implements fr5 {
    public static final ab0 a = new ab0();
    public static final h63 b;

    static {
        f70 f70Var = new f70(1);
        HashMap map = new HashMap();
        map.put(r96.class, f70Var);
        b = new h63(Collections.unmodifiableMap(new HashMap(map)), "storageMetrics");
    }

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        ((gr5) obj2).a(b, ((uy3) obj).a);
    }
}
