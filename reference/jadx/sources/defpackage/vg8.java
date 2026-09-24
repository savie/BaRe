package defpackage;

import java.io.Closeable;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vg8 implements Closeable {
    public final LinkedBlockingQueue a;
    public final /* synthetic */ wg8 b;

    public vg8(wg8 wg8Var, ug8 ug8Var) {
        this.b = wg8Var;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.a = linkedBlockingQueue;
        wg8.n.k("Creating new CachedOtpConnection");
        linkedBlockingQueue.offer(ug8Var);
        wg8Var.a.submit(new xy1(5, this, ug8Var));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.offer(wg8.p);
    }
}
