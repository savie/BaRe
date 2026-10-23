package defpackage;

import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xr7 {
    public static final gj1 f = new gj1(3);
    public final n3 b;
    public final x74 c;
    public final yr7 d;
    public final UUID a = UUID.randomUUID();
    public final CopyOnWriteArrayList e = new CopyOnWriteArrayList();

    public xr7(yr7 yr7Var, x74 x74Var, n3 n3Var) {
        this.d = yr7Var;
        this.c = x74Var;
        this.b = n3Var;
    }

    public final void a(AutoCloseable autoCloseable) {
        this.b.add(autoCloseable);
        for (Runnable runnable : (Runnable[]) this.e.toArray(new Runnable[0])) {
            runnable.run();
        }
    }
}
