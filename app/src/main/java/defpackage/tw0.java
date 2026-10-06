package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tw0 implements wn8 {
    public Object a = ww0.p;
    public o21 b;
    public final /* synthetic */ uw0 c;

    public tw0(uw0 uw0Var) {
        this.c = uw0Var;
    }

    @Override // defpackage.wn8
    public final void a(n67 n67Var, int i) {
        o21 o21Var = this.b;
        if (o21Var != null) {
            o21Var.a(n67Var, i);
        }
    }

    public final Object b(mi3 mi3Var) throws Throwable {
        t41 t41Var;
        t41 t41Var2;
        Object obj = this.a;
        boolean z = true;
        if (obj == ww0.p || obj == ww0.l) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = uw0.k;
            uw0 uw0Var = this.c;
            t41 t41Var3 = (t41) atomicReferenceFieldUpdater.get(uw0Var);
            while (!uw0Var.w(uw0.b.get(uw0Var), true)) {
                long andIncrement = uw0.c.getAndIncrement(uw0Var);
                long j = ww0.b;
                long j2 = andIncrement / j;
                int i = (int) (andIncrement % j);
                if (t41Var3.e != j2) {
                    t41 t41VarM = uw0Var.m(j2, t41Var3);
                    if (t41VarM == null) {
                        continue;
                    } else {
                        t41Var = t41VarM;
                    }
                } else {
                    t41Var = t41Var3;
                }
                Object objH = uw0Var.H(t41Var, i, andIncrement, null);
                du9 du9Var = ww0.m;
                if (objH == du9Var) {
                    l0.e("unreachable");
                    return null;
                }
                du9 du9Var2 = ww0.o;
                if (objH == du9Var2) {
                    if (andIncrement < uw0Var.r()) {
                        t41Var.b();
                    }
                    t41Var3 = t41Var;
                } else {
                    if (objH == ww0.n) {
                        o21 o21VarT = g67.t(nc8.D(mi3Var));
                        try {
                            this.b = o21VarT;
                            Object objH2 = uw0Var.H(t41Var, i, andIncrement, this);
                            if (objH2 == du9Var) {
                                a(t41Var, i);
                            } else {
                                if (objH2 == du9Var2) {
                                    if (andIncrement < uw0Var.r()) {
                                        t41Var.b();
                                    }
                                    t41 t41Var4 = (t41) uw0.k.get(uw0Var);
                                    while (true) {
                                        if (uw0Var.w(uw0.b.get(uw0Var), true)) {
                                            o21 o21Var = this.b;
                                            o21Var.getClass();
                                            this.b = null;
                                            this.a = ww0.l;
                                            Throwable thO = uw0Var.o();
                                            if (thO == null) {
                                                o21Var.resumeWith(Boolean.FALSE);
                                            } else {
                                                o21Var.resumeWith(new bn6(thO));
                                            }
                                        } else {
                                            long andIncrement2 = uw0.c.getAndIncrement(uw0Var);
                                            long j3 = ww0.b;
                                            long j4 = andIncrement2 / j3;
                                            int i2 = (int) (andIncrement2 % j3);
                                            if (t41Var4.e != j4) {
                                                t41 t41VarM2 = uw0Var.m(j4, t41Var4);
                                                if (t41VarM2 != null) {
                                                    t41Var2 = t41VarM2;
                                                }
                                            } else {
                                                t41Var2 = t41Var4;
                                            }
                                            Object objH3 = uw0Var.H(t41Var2, i2, andIncrement2, this);
                                            t41 t41Var5 = t41Var2;
                                            if (objH3 == ww0.m) {
                                                a(t41Var5, i2);
                                            } else {
                                                if (objH3 != ww0.o) {
                                                    if (objH3 == ww0.n) {
                                                        throw new IllegalStateException("unexpected");
                                                    }
                                                    t41Var5.b();
                                                    this.a = objH3;
                                                    this.b = null;
                                                    break;
                                                }
                                                if (andIncrement2 < uw0Var.r()) {
                                                    t41Var5.b();
                                                }
                                                t41Var4 = t41Var5;
                                            }
                                        }
                                    }
                                } else {
                                    t41Var.b();
                                    this.a = objH2;
                                    this.b = null;
                                }
                                o21VarT.e(Boolean.TRUE, null);
                            }
                            return o21VarT.s();
                        } catch (Throwable th) {
                            o21VarT.B();
                            throw th;
                        }
                    }
                    t41Var.b();
                    this.a = objH;
                }
            }
            this.a = ww0.l;
            Throwable thO2 = uw0Var.o();
            if (thO2 != null) {
                int i3 = tk7.a;
                throw thO2;
            }
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
