package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nz implements mt3 {
    public final /* synthetic */ ConcurrentHashMap a;
    public final /* synthetic */ gz b;
    public final /* synthetic */ kh6 c;
    public final /* synthetic */ a00 d;
    public final /* synthetic */ long e;
    public final /* synthetic */ kh6 f;

    public /* synthetic */ nz(ConcurrentHashMap concurrentHashMap, gz gzVar, kh6 kh6Var, a00 a00Var, long j, kh6 kh6Var2) {
        this.a = concurrentHashMap;
        this.b = gzVar;
        this.c = kh6Var;
        this.d = a00Var;
        this.e = j;
        this.f = kh6Var2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        ConcurrentHashMap concurrentHashMap = this.a;
        gz gzVar = this.b;
        kh6 kh6Var = this.c;
        a00 a00Var = this.d;
        long j = this.e;
        kh6 kh6Var2 = this.f;
        Long l = (Long) obj;
        l.getClass();
        concurrentHashMap.put(gzVar, l);
        synchronized (a00.class) {
            try {
                new oz(kh6Var, concurrentHashMap, a00Var, j, kh6Var2).invoke();
            } catch (Exception unused) {
            }
        }
        return be8.a;
    }
}
