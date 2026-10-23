package defpackage;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zq5 extends n50 {
    public final boolean e;
    public final gc8 f;
    public final rc8 k;
    public final em4 n;
    public od2 p;

    public zq5(zq5 zq5Var, kp0 kp0Var, rc8 rc8Var, em4 em4Var, Boolean bool) {
        super(zq5Var, kp0Var, bool);
        this.f = zq5Var.f;
        this.k = rc8Var;
        this.e = zq5Var.e;
        this.p = f96.i;
        this.n = em4Var;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    @Override // defpackage.n50, defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        em4 em4VarE;
        gc8 gc8Var;
        Object objC;
        rc8 rc8Var = this.k;
        rc8 rc8VarA = rc8Var != null ? rc8Var.a(kp0Var) : rc8Var;
        if (kp0Var != null) {
            od odVarA = kp0Var.a();
            as5 as5VarD = c87Var.a.d();
            if (odVarA == null || (objC = as5VarD.c(odVarA)) == null) {
                em4VarE = null;
            } else {
                em4VarE = c87Var.E(odVarA, objC);
            }
        } else {
            em4VarE = null;
        }
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, this.a);
        Boolean boolA = bk4VarK != null ? bk4VarK.a(yj4.a) : null;
        em4 em4Var = this.n;
        if (em4VarE == null) {
            em4VarE = em4Var;
        }
        em4 em4VarJ = tn7.j(c87Var, kp0Var, em4VarE);
        if (em4VarJ == null && (gc8Var = this.f) != null && this.e && !gc8Var.z0()) {
            em4VarJ = c87Var.i(gc8Var, kp0Var);
        }
        em4 em4Var2 = em4VarJ;
        return (this.c == kp0Var && em4Var2 == em4Var && rc8Var == rc8VarA && Objects.equals(this.d, boolA)) ? this : new zq5(this, kp0Var, rc8VarA, em4Var2, boolA);
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((Object[]) obj).length == 0;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
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
            java.lang.Object[] r4 = (java.lang.Object[]) r4
            int r0 = r4.length
            r1 = 1
            if (r0 != r1) goto L1c
            java.lang.Boolean r0 = r3.d
            if (r0 != 0) goto L14
            x77 r1 = defpackage.x77.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            v77 r2 = r6.a
            boolean r1 = r2.l(r1)
            if (r1 != 0) goto L18
        L14:
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            if (r0 != r1) goto L1c
        L18:
            r3.r(r4, r5, r6)
            return
        L1c:
            r5.U(r4)
            r3.r(r4, r5, r6)
            r5.n()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zq5.e(java.lang.Object, fk4, c87):void");
    }

    @Override // defpackage.fu1
    public final fu1 o(rc8 rc8Var) {
        return new zq5(this.f, this.e, rc8Var, this.n);
    }

    @Override // defpackage.n50
    public final em4 q(kp0 kp0Var, Boolean bool) {
        return new zq5(this, kp0Var, this.k, this.n, bool);
    }

    @Override // defpackage.n50
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final void r(Object[] objArr, fk4 fk4Var, c87 c87Var) throws IOException {
        Object obj;
        Object obj2;
        od2 od2VarS;
        gc8 gc8Var = this.f;
        int length = objArr.length;
        if (length == 0) {
            return;
        }
        int i = 0;
        em4 em4Var = this.n;
        rc8 rc8Var = this.k;
        if (em4Var != null) {
            int length2 = objArr.length;
            Object obj3 = null;
            while (i < length2) {
                try {
                    obj3 = objArr[i];
                    if (obj3 == null) {
                        c87Var.h(fk4Var);
                    } else if (rc8Var == null) {
                        em4Var.e(obj3, fk4Var, c87Var);
                    } else {
                        em4Var.f(obj3, fk4Var, c87Var, rc8Var);
                    }
                    i++;
                } catch (Exception e) {
                    tn7.m(c87Var, e, obj3, i);
                    throw null;
                }
            }
            return;
        }
        kp0 kp0Var = this.c;
        if (rc8Var != null) {
            int length3 = objArr.length;
            try {
                od2 od2Var = this.p;
                obj2 = null;
                while (i < length3) {
                    try {
                        obj2 = objArr[i];
                        if (obj2 == null) {
                            c87Var.h(fk4Var);
                        } else {
                            Class<?> cls = obj2.getClass();
                            em4 em4VarX = od2Var.x(cls);
                            if (em4VarX == null && od2Var != (od2VarS = od2Var.s(cls, (em4VarX = c87Var.j(cls, kp0Var))))) {
                                this.p = od2VarS;
                            }
                            em4VarX.f(obj2, fk4Var, c87Var, rc8Var);
                        }
                        i++;
                    } catch (Exception e2) {
                        e = e2;
                        tn7.m(c87Var, e, obj2, i);
                        throw null;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                obj2 = null;
            }
        } else {
            try {
                od2 od2Var2 = this.p;
                obj = null;
                while (i < length) {
                    try {
                        obj = objArr[i];
                        if (obj == null) {
                            c87Var.h(fk4Var);
                        } else {
                            Class<?> cls2 = obj.getClass();
                            em4 em4VarX2 = od2Var2.x(cls2);
                            if (em4VarX2 == null) {
                                if (gc8Var.u0()) {
                                    ib ibVarG = od2Var2.g(c87Var.e(gc8Var, cls2), c87Var, kp0Var);
                                    od2 od2Var3 = (od2) ibVarG.c;
                                    if (od2Var2 != od2Var3) {
                                        this.p = od2Var3;
                                    }
                                    em4VarX2 = (em4) ibVarG.b;
                                } else {
                                    em4VarX2 = c87Var.j(cls2, kp0Var);
                                    od2 od2VarS2 = od2Var2.s(cls2, em4VarX2);
                                    if (od2Var2 != od2VarS2) {
                                        this.p = od2VarS2;
                                    }
                                }
                            }
                            em4VarX2.e(obj, fk4Var, c87Var);
                        }
                        i++;
                    } catch (Exception e4) {
                        e = e4;
                        tn7.m(c87Var, e, obj, i);
                        throw null;
                    }
                }
            } catch (Exception e5) {
                e = e5;
                obj = null;
            }
        }
    }

    public zq5(gc8 gc8Var, boolean z, rc8 rc8Var, em4 em4Var) {
        super(Object[].class);
        this.f = gc8Var;
        this.e = z;
        this.k = rc8Var;
        this.p = f96.i;
        this.n = em4Var;
    }
}
