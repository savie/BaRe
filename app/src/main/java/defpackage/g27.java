package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g27 implements h07 {
    public final h07 a;
    public final long b;
    public final ConcurrentHashMap c;

    public g27(h07 h07Var, long j) {
        h07Var.getClass();
        this.a = h07Var;
        this.b = j;
        this.c = new ConcurrentHashMap();
    }

    @Override // defpackage.h07
    public final void a(f07 f07Var) {
        String str = f07Var.e;
        k07 k07Var = f07Var.b;
        i07 i07Var = f07Var.a;
        m07 m07Var = f07Var.d;
        m07 m07Var2 = m07.Progress;
        h07 h07Var = this.a;
        ConcurrentHashMap concurrentHashMap = this.c;
        if (m07Var != m07Var2) {
            if (m07Var == m07.Completed) {
                concurrentHashMap.remove(new e86(i07Var, k07Var, str));
            }
            h07Var.a(f07Var);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long l = (Long) concurrentHashMap.get(new e86(i07Var, k07Var, str));
        if (l == null || jCurrentTimeMillis - l.longValue() >= this.b) {
            concurrentHashMap.put(new e86(i07Var, k07Var, str), Long.valueOf(jCurrentTimeMillis));
            h07Var.a(f07Var);
        }
    }
}
