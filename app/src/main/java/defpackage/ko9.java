package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ko9 extends zh8 {
    public final AtomicReferenceFieldUpdater g;
    public final AtomicReferenceFieldUpdater h;
    public final AtomicReferenceFieldUpdater i;
    public final AtomicReferenceFieldUpdater j;
    public final AtomicReferenceFieldUpdater k;

    public ko9(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        super(20);
        this.g = atomicReferenceFieldUpdater;
        this.h = atomicReferenceFieldUpdater2;
        this.i = atomicReferenceFieldUpdater3;
        this.j = atomicReferenceFieldUpdater4;
        this.k = atomicReferenceFieldUpdater5;
    }

    @Override // defpackage.zh8
    public final void P(jr9 jr9Var, jr9 jr9Var2) {
        this.h.lazySet(jr9Var, jr9Var2);
    }

    @Override // defpackage.zh8
    public final void Q(jr9 jr9Var, Thread thread) {
        this.g.lazySet(jr9Var, thread);
    }

    @Override // defpackage.zh8
    public final boolean R(ks9 ks9Var, hl9 hl9Var, hl9 hl9Var2) {
        return zv1.v(this.j, ks9Var, hl9Var, hl9Var2);
    }

    @Override // defpackage.zh8
    public final boolean S(ks9 ks9Var, Object obj, Object obj2) {
        return zv1.v(this.k, ks9Var, obj, obj2);
    }

    @Override // defpackage.zh8
    public final boolean T(ks9 ks9Var, jr9 jr9Var, jr9 jr9Var2) {
        return zv1.v(this.i, ks9Var, jr9Var, jr9Var2);
    }
}
