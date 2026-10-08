package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mi5 implements mt3 {
    public final /* synthetic */ ni5 a;
    public final /* synthetic */ oi5 b;
    public final /* synthetic */ mt3 c;

    public /* synthetic */ mi5(ni5 ni5Var, oi5 oi5Var, mt3 mt3Var) {
        this.a = ni5Var;
        this.b = oi5Var;
        this.c = mt3Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        mt3 mt3Var = this.c;
        long jLongValue = ((Long) obj).longValue();
        this.a.d.addAndGet(jLongValue);
        oi5 oi5Var = this.b;
        AtomicLong atomicLong = oi5Var.J;
        atomicLong.addAndGet(jLongValue);
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            AtomicLong atomicLong2 = oi5Var.K;
            long j = atomicLong2.get();
            if (jCurrentTimeMillis - j >= 2000 && atomicLong2.compareAndSet(j, jCurrentTimeMillis)) {
                long j2 = atomicLong.get();
                long j3 = oi5Var.c;
                if (j2 > j3) {
                    j2 = j3;
                }
                mt3Var.invoke(Long.valueOf(j2));
            }
        } catch (Exception unused) {
        }
        return be8.a;
    }
}
