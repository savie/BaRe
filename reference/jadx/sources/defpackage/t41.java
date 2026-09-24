package defpackage;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t41 extends n67 {
    public final uw0 g;
    public final /* synthetic */ AtomicReferenceArray h;

    public t41(long j, t41 t41Var, uw0 uw0Var, int i) {
        super(j, t41Var, i);
        this.g = uw0Var;
        this.h = new AtomicReferenceArray(ww0.b * 2);
    }

    @Override // defpackage.n67
    public final int l() {
        return ww0.b;
    }

    @Override // defpackage.n67
    public final void m(int i, ox1 ox1Var) {
        uw0 uw0Var;
        int i2 = ww0.b;
        boolean z = i >= i2;
        if (z) {
            i -= i2;
        }
        this.h.get(i * 2);
        while (true) {
            Object objQ = q(i);
            boolean z2 = objQ instanceof wn8;
            uw0Var = this.g;
            if (z2 || (objQ instanceof xn8)) {
                if (p(i, objQ, z ? ww0.j : ww0.k)) {
                    s(i, null);
                    r(i, !z);
                    if (z) {
                        uw0Var.getClass();
                        return;
                    }
                    return;
                }
            } else {
                if (objQ == ww0.j || objQ == ww0.k) {
                    break;
                }
                if (objQ != ww0.g && objQ != ww0.f) {
                    if (objQ == ww0.i || objQ == ww0.d || objQ == ww0.l) {
                        return;
                    }
                    l0.k(objQ, "unexpected state: ");
                    return;
                }
            }
        }
        s(i, null);
        if (z) {
            uw0Var.getClass();
        }
    }

    public final boolean p(int i, Object obj, Object obj2) {
        AtomicReferenceArray atomicReferenceArray;
        int i2 = (i * 2) + 1;
        do {
            atomicReferenceArray = this.h;
            if (atomicReferenceArray.compareAndSet(i2, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceArray.get(i2) == obj);
        return false;
    }

    public final Object q(int i) {
        return this.h.get((i * 2) + 1);
    }

    public final void r(int i, boolean z) {
        if (z) {
            uw0 uw0Var = this.g;
            uw0Var.getClass();
            uw0Var.J((this.e * ((long) ww0.b)) + ((long) i));
        }
        n();
    }

    public final void s(int i, Object obj) {
        this.h.set(i * 2, obj);
    }

    public final void t(int i, Object obj) {
        this.h.set((i * 2) + 1, obj);
    }
}
