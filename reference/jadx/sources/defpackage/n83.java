package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class n83 {
    public static final HashMap a;
    public static final HashMap b;

    static {
        HashMap map = new HashMap();
        a = map;
        HashMap map2 = new HashMap();
        b = map2;
        map2.put(s63.class, new e83());
        map2.put(t63.class, new u73(1));
        map2.put(u63.class, new h83());
        i83 i83Var = new i83();
        map2.put(v63.class, i83Var);
        map.put(v63.class, i83Var);
        j83 j83Var = new j83();
        map2.put(a73.class, j83Var);
        map.put(a73.class, j83Var);
        map.put(j73.class, new k83());
        map2.put(k73.class, new z73(1));
        map2.put(da3.class, new a83(1));
        map.put(l73.class, new l83());
        map2.put(p83.class, new u73(0));
        v73 v73Var = new v73();
        map2.put(x83.class, v73Var);
        map.put(x83.class, v73Var);
        map2.put(d93.class, new w73());
        map2.put(u93.class, new x73());
        map2.put(b73.class, new y73());
        map2.put(h73.class, new z73(0));
        map2.put(n73.class, new a83(0));
        map2.put(p73.class, new b83());
        map2.put(q73.class, new c83());
        map2.put(y83.class, new d83());
        map.put(j93.class, new f83());
        map.put(q83.class, new g83());
    }

    public static r73 a(Class cls) {
        r73 r73Var = (r73) b.get(cls);
        if (r73Var != null) {
            return r73Var;
        }
        c6.f(fz5.k(cls, "FileInformationClass not supported - "));
        return null;
    }

    public static u93 b(ow0 ow0Var) {
        ow0Var.b.a(ow0Var);
        vw2 vw2Var = ow0Var.b;
        long jF = vw2Var.f(ow0Var);
        vw2Var.e(ow0Var);
        ow0Var.n();
        boolean z = ow0Var.n() != 0;
        ow0Var.t(2);
        u93 u93Var = new u93();
        u93Var.a = jF;
        u93Var.b = z;
        return u93Var;
    }

    public static void c(j93 j93Var, zu6 zu6Var) {
        j93Var.getClass();
        zu6Var.f((byte) 1);
        zu6Var.i(new byte[]{0, 0, 0, 0, 0, 0, 0}, 7);
        zu6Var.m(0L);
        zu6Var.l(((long) j93Var.a) * 2);
        byte[] bytes = j93Var.b.getBytes(h51.c);
        zu6Var.i(bytes, bytes.length);
    }
}
