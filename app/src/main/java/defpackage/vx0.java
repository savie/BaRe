package defpackage;

import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class vx0 {
    public final ArrayBlockingQueue a;
    public final long b;

    public vx0(int i, long j) {
        this.a = new ArrayBlockingQueue(i);
        this.b = j;
        for (int i2 = 0; i2 < i - 1; i2++) {
            if (!this.a.offer(new ox0(j))) {
                g84.h("unable to allocate byte buffer; this should not happen");
                throw null;
            }
        }
    }

    public final ox0 a() {
        ox0 ox0Var = (ox0) this.a.poll();
        return ox0Var != null ? ox0Var : new ox0(this.b);
    }
}
