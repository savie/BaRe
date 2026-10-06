package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mu4 extends rx1 implements qg2 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater n = AtomicIntegerFieldUpdater.newUpdater(mu4.class, "runningWorkers$volatile");
    public final /* synthetic */ qg2 c;
    public final rx1 d;
    public final int e;
    public final w05 f;
    public final Object k;
    private volatile /* synthetic */ int runningWorkers$volatile;

    /* JADX WARN: Multi-variable type inference failed */
    public mu4(rx1 rx1Var, int i) {
        qg2 qg2Var = rx1Var instanceof qg2 ? (qg2) rx1Var : null;
        this.c = qg2Var == null ? he2.a : qg2Var;
        this.d = rx1Var;
        this.e = i;
        this.f = new w05();
        this.k = new Object();
    }

    @Override // defpackage.qg2
    public final in2 b(long j, h48 h48Var, ox1 ox1Var) {
        return this.c.b(j, h48Var, ox1Var);
    }

    @Override // defpackage.qg2
    public final void g(long j, o21 o21Var) {
        this.c.g(j, o21Var);
    }

    @Override // defpackage.rx1
    public final void j(ox1 ox1Var, Runnable runnable) {
        this.f.a(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = n;
        if (atomicIntegerFieldUpdater.get(this) < this.e) {
            synchronized (this.k) {
                if (atomicIntegerFieldUpdater.get(this) >= this.e) {
                    return;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
                Runnable runnableQ = q();
                if (runnableQ == null) {
                    return;
                }
                try {
                    ly8.M(this.d, this, new td9(3, this, runnableQ));
                } catch (Throwable th) {
                    n.decrementAndGet(this);
                    throw th;
                }
            }
        }
    }

    public final Runnable q() {
        while (true) {
            Runnable runnable = (Runnable) this.f.d();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.k) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = n;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }

    @Override // defpackage.rx1
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.d);
        sb.append(".limitedParallelism(");
        return eq3.m(sb, this.e, ')');
    }
}
