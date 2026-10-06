package defpackage;

import java.util.Date;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kj4 implements aw2 {
    public static final gj4 e = new gj4();
    public static final hj4 f = new hj4();
    public static final ij4 g = new ij4();
    public static final jj4 h = new jj4();
    public final HashMap a;
    public final HashMap b;
    public final gj4 c;
    public boolean d;

    public kj4() {
        HashMap map = new HashMap();
        this.a = map;
        HashMap map2 = new HashMap();
        this.b = map2;
        this.c = e;
        this.d = false;
        map2.put(String.class, f);
        map.remove(String.class);
        map2.put(Boolean.class, g);
        map.remove(Boolean.class);
        map2.put(Date.class, h);
        map.remove(Date.class);
    }

    public final aw2 a(Class cls, fr5 fr5Var) {
        this.a.put(cls, fr5Var);
        this.b.remove(cls);
        return this;
    }
}
