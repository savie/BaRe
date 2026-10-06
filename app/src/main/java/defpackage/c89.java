package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c89 {
    public static final c89 c = new c89();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final s79 a = new s79(0);

    public final e89 a(Class cls) {
        e89 e89VarO;
        ConcurrentHashMap concurrentHashMap = this.b;
        Object obj = concurrentHashMap.get(cls);
        if (obj != null) {
            return (e89) obj;
        }
        s79 s79Var = this.a;
        s79Var.getClass();
        cz4 cz4Var = jm1.f;
        k79.class.isAssignableFrom(cls);
        d89 d89VarZza = ((rb) s79Var.b).zza(cls);
        if ((d89VarZza.d & 2) == 2) {
            e89VarO = new z79(d89VarZza.a);
        } else {
            if (t79.a[dj7.A(d89VarZza.a())] == 1) {
                cz4Var = null;
            }
            e89VarO = x79.o(d89VarZza, cz4Var);
        }
        byte[] bArr = l79.a;
        e89 e89Var = (e89) concurrentHashMap.putIfAbsent(cls, e89VarO);
        return e89Var != null ? e89Var : e89VarO;
    }
}
