package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rb4 extends y50 {
    public final /* synthetic */ int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ rb4(y50 y50Var, kp0 kp0Var, rc8 rc8Var, em4 em4Var, Boolean bool, int i) {
        super(y50Var, kp0Var, rc8Var, em4Var, bool);
        this.q = i;
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        switch (this.q) {
            case 0:
                return ((List) obj).isEmpty();
            default:
                return !((Iterable) obj).iterator().hasNext();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:11:0x001c  */
    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    /* JADX WARN: Code duplicated, block: B:24:0x0054  */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
    
        if (r2 == java.lang.Boolean.TRUE) goto L26;
     */
    @Override // defpackage.em4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(java.lang.Object r5, defpackage.fk4 r6, defpackage.c87 r7) throws java.io.IOException {
        /*
            r4 = this;
            int r0 = r4.q
            r1 = 1
            java.lang.Boolean r2 = r4.f
            switch(r0) {
                case 0: goto L40;
                default: goto L8;
            }
        L8:
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            if (r2 != 0) goto L16
            x77 r0 = defpackage.x77.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            v77 r3 = r7.a
            boolean r0 = r3.l(r0)
            if (r0 != 0) goto L1a
        L16:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            if (r2 != r0) goto L36
        L1a:
            if (r5 == 0) goto L2f
            java.util.Iterator r0 = r5.iterator()
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L2f
            r0.next()
            boolean r0 = r0.hasNext()
            r0 = r0 ^ r1
            goto L30
        L2f:
            r0 = 0
        L30:
            if (r0 == 0) goto L36
            r4.s(r5, r6, r7)
            goto L3f
        L36:
            r6.S(r5)
            r4.s(r5, r6, r7)
            r6.n()
        L3f:
            return
        L40:
            java.util.List r5 = (java.util.List) r5
            int r0 = r5.size()
            if (r0 != r1) goto L5c
            if (r2 != 0) goto L54
            x77 r0 = defpackage.x77.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            v77 r1 = r7.a
            boolean r0 = r1.l(r0)
            if (r0 != 0) goto L58
        L54:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            if (r2 != r0) goto L5c
        L58:
            r4.t(r5, r6, r7)
            goto L65
        L5c:
            r6.U(r5)
            r4.t(r5, r6, r7)
            r6.n()
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rb4.e(java.lang.Object, fk4, c87):void");
    }

    @Override // defpackage.fu1
    public final fu1 o(rc8 rc8Var) {
        switch (this.q) {
            case 0:
                return new rb4(this, this.d, rc8Var, this.n, this.f, 0);
            default:
                return new rb4(this, this.d, rc8Var, this.n, this.f, 1);
        }
    }

    @Override // defpackage.y50
    public final /* bridge */ /* synthetic */ void q(Object obj, fk4 fk4Var, c87 c87Var) throws IOException {
        switch (this.q) {
            case 0:
                t((List) obj, fk4Var, c87Var);
                break;
            default:
                s((Iterable) obj, fk4Var, c87Var);
                break;
        }
    }

    @Override // defpackage.y50
    public final y50 r(kp0 kp0Var, rc8 rc8Var, em4 em4Var, Boolean bool) {
        switch (this.q) {
            case 0:
                return new rb4(this, kp0Var, rc8Var, em4Var, bool, 0);
            default:
                return new rb4(this, kp0Var, rc8Var, em4Var, bool, 1);
        }
    }

    public void s(Iterable iterable, fk4 fk4Var, c87 c87Var) throws ag4 {
        em4 em4Var;
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            Class<?> cls = null;
            em4 em4VarQ = null;
            do {
                Object next = it.next();
                if (next == null) {
                    c87Var.h(fk4Var);
                } else {
                    em4 em4Var2 = this.n;
                    if (em4Var2 == null) {
                        Class<?> cls2 = next.getClass();
                        if (cls2 != cls) {
                            em4VarQ = c87Var.q(cls2, this.d);
                            cls = cls2;
                        }
                        em4Var = em4VarQ;
                    } else {
                        em4Var = em4VarQ;
                        em4VarQ = em4Var2;
                    }
                    rc8 rc8Var = this.k;
                    if (rc8Var == null) {
                        em4VarQ.e(next, fk4Var, c87Var);
                    } else {
                        em4VarQ.f(next, fk4Var, c87Var, rc8Var);
                    }
                    em4VarQ = em4Var;
                }
            } while (it.hasNext());
        }
    }

    public void t(List list, fk4 fk4Var, c87 c87Var) throws IOException {
        int i = 0;
        rc8 rc8Var = this.k;
        em4 em4Var = this.n;
        if (em4Var != null) {
            int size = list.size();
            if (size == 0) {
                return;
            }
            while (i < size) {
                Object obj = list.get(i);
                if (obj == null) {
                    try {
                        c87Var.h(fk4Var);
                    } catch (Exception e) {
                        tn7.m(c87Var, e, list, i);
                        throw null;
                    }
                } else if (rc8Var == null) {
                    em4Var.e(obj, fk4Var, c87Var);
                } else {
                    em4Var.f(obj, fk4Var, c87Var, rc8Var);
                }
                i++;
            }
            return;
        }
        kp0 kp0Var = this.d;
        gc8 gc8Var = this.c;
        if (rc8Var != null) {
            int size2 = list.size();
            if (size2 == 0) {
                return;
            }
            try {
                od2 od2Var = this.p;
                while (i < size2) {
                    Object obj2 = list.get(i);
                    if (obj2 == null) {
                        c87Var.h(fk4Var);
                    } else {
                        Class<?> cls = obj2.getClass();
                        em4 em4VarX = od2Var.x(cls);
                        if (em4VarX == null) {
                            if (gc8Var.u0()) {
                                em4VarX = p(od2Var, c87Var.e(gc8Var, cls), c87Var);
                            } else {
                                em4VarX = c87Var.j(cls, kp0Var);
                                od2 od2VarS = od2Var.s(cls, em4VarX);
                                if (od2Var != od2VarS) {
                                    this.p = od2VarS;
                                }
                            }
                            od2Var = this.p;
                        }
                        em4VarX.f(obj2, fk4Var, c87Var, rc8Var);
                    }
                    i++;
                }
                return;
            } catch (Exception e2) {
                tn7.m(c87Var, e2, list, i);
                throw null;
            }
        }
        int size3 = list.size();
        if (size3 == 0) {
            return;
        }
        try {
            od2 od2Var2 = this.p;
            while (i < size3) {
                Object obj3 = list.get(i);
                if (obj3 == null) {
                    c87Var.h(fk4Var);
                } else {
                    Class<?> cls2 = obj3.getClass();
                    em4 em4VarX2 = od2Var2.x(cls2);
                    if (em4VarX2 == null) {
                        if (gc8Var.u0()) {
                            em4VarX2 = p(od2Var2, c87Var.e(gc8Var, cls2), c87Var);
                        } else {
                            em4VarX2 = c87Var.j(cls2, kp0Var);
                            od2 od2VarS2 = od2Var2.s(cls2, em4VarX2);
                            if (od2Var2 != od2VarS2) {
                                this.p = od2VarS2;
                            }
                        }
                        od2Var2 = this.p;
                    }
                    em4VarX2.e(obj3, fk4Var, c87Var);
                }
                i++;
            }
        } catch (Exception e3) {
            tn7.m(c87Var, e3, list, i);
            throw null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ rb4(Class cls, gc8 gc8Var, boolean z, rc8 rc8Var, em4 em4Var, int i) {
        super(cls, gc8Var, z, rc8Var, em4Var);
        this.q = i;
    }
}
