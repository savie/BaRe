package defpackage;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bm9 {
    public static final bm9 c = new bm9();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final vk9 a = new vk9(0);

    public final jm9 a(Class cls) {
        jm9 tl9Var;
        Charset charset = nj9.a;
        if (cls == null) {
            f6.n("messageType");
            return null;
        }
        ConcurrentHashMap concurrentHashMap = this.b;
        jm9 jm9Var = (jm9) concurrentHashMap.get(cls);
        if (jm9Var != null) {
            return jm9Var;
        }
        vk9 vk9Var = this.a;
        vk9Var.getClass();
        ns0 ns0Var = nm9.a;
        if (!xi9.class.isAssignableFrom(cls)) {
            int i = pg9.a;
        }
        hm9 hm9VarZzb = ((z28) vk9Var.b).zzb(cls);
        if ((hm9VarZzb.d & 2) == 2) {
            int i2 = pg9.a;
            ns0 ns0Var2 = nm9.a;
            lk lkVar = ji9.a;
            tl9Var = new tl9(ns0Var2, hm9VarZzb.a);
        } else {
            int i3 = pg9.a;
            int i4 = yl9.a;
            int i5 = ok9.a;
            ns0 ns0Var3 = nm9.a;
            lk lkVar2 = hm9VarZzb.a() + (-1) != 1 ? ji9.a : null;
            int i6 = bl9.a;
            tl9Var = pl9.r(hm9VarZzb, ns0Var3, lkVar2);
        }
        jm9 jm9Var2 = (jm9) concurrentHashMap.putIfAbsent(cls, tl9Var);
        return jm9Var2 != null ? jm9Var2 : tl9Var;
    }
}
