package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class go3 implements mt3 {
    public final /* synthetic */ ConcurrentHashMap a;
    public final /* synthetic */ String b;
    public final /* synthetic */ kh6 c;
    public final /* synthetic */ io3 d;
    public final /* synthetic */ long e;
    public final /* synthetic */ kh6 f;

    public /* synthetic */ go3(ConcurrentHashMap concurrentHashMap, String str, kh6 kh6Var, io3 io3Var, long j, kh6 kh6Var2) {
        this.a = concurrentHashMap;
        this.b = str;
        this.c = kh6Var;
        this.d = io3Var;
        this.e = j;
        this.f = kh6Var2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        ConcurrentHashMap concurrentHashMap = this.a;
        String str = this.b;
        kh6 kh6Var = this.c;
        io3 io3Var = this.d;
        long j = this.e;
        kh6 kh6Var2 = this.f;
        Long l = (Long) obj;
        l.getClass();
        concurrentHashMap.put(str, l);
        synchronized (io3.class) {
            try {
                new rh1(kh6Var, concurrentHashMap, io3Var, j, kh6Var2).invoke();
            } catch (Exception unused) {
            }
        }
        return be8.a;
    }
}
