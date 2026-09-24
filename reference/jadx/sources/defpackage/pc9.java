package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pc9 extends ho6 {
    public static final AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(sc9.class, Thread.class, "a");
    public static final AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(sc9.class, sc9.class, "b");
    public static final AtomicReferenceFieldUpdater n = AtomicReferenceFieldUpdater.newUpdater(uc9.class, sc9.class, "c");
    public static final AtomicReferenceFieldUpdater p = AtomicReferenceFieldUpdater.newUpdater(uc9.class, nc9.class, "b");
    public static final AtomicReferenceFieldUpdater q = AtomicReferenceFieldUpdater.newUpdater(uc9.class, Object.class, "a");

    @Override // defpackage.ho6
    public final nc9 b0(ue9 ue9Var) {
        return (nc9) p.getAndSet(ue9Var, nc9.d);
    }

    @Override // defpackage.ho6
    public final sc9 d0(ue9 ue9Var) {
        return (sc9) n.getAndSet(ue9Var, sc9.c);
    }

    @Override // defpackage.ho6
    public final void e0(sc9 sc9Var, sc9 sc9Var2) {
        k.lazySet(sc9Var, sc9Var2);
    }

    @Override // defpackage.ho6
    public final void f0(sc9 sc9Var, Thread thread) {
        f.lazySet(sc9Var, thread);
    }

    @Override // defpackage.ho6
    public final boolean g0(ue9 ue9Var, nc9 nc9Var, nc9 nc9Var2) {
        return g67.H(p, ue9Var, nc9Var, nc9Var2);
    }

    @Override // defpackage.ho6
    public final boolean h0(uc9 uc9Var, Object obj, Object obj2) {
        return g67.H(q, uc9Var, obj, obj2);
    }

    @Override // defpackage.ho6
    public final boolean i0(uc9 uc9Var, sc9 sc9Var, sc9 sc9Var2) {
        return g67.H(n, uc9Var, sc9Var, sc9Var2);
    }
}
