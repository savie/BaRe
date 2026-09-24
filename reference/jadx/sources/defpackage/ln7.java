package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ln7 {
    public static final HashMap a;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(boolean[].class.getName(), new dn7(boolean[].class));
        map.put(byte[].class.getName(), new nx0(0));
        map.put(char[].class.getName(), new en7(char[].class));
        map.put(short[].class.getName(), new jn7(short[].class));
        map.put(int[].class.getName(), new hn7(int[].class));
        map.put(long[].class.getName(), new in7(long[].class));
        map.put(float[].class.getName(), new gn7());
        map.put(double[].class.getName(), new fn7());
    }

    public static void a(Class cls) {
        lc8.c.getClass();
        jc8 jc8Var = lc8.d;
        if (!jc8Var.f() || lc8.a(cls) == null) {
            new yg7(cls, jc8Var, null, null);
        }
    }
}
