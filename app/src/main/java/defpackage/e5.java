package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e5 extends ho6 {
    public final AtomicReferenceFieldUpdater f;
    public final AtomicReferenceFieldUpdater k;
    public final AtomicReferenceFieldUpdater n;
    public final AtomicReferenceFieldUpdater p;
    public final AtomicReferenceFieldUpdater q;

    public e5(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f = atomicReferenceFieldUpdater;
        this.k = atomicReferenceFieldUpdater2;
        this.n = atomicReferenceFieldUpdater3;
        this.p = atomicReferenceFieldUpdater4;
        this.q = atomicReferenceFieldUpdater5;
    }

    @Override // defpackage.ho6
    public final void I(g5 g5Var, g5 g5Var2) {
        this.k.lazySet(g5Var, g5Var2);
    }

    @Override // defpackage.ho6
    public final void J(g5 g5Var, Thread thread) {
        this.f.lazySet(g5Var, thread);
    }

    @Override // defpackage.ho6
    public final boolean b(h5 h5Var, d5 d5Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.p;
            if (atomicReferenceFieldUpdater.compareAndSet(h5Var, d5Var, d5.b)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(h5Var) == d5Var);
        return false;
    }

    @Override // defpackage.ho6
    public final boolean c(h5 h5Var, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.q;
            if (atomicReferenceFieldUpdater.compareAndSet(h5Var, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(h5Var) == obj);
        return false;
    }

    @Override // defpackage.ho6
    public final boolean d(h5 h5Var, g5 g5Var, g5 g5Var2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.n;
            if (atomicReferenceFieldUpdater.compareAndSet(h5Var, g5Var, g5Var2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(h5Var) == g5Var);
        return false;
    }
}
