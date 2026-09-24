package defpackage;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class za0 implements fr5 {
    public static final za0 a = new za0();
    public static final h63 b;
    public static final h63 c;
    public static final h63 d;
    public static final h63 e;

    static {
        f70 f70Var = new f70(1);
        HashMap map = new HashMap();
        map.put(r96.class, f70Var);
        b = new h63(Collections.unmodifiableMap(new HashMap(map)), "window");
        f70 f70Var2 = new f70(2);
        HashMap map2 = new HashMap();
        map2.put(r96.class, f70Var2);
        c = new h63(Collections.unmodifiableMap(new HashMap(map2)), "logSourceMetrics");
        f70 f70Var3 = new f70(3);
        HashMap map3 = new HashMap();
        map3.put(r96.class, f70Var3);
        d = new h63(Collections.unmodifiableMap(new HashMap(map3)), "globalMetrics");
        f70 f70Var4 = new f70(4);
        HashMap map4 = new HashMap();
        map4.put(r96.class, f70Var4);
        e = new h63(Collections.unmodifiableMap(new HashMap(map4)), "appNamespace");
    }

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        y91 y91Var = (y91) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, y91Var.a);
        gr5Var.a(c, y91Var.b);
        gr5Var.a(d, y91Var.c);
        gr5Var.a(e, y91Var.d);
    }
}
