package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s96 {
    public static final s96 c = new s96();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final rb a = new rb(1);

    public final k57 a(Class cls) {
        d13 d13Var;
        k57 k57VarW;
        Class cls2;
        yd4.a(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.b;
        k57 k57Var = (k57) concurrentHashMap.get(cls);
        if (k57Var != null) {
            return k57Var;
        }
        rb rbVar = this.a;
        rbVar.getClass();
        Class cls3 = u57.a;
        if (!av3.class.isAssignableFrom(cls) && (cls2 = u57.a) != null && !cls2.isAssignableFrom(cls)) {
            c6.f("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            return null;
        }
        hf6 hf6VarA = ((x55) rbVar.b).a(cls);
        if ((hf6VarA.d & 2) == 2) {
            if (av3.class.isAssignableFrom(cls)) {
                k57VarW = new td5(u57.c, e13.a, hf6VarA.a);
            } else {
                ke8 ke8Var = u57.b;
                d13 d13Var2 = e13.b;
                if (d13Var2 == null) {
                    l0.e("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                k57VarW = new td5(ke8Var, d13Var2, hf6VarA.a);
            }
        } else if (av3.class.isAssignableFrom(cls)) {
            pm5 pm5Var = qm5.b;
            yw4 yw4Var = zw4.b;
            ke8 ke8Var2 = u57.c;
            d13 d13Var3 = dj7.A(hf6VarA.a()) != 1 ? e13.a : null;
            l65 l65Var = m65.b;
            if (!(hf6VarA instanceof hf6)) {
                int[] iArr = sd5.n;
                e6.d();
                return null;
            }
            k57VarW = sd5.w(hf6VarA, pm5Var, yw4Var, ke8Var2, d13Var3, l65Var);
        } else {
            pm5 pm5Var2 = qm5.a;
            yw4 yw4Var2 = zw4.a;
            ke8 ke8Var3 = u57.b;
            if (dj7.A(hf6VarA.a()) != 1) {
                d13 d13Var4 = e13.b;
                if (d13Var4 == null) {
                    l0.e("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                d13Var = d13Var4;
            } else {
                d13Var = null;
            }
            l65 l65Var2 = m65.a;
            if (!(hf6VarA instanceof hf6)) {
                int[] iArr2 = sd5.n;
                e6.d();
                return null;
            }
            k57VarW = sd5.w(hf6VarA, pm5Var2, yw4Var2, ke8Var3, d13Var, l65Var2);
        }
        k57 k57Var2 = (k57) concurrentHashMap.putIfAbsent(cls, k57VarW);
        return k57Var2 != null ? k57Var2 : k57VarW;
    }
}
