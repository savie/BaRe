package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oz2 implements ThreadFactory {
    public final /* synthetic */ AtomicLong a;

    public oz2(AtomicLong atomicLong) {
        this.a = atomicLong;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = Executors.defaultThreadFactory().newThread(new nz2(runnable));
        threadNewThread.setName("awaitEvenIfOnMainThread task continuation executor" + this.a.getAndIncrement());
        return threadNewThread;
    }
}
