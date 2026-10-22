package defpackage;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dk9 {
    public static final dk9 c = new dk9();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final rb a = new rb(2);

    public final jk9 a(Class cls) {
        jk9 jk9VarN;
        Class cls2;
        Charset charset = vh9.a;
        if (cls == null) {
            f6.n("messageType");
            return null;
        }
        ConcurrentHashMap concurrentHashMap = this.b;
        jk9 jk9Var = (jk9) concurrentHashMap.get(cls);
        if (jk9Var != null) {
            return jk9Var;
        }
        rb rbVar = this.a;
        rbVar.getClass();
        Class cls3 = nk9.a;
        if (!ih9.class.isAssignableFrom(cls) && (cls2 = nk9.a) != null && !cls2.isAssignableFrom(cls)) {
            c6.f("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            return null;
        }
        hk9 hk9VarZzb = ((pi9) rbVar.b).zzb(cls);
        if ((hk9VarZzb.c & 2) == 2) {
            if (ih9.class.isAssignableFrom(cls)) {
                jk9VarN = new rj9(nk9.c, xg9.a, hk9VarZzb.a);
            } else {
                jl9 jl9Var = nk9.b;
                wg9 wg9Var = xg9.b;
                if (wg9Var == null) {
                    l0.e("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                jk9VarN = new rj9(jl9Var, wg9Var, hk9VarZzb.a);
            }
        } else if (ih9.class.isAssignableFrom(cls)) {
            if (((hk9VarZzb.c & 1) != 0 ? 1 : 2) - 1 != 1) {
                int i = zj9.a;
                ii9 ii9Var = li9.b;
                jl9 jl9Var2 = nk9.c;
                wg9 wg9Var2 = xg9.a;
                int i2 = wi9.a;
                jk9VarN = oj9.n(hk9VarZzb, ii9Var, jl9Var2);
            } else {
                int i3 = zj9.a;
                ii9 ii9Var2 = li9.b;
                jl9 jl9Var3 = nk9.c;
                int i4 = wi9.a;
                jk9VarN = oj9.n(hk9VarZzb, ii9Var2, jl9Var3);
            }
        } else {
            if (((hk9VarZzb.c & 1) != 0 ? 1 : 2) - 1 != 1) {
                int i5 = zj9.a;
                gi9 gi9Var = li9.a;
                jl9 jl9Var4 = nk9.b;
                if (xg9.b == null) {
                    l0.e("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                int i6 = wi9.a;
                jk9VarN = oj9.n(hk9VarZzb, gi9Var, jl9Var4);
            } else {
                int i7 = zj9.a;
                gi9 gi9Var2 = li9.a;
                jl9 jl9Var5 = nk9.b;
                int i8 = wi9.a;
                jk9VarN = oj9.n(hk9VarZzb, gi9Var2, jl9Var5);
            }
        }
        jk9 jk9Var2 = (jk9) concurrentHashMap.putIfAbsent(cls, jk9VarN);
        return jk9Var2 == null ? jk9VarN : jk9Var2;
    }
}
