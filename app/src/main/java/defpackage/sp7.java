package defpackage;

import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sp7 extends ReferenceQueue implements Runnable, Iterable {
    public final ConcurrentHashMap a;
    public final ConcurrentHashMap b;

    static {
        new y16(1);
        new AtomicLong();
    }

    public sp7(ConcurrentHashMap concurrentHashMap) {
        this.a = concurrentHashMap;
        this.b = concurrentHashMap;
        Thread thread = new Thread(this);
        thread.setName("weak-ref-cleaner-strictcontextstorage");
        thread.setPriority(1);
        thread.setDaemon(true);
        thread.start();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new n5(this, this.a.entrySet().iterator());
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (!Thread.interrupted()) {
            try {
                rp7 rp7Var = (rp7) this.b.remove(remove());
                if (rp7Var != null && !rp7Var.d) {
                    up7.b.log(Level.SEVERE, "Scope garbage collected before being closed.", (Throwable) up7.b(rp7Var));
                }
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    public final String toString() {
        return this.a.toString();
    }
}
