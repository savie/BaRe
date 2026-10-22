package defpackage;

import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class io8 implements mt3 {
    public final /* synthetic */ ConcurrentHashMap a;
    public final /* synthetic */ String b;
    public final /* synthetic */ kh6 c;

    public /* synthetic */ io8(ConcurrentHashMap concurrentHashMap, String str, kh6 kh6Var, long j) {
        this.a = concurrentHashMap;
        this.b = str;
        this.c = kh6Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        ConcurrentHashMap concurrentHashMap = this.a;
        String str = this.b;
        kh6 kh6Var = this.c;
        Long l = (Long) obj;
        l.getClass();
        concurrentHashMap.put(str, l);
        synchronized (jo8.class) {
            if (System.currentTimeMillis() - kh6Var.a > 2000) {
                Collection collectionValues = concurrentHashMap.values();
                collectionValues.getClass();
                el1.o1(collectionValues);
                kh6Var.a = System.currentTimeMillis();
            }
        }
        return be8.a;
    }
}
