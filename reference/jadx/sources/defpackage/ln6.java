package defpackage;

import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ln6 {
    public final ScheduledExecutorService a;
    public final u00 b;
    public ScheduledFuture h;
    public long i;
    public final Random g = new Random();
    public boolean j = true;
    public final long c = 1000;
    public final long d = 30000;
    public final double f = 1.3d;
    public final double e = 0.7d;

    public ln6(ScheduledExecutorService scheduledExecutorService, u00 u00Var) {
        this.a = scheduledExecutorService;
        this.b = u00Var;
    }
}
