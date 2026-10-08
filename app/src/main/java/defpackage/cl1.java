package defpackage;

import java.io.IOException;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cl1 extends y50 {
    public final boolean q;

    public cl1(gc8 gc8Var, boolean z, sc8 sc8Var, em4 em4Var) {
        super(Collection.class, gc8Var, z, sc8Var, em4Var);
        this.q = gc8Var.y0() || gc8Var.z0();
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((Collection) obj).isEmpty();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
    
        if (r0 == java.lang.Boolean.TRUE) goto L10;
     */
    @Override // defpackage.em4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(java.lang.Object r4, defpackage.fk4 r5, defpackage.c87 r6) throws java.io.IOException {
        /*
            r3 = this;
            java.util.Collection r4 = (java.util.Collection) r4
            int r0 = r4.size()
            r1 = 1
            if (r0 != r1) goto L1f
            java.lang.Boolean r0 = r3.f
            if (r0 != 0) goto L17
            x77 r1 = defpackage.x77.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            v77 r2 = r6.a
            boolean r1 = r2.l(r1)
            if (r1 != 0) goto L1b
        L17:
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            if (r0 != r1) goto L1f
        L1b:
            r3.q(r4, r5, r6)
            return
        L1f:
            r5.U(r4)
            r3.q(r4, r5, r6)
            r5.n()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cl1.e(java.lang.Object, fk4, c87):void");
    }

    @Override // defpackage.fu1
    public final fu1 o(rc8 rc8Var) {
        return new cl1(this, this.d, rc8Var, this.n, this.f);
    }

    @Override // defpackage.y50
    public final y50 r(kp0 kp0Var, rc8 rc8Var, em4 em4Var, Boolean bool) {
        return new cl1(this, kp0Var, rc8Var, em4Var, bool);
    }

    @Override // defpackage.y50
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final void q(Collection collection, fk4 fk4Var, c87 c87Var) throws IOException {
        gc8 gc8Var = this.c;
        fk4Var.g(collection);
        int i = 0;
        rc8 rc8Var = this.k;
        boolean z = this.q;
        em4 em4Var = this.n;
        if (em4Var != null) {
            Iterator it = collection.iterator();
            if (it.hasNext()) {
                if (z && (collection instanceof EnumSet)) {
                    rc8Var = null;
                }
                do {
                    Object next = it.next();
                    if (next == null) {
                        try {
                            c87Var.h(fk4Var);
                        } catch (Exception e) {
                            tn7.m(c87Var, e, collection, i);
                            throw null;
                        }
                    } else if (rc8Var == null) {
                        em4Var.e(next, fk4Var, c87Var);
                    } else {
                        em4Var.f(next, fk4Var, c87Var, rc8Var);
                    }
                    i++;
                } while (it.hasNext());
                return;
            }
            return;
        }
        Iterator it2 = collection.iterator();
        if (it2.hasNext()) {
            od2 od2Var = this.p;
            if (z && (collection instanceof EnumSet)) {
                rc8Var = null;
            }
            do {
                try {
                    Object next2 = it2.next();
                    if (next2 == null) {
                        c87Var.h(fk4Var);
                    } else {
                        Class<?> cls = next2.getClass();
                        em4 em4VarX = od2Var.x(cls);
                        if (em4VarX == null) {
                            if (gc8Var.u0()) {
                                em4VarX = p(od2Var, c87Var.e(gc8Var, cls), c87Var);
                            } else {
                                em4VarX = c87Var.j(cls, this.d);
                                od2 od2VarS = od2Var.s(cls, em4VarX);
                                if (od2Var != od2VarS) {
                                    this.p = od2VarS;
                                }
                            }
                            od2Var = this.p;
                        }
                        if (rc8Var == null) {
                            em4VarX.e(next2, fk4Var, c87Var);
                        } else {
                            em4VarX.f(next2, fk4Var, c87Var, rc8Var);
                        }
                    }
                    i++;
                } catch (Exception e2) {
                    tn7.m(c87Var, e2, collection, i);
                    throw null;
                }
            } while (it2.hasNext());
        }
    }

    public cl1(cl1 cl1Var, kp0 kp0Var, rc8 rc8Var, em4 em4Var, Boolean bool) {
        super(cl1Var, kp0Var, rc8Var, em4Var, bool);
        this.q = cl1Var.q;
    }
}
