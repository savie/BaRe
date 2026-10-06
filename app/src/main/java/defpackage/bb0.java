package defpackage;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bb0 implements fr5 {
    public static final bb0 a = new bb0();
    public static final h63 b;
    public static final h63 c;

    static {
        f70 f70Var = new f70(1);
        HashMap map = new HashMap();
        map.put(r96.class, f70Var);
        b = new h63(Collections.unmodifiableMap(new HashMap(map)), "eventsDroppedCount");
        f70 f70Var2 = new f70(3);
        HashMap map2 = new HashMap();
        map2.put(r96.class, f70Var2);
        c = new h63(Collections.unmodifiableMap(new HashMap(map2)), "reason");
    }

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        d15 d15Var = (d15) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.g(b, d15Var.a);
        gr5Var.a(c, d15Var.b);
    }
}
