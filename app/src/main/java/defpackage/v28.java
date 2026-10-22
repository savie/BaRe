package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v28 extends sh4 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater q = AtomicIntegerFieldUpdater.newUpdater(v28.class, "_state$volatile");
    private volatile /* synthetic */ int _state$volatile;
    public final Thread n = Thread.currentThread();
    public in2 p;

    public static void s(int i) {
        throw new IllegalStateException(("Illegal state " + i).toString());
    }

    @Override // defpackage.sh4
    public final boolean p() {
        return true;
    }

    @Override // defpackage.sh4
    public final void q(Throwable th) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        do {
            atomicIntegerFieldUpdater = q;
            i = atomicIntegerFieldUpdater.get(this);
            if (i != 0) {
                if (i == 1 || i == 2 || i == 3) {
                    return;
                }
                s(i);
                throw null;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 2));
        this.n.interrupt();
        atomicIntegerFieldUpdater.set(this, 3);
    }

    public final void r() {
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = q;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i != 0) {
                if (i != 2) {
                    if (i == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        s(i);
                        throw null;
                    }
                }
            } else if (atomicIntegerFieldUpdater.compareAndSet(this, i, 1)) {
                in2 in2Var = this.p;
                if (in2Var != null) {
                    in2Var.dispose();
                    return;
                }
                return;
            }
        }
    }
}
