package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nf2 implements ThreadFactory {
    public final /* synthetic */ ny1 a;

    public nf2(ny1 ny1Var) {
        this.a = ny1Var;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
        threadNewThread.setName("FirebaseDatabaseWorker");
        threadNewThread.setDaemon(true);
        threadNewThread.setUncaughtExceptionHandler(new mf2(this));
        return threadNewThread;
    }
}
