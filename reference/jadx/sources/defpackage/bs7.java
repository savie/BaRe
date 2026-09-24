package defpackage;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bs7 implements w74 {
    public volatile boolean a = false;
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final LinkedBlockingQueue c = new LinkedBlockingQueue();

    @Override // defpackage.w74
    public final synchronized l15 c(String str) {
        as7 as7Var;
        as7Var = (as7) this.b.get(str);
        if (as7Var == null) {
            as7Var = new as7(str, this.c, this.a);
            this.b.put(str, as7Var);
        }
        return as7Var;
    }
}
