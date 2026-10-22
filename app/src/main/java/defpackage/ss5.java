package defpackage;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ss5 {
    private boolean isEnabled;
    private final ArrayList eventHandlers = new ArrayList();
    private final CopyOnWriteArrayList<AutoCloseable> closeables = new CopyOnWriteArrayList<>();

    public ss5(boolean z) {
        this.isEnabled = z;
    }

    public final void addCloseable$activity(vs5 vs5Var) {
        this.closeables.add(vs5Var);
    }

    public final rs5 createNavigationEventHandler$activity(ts5 ts5Var) {
        rs5 rs5Var = new rs5(this, ts5Var);
        this.eventHandlers.add(rs5Var);
        return rs5Var;
    }

    public abstract void handleOnBackPressed();

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final void remove() throws Exception {
        boolean zIsTerminated;
        CopyOnWriteArrayList<AutoCloseable> copyOnWriteArrayList = this.closeables;
        Iterator<AutoCloseable> it = copyOnWriteArrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            AutoCloseable next = it.next();
            if (next instanceof AutoCloseable) {
                next.close();
            } else if (next instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) next;
                if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                    executorService.shutdown();
                    boolean z = false;
                    while (!zIsTerminated) {
                        try {
                            zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                        } catch (InterruptedException unused) {
                            if (!z) {
                                executorService.shutdownNow();
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            } else if (next instanceof TypedArray) {
                ((TypedArray) next).recycle();
            } else if (next instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) next).release();
            } else {
                if (!(next instanceof MediaDrm)) {
                    c6.b();
                    return;
                }
                ((MediaDrm) next).release();
            }
        }
        copyOnWriteArrayList.clear();
        ArrayList arrayList = this.eventHandlers;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((rs5) it2.next()).a();
        }
        arrayList.clear();
    }

    public final void setEnabled(boolean z) {
        sl5 sl5Var;
        this.isEnabled = z;
        for (rs5 rs5Var : this.eventHandlers) {
            boolean z2 = rs5Var.g && z;
            if (rs5Var.d != z2) {
                rs5Var.d = z2;
                f41 f41Var = rs5Var.e;
                if (f41Var != null && (sl5Var = (sl5) f41Var.b) != null) {
                    sl5Var.b();
                }
            }
        }
    }

    public void handleOnBackCancelled() {
    }

    public void handleOnBackProgressed(xj0 xj0Var) {
    }

    public void handleOnBackStarted(xj0 xj0Var) {
    }
}
