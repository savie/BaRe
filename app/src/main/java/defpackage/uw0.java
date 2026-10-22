package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class uw0 implements h41 {
    public static final /* synthetic */ long G;
    public static final /* synthetic */ AtomicLongFieldUpdater b = AtomicLongFieldUpdater.newUpdater(uw0.class, "sendersAndCloseStatus$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater c = AtomicLongFieldUpdater.newUpdater(uw0.class, "receivers$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater d = AtomicLongFieldUpdater.newUpdater(uw0.class, "bufferEnd$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater e = AtomicLongFieldUpdater.newUpdater(uw0.class, "completedExpandBuffersAndPauseFlag$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(uw0.class, Object.class, "sendSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater k;
    public static final /* synthetic */ AtomicReferenceFieldUpdater n;
    public static final /* synthetic */ AtomicReferenceFieldUpdater p;
    public static final /* synthetic */ AtomicReferenceFieldUpdater q;
    public static final /* synthetic */ long r;
    public static final /* synthetic */ long t;
    public static final /* synthetic */ long x;
    public static final /* synthetic */ long y;
    private volatile /* synthetic */ Object _closeCause$volatile;
    public final int a;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    static {
        Unsafe unsafe = oh6.a;
        G = unsafe.objectFieldOffset(uw0.class.getDeclaredField("sendSegment$volatile"));
        k = AtomicReferenceFieldUpdater.newUpdater(uw0.class, Object.class, "receiveSegment$volatile");
        y = unsafe.objectFieldOffset(uw0.class.getDeclaredField("receiveSegment$volatile"));
        n = AtomicReferenceFieldUpdater.newUpdater(uw0.class, Object.class, "bufferEndSegment$volatile");
        t = unsafe.objectFieldOffset(uw0.class.getDeclaredField("bufferEndSegment$volatile"));
        p = AtomicReferenceFieldUpdater.newUpdater(uw0.class, Object.class, "_closeCause$volatile");
        r = unsafe.objectFieldOffset(uw0.class.getDeclaredField("_closeCause$volatile"));
        q = AtomicReferenceFieldUpdater.newUpdater(uw0.class, Object.class, "closeHandler$volatile");
        x = unsafe.objectFieldOffset(uw0.class.getDeclaredField("closeHandler$volatile"));
    }

    public uw0(int i) {
        this.a = i;
        if (i < 0) {
            f6.g(xs1.h(i, "Invalid channel capacity: ", ", should be >=0"));
            throw null;
        }
        t41 t41Var = ww0.a;
        this.bufferEnd$volatile = i != 0 ? i != Integer.MAX_VALUE ? i : Long.MAX_VALUE : 0L;
        this.completedExpandBuffersAndPauseFlag$volatile = d.get(this);
        t41 t41Var2 = new t41(0L, null, this, 3);
        this.sendSegment$volatile = t41Var2;
        this.receiveSegment$volatile = t41Var2;
        if (y()) {
            t41Var2 = ww0.a;
            t41Var2.getClass();
        }
        this.bufferEndSegment$volatile = t41Var2;
        this._closeCause$volatile = ww0.s;
    }

    public static Object B(uw0 uw0Var, u41 u41Var) throws Throwable {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
        atomicReferenceFieldUpdater.getClass();
        if (uw0Var == null) {
            e6.d();
            return null;
        }
        t41 t41Var = (t41) oh6.a.getObjectVolatile(uw0Var, y);
        while (true) {
            uw0Var.getClass();
            AtomicLongFieldUpdater atomicLongFieldUpdater = b;
            if (uw0Var.w(atomicLongFieldUpdater.get(uw0Var), true)) {
                Throwable thP = uw0Var.p();
                int i = tk7.a;
                throw thP;
            }
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = c;
            long andIncrement = atomicLongFieldUpdater2.getAndIncrement(uw0Var);
            long j = ww0.b;
            long j2 = andIncrement / j;
            int i2 = (int) (andIncrement % j);
            if (t41Var.e != j2) {
                t41 t41VarM = uw0Var.m(j2, t41Var);
                if (t41VarM == null) {
                    continue;
                } else {
                    t41Var = t41VarM;
                }
            }
            Object objH = uw0Var.H(t41Var, i2, andIncrement, null);
            Object obj = ww0.m;
            if (objH == obj) {
                l0.e("unexpected");
                return null;
            }
            Object obj2 = ww0.o;
            if (objH != obj2) {
                if (objH != ww0.n) {
                    t41Var.b();
                    return objH;
                }
                o21 o21VarT = g67.t(nc8.D(u41Var));
                try {
                    Object objH2 = uw0Var.H(t41Var, i2, andIncrement, o21VarT);
                    if (objH2 == obj) {
                        o21VarT.a(t41Var, i2);
                    } else if (objH2 == obj2) {
                        if (andIncrement < uw0Var.r()) {
                            t41Var.b();
                        }
                        t41 t41Var2 = (t41) atomicReferenceFieldUpdater.get(uw0Var);
                        for (boolean z = true; !uw0Var.w(atomicLongFieldUpdater.get(uw0Var), z); z = true) {
                            long andIncrement2 = atomicLongFieldUpdater2.getAndIncrement(uw0Var);
                            long j3 = ww0.b;
                            AtomicLongFieldUpdater atomicLongFieldUpdater3 = atomicLongFieldUpdater2;
                            long j4 = andIncrement2 / j3;
                            int i3 = (int) (andIncrement2 % j3);
                            if (t41Var2.e != j4) {
                                t41 t41VarM2 = uw0Var.m(j4, t41Var2);
                                if (t41VarM2 == null) {
                                    continue;
                                } else {
                                    t41Var2 = t41VarM2;
                                }
                                atomicLongFieldUpdater2 = atomicLongFieldUpdater3;
                            }
                            Object objH3 = uw0Var.H(t41Var2, i3, andIncrement2, o21VarT);
                            if (objH3 == ww0.m) {
                                o21VarT.a(t41Var2, i3);
                            } else if (objH3 == ww0.o) {
                                if (andIncrement2 < uw0Var.r()) {
                                    t41Var2.b();
                                }
                                atomicLongFieldUpdater2 = atomicLongFieldUpdater3;
                            } else {
                                if (objH3 == ww0.n) {
                                    throw new IllegalStateException("unexpected");
                                }
                                t41Var2.b();
                                o21VarT.e(objH3, null);
                            }
                        }
                        o21VarT.resumeWith(new bn6(uw0Var.p()));
                    } else {
                        t41Var.b();
                        o21VarT.e(objH2, null);
                    }
                    return o21VarT.s();
                } catch (Throwable th) {
                    o21VarT.B();
                    throw th;
                }
            }
            if (andIncrement < uw0Var.r()) {
                t41Var.b();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:87:0x0155  */
    /* JADX WARN: Code duplicated, block: B:89:0x0158 A[RETURN] */
    public static Object D(uw0 uw0Var, Object obj, jv1 jv1Var) {
        be8 be8Var;
        Object objS;
        yx1 yx1Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
        atomicReferenceFieldUpdater.getClass();
        t41 t41Var = (t41) oh6.a.getObjectVolatile(uw0Var, G);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = b;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(uw0Var);
            long j = andIncrement & 1152921504606846975L;
            boolean zW = uw0Var.w(andIncrement, false);
            int i = ww0.b;
            long j2 = i;
            long j3 = j / j2;
            int i2 = (int) (j % j2);
            long j4 = t41Var.e;
            yx1 yx1Var2 = yx1.a;
            be8Var = be8.a;
            if (j4 != j3) {
                t41 t41VarN = uw0Var.n(j3, t41Var);
                if (t41VarN != null) {
                    t41Var = t41VarN;
                } else if (zW) {
                    Object objA = uw0Var.A(jv1Var, obj);
                    if (objA == yx1Var2) {
                        return objA;
                    }
                }
            }
            int iB = b(uw0Var, t41Var, i2, obj, j, null, zW);
            if (iB == 0) {
                t41Var.b();
                return be8Var;
            }
            if (iB != 1) {
                if (iB == 2) {
                    if (!zW) {
                        break;
                    }
                    t41Var.n();
                    Object objA2 = uw0Var.A(jv1Var, obj);
                    if (objA2 == yx1Var2) {
                        return objA2;
                    }
                } else {
                    AtomicLongFieldUpdater atomicLongFieldUpdater2 = c;
                    if (iB == 3) {
                        o21 o21VarT = g67.t(nc8.D(jv1Var));
                        try {
                            int iB2 = b(uw0Var, t41Var, i2, obj, j, o21VarT, false);
                            if (iB2 != 0) {
                                if (iB2 == 1) {
                                    yx1Var2 = yx1Var2;
                                    o21VarT.resumeWith(be8Var);
                                } else if (iB2 != 2) {
                                    if (iB2 == 4) {
                                        yx1Var2 = yx1Var2;
                                        if (j < atomicLongFieldUpdater2.get(uw0Var)) {
                                            t41Var.b();
                                        }
                                    } else {
                                        if (iB2 != 5) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        t41Var.b();
                                        t41 t41Var2 = (t41) atomicReferenceFieldUpdater.get(uw0Var);
                                        while (true) {
                                            long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(uw0Var);
                                            long j5 = andIncrement2 & 1152921504606846975L;
                                            boolean zW2 = uw0Var.w(andIncrement2, false);
                                            int i3 = ww0.b;
                                            long j6 = i3;
                                            atomicLongFieldUpdater = atomicLongFieldUpdater;
                                            long j7 = j5 / j6;
                                            int i4 = (int) (j5 % j6);
                                            yx1Var2 = yx1Var2;
                                            if (t41Var2.e != j7) {
                                                t41 t41VarN2 = uw0Var.n(j7, t41Var2);
                                                if (t41VarN2 != null) {
                                                    t41Var2 = t41VarN2;
                                                } else if (zW2) {
                                                }
                                            }
                                            int iB3 = b(uw0Var, t41Var2, i4, obj, j5, o21VarT, zW2);
                                            if (iB3 == 0) {
                                                t41Var2.b();
                                            } else if (iB3 != 1) {
                                                if (iB3 == 2) {
                                                    if (!zW2) {
                                                        o21VarT.a(t41Var2, i4 + i3);
                                                        break;
                                                    }
                                                    t41Var2.n();
                                                } else {
                                                    if (iB3 == 3) {
                                                        throw new IllegalStateException("unexpected");
                                                    }
                                                    if (iB3 != 4) {
                                                        if (iB3 == 5) {
                                                            t41Var2.b();
                                                        }
                                                    } else if (j5 < atomicLongFieldUpdater2.get(uw0Var)) {
                                                        t41Var2.b();
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    a(uw0Var, obj, o21VarT);
                                    break;
                                } else {
                                    yx1Var2 = yx1Var2;
                                    o21VarT.a(t41Var, i2 + i);
                                }
                                objS = o21VarT.s();
                                yx1Var = yx1Var2;
                                if (objS != yx1Var) {
                                    objS = be8Var;
                                }
                                if (objS == yx1Var) {
                                    return objS;
                                }
                            } else {
                                yx1Var2 = yx1Var2;
                                t41Var.b();
                            }
                            o21VarT.resumeWith(be8Var);
                            objS = o21VarT.s();
                            yx1Var = yx1Var2;
                            if (objS != yx1Var) {
                                objS = be8Var;
                            }
                            if (objS == yx1Var) {
                                return objS;
                            }
                        } catch (Throwable th) {
                            o21VarT.B();
                            throw th;
                        }
                    } else if (iB == 4) {
                        if (j < atomicLongFieldUpdater2.get(uw0Var)) {
                            t41Var.b();
                        }
                        Object objA3 = uw0Var.A(jv1Var, obj);
                        if (objA3 == yx1Var2) {
                            return objA3;
                        }
                    } else if (iB == 5) {
                        t41Var.b();
                    }
                }
            } else {
                break;
            }
        }
        return be8Var;
    }

    public static boolean G(Object obj) {
        if (!(obj instanceof m21)) {
            l0.k(obj, "Unexpected waiter: ");
            return false;
        }
        m21 m21Var = (m21) obj;
        t41 t41Var = ww0.a;
        du9 du9VarB = m21Var.b(be8.a, null);
        if (du9VarB == null) {
            return false;
        }
        m21Var.g(du9VarB);
        return true;
    }

    public static final void a(uw0 uw0Var, Object obj, o21 o21Var) {
        o21Var.resumeWith(new bn6(uw0Var.q()));
    }

    public static final int b(uw0 uw0Var, t41 t41Var, int i, Object obj, long j, Object obj2, boolean z) {
        t41Var.s(i, obj);
        if (z) {
            return uw0Var.I(t41Var, i, obj, j, obj2, z);
        }
        Object objQ = t41Var.q(i);
        if (objQ == null) {
            if (uw0Var.d(j)) {
                if (t41Var.p(i, null, ww0.d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (t41Var.p(i, null, obj2)) {
                    return 2;
                }
            }
        } else if (objQ instanceof wn8) {
            t41Var.s(i, null);
            if (uw0Var.F(objQ, obj)) {
                t41Var.t(i, ww0.i);
                return 0;
            }
            du9 du9Var = ww0.k;
            if (t41Var.h.getAndSet((i * 2) + 1, du9Var) == du9Var) {
                return 5;
            }
            t41Var.r(i, true);
            return 5;
        }
        return uw0Var.I(t41Var, i, obj, j, obj2, z);
    }

    public static void t(uw0 uw0Var) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = e;
        if ((atomicLongFieldUpdater.addAndGet(uw0Var, 1L) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(uw0Var) & 4611686018427387904L) != 0) {
            }
        }
    }

    public final Object A(jv1 jv1Var, Object obj) {
        o21 o21Var = new o21(1, nc8.D(jv1Var));
        o21Var.u();
        o21Var.resumeWith(new bn6(q()));
        Object objS = o21Var.s();
        return objS == yx1.a ? objS : be8.a;
    }

    public final void C(wn8 wn8Var, boolean z) {
        if (wn8Var instanceof m21) {
            ((jv1) wn8Var).resumeWith(new bn6(z ? p() : q()));
            return;
        }
        if (!(wn8Var instanceof tw0)) {
            l0.k(wn8Var, "Unexpected waiter: ");
            return;
        }
        tw0 tw0Var = (tw0) wn8Var;
        o21 o21Var = tw0Var.b;
        o21Var.getClass();
        tw0Var.b = null;
        tw0Var.a = ww0.l;
        Throwable thO = tw0Var.c.o();
        if (thO == null) {
            o21Var.resumeWith(Boolean.FALSE);
        } else {
            o21Var.resumeWith(new bn6(thO));
        }
    }

    public final Object E() {
        t41 t41Var;
        AtomicLongFieldUpdater atomicLongFieldUpdater = c;
        long j = atomicLongFieldUpdater.get(this);
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = b;
        long j2 = atomicLongFieldUpdater2.get(this);
        if (w(j2, true)) {
            return new q41(o());
        }
        long j3 = j2 & 1152921504606846975L;
        r41 r41Var = s41.b;
        if (j >= j3) {
            return r41Var;
        }
        Object obj = ww0.k;
        k.getClass();
        t41 t41Var2 = (t41) oh6.a.getObjectVolatile(this, y);
        while (!this.w(atomicLongFieldUpdater2.get(this), true)) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = ww0.b;
            long j5 = andIncrement / j4;
            int i = (int) (andIncrement % j4);
            if (t41Var2.e != j5) {
                t41 t41VarM = this.m(j5, t41Var2);
                if (t41VarM == null) {
                    continue;
                } else {
                    t41Var = t41VarM;
                }
            } else {
                t41Var = t41Var2;
            }
            uw0 uw0Var = this;
            Object objH = uw0Var.H(t41Var, i, andIncrement, obj);
            t41Var2 = t41Var;
            if (objH == ww0.m) {
                wn8 wn8Var = obj instanceof wn8 ? (wn8) obj : null;
                if (wn8Var != null) {
                    wn8Var.a(t41Var2, i);
                }
                uw0Var.J(andIncrement);
                t41Var2.n();
                return r41Var;
            }
            if (objH != ww0.o) {
                if (objH != ww0.n) {
                    t41Var2.b();
                    return objH;
                }
                l0.e("unexpected");
                return null;
            }
            if (andIncrement < uw0Var.r()) {
                t41Var2.b();
            }
            this = uw0Var;
        }
        return new q41(this.o());
    }

    public final boolean F(Object obj, Object obj2) throws xm2 {
        if (!(obj instanceof tw0)) {
            if (!(obj instanceof m21)) {
                l0.k(obj, "Unexpected receiver type: ");
                return false;
            }
            m21 m21Var = (m21) obj;
            t41 t41Var = ww0.a;
            du9 du9VarB = m21Var.b(obj2, null);
            if (du9VarB == null) {
                return false;
            }
            m21Var.g(du9VarB);
            return true;
        }
        tw0 tw0Var = (tw0) obj;
        o21 o21Var = tw0Var.b;
        o21Var.getClass();
        tw0Var.b = null;
        tw0Var.a = obj2;
        Boolean bool = Boolean.TRUE;
        t41 t41Var2 = ww0.a;
        du9 du9VarB2 = o21Var.b(bool, null);
        if (du9VarB2 == null) {
            return false;
        }
        o21Var.g(du9VarB2);
        return true;
    }

    public final Object H(t41 t41Var, int i, long j, Object obj) {
        AtomicReferenceArray atomicReferenceArray = t41Var.h;
        Object objQ = t41Var.q(i);
        AtomicLongFieldUpdater atomicLongFieldUpdater = b;
        if (objQ == null) {
            if (j >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return ww0.n;
                }
                if (t41Var.p(i, objQ, obj)) {
                    k();
                    return ww0.m;
                }
            }
        } else if (objQ == ww0.d && t41Var.p(i, objQ, ww0.i)) {
            k();
            Object obj2 = atomicReferenceArray.get(i * 2);
            t41Var.s(i, null);
            return obj2;
        }
        while (true) {
            Object objQ2 = t41Var.q(i);
            if (objQ2 == null || objQ2 == ww0.e) {
                if (j < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                    if (t41Var.p(i, objQ2, ww0.h)) {
                        k();
                        return ww0.o;
                    }
                } else {
                    if (obj == null) {
                        return ww0.n;
                    }
                    if (t41Var.p(i, objQ2, obj)) {
                        k();
                        return ww0.m;
                    }
                }
            } else if (objQ2 != ww0.d) {
                du9 du9Var = ww0.j;
                if (objQ2 == du9Var) {
                    return ww0.o;
                }
                if (objQ2 == ww0.h) {
                    return ww0.o;
                }
                if (objQ2 == ww0.l) {
                    k();
                    return ww0.o;
                }
                if (objQ2 != ww0.g && t41Var.p(i, objQ2, ww0.f)) {
                    boolean z = objQ2 instanceof xn8;
                    if (z) {
                        objQ2 = ((xn8) objQ2).a;
                    }
                    if (G(objQ2)) {
                        t41Var.t(i, ww0.i);
                        k();
                        Object obj3 = atomicReferenceArray.get(i * 2);
                        t41Var.s(i, null);
                        return obj3;
                    }
                    t41Var.t(i, du9Var);
                    t41Var.n();
                    if (z) {
                        k();
                    }
                    return ww0.o;
                }
            } else if (t41Var.p(i, objQ2, ww0.i)) {
                k();
                Object obj4 = atomicReferenceArray.get(i * 2);
                t41Var.s(i, null);
                return obj4;
            }
        }
    }

    public final int I(t41 t41Var, int i, Object obj, long j, Object obj2, boolean z) {
        while (true) {
            Object objQ = t41Var.q(i);
            if (objQ == null) {
                if (!d(j) || z) {
                    if (z) {
                        if (t41Var.p(i, null, ww0.j)) {
                            t41Var.n();
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (t41Var.p(i, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (t41Var.p(i, null, ww0.d)) {
                    break;
                }
            } else {
                if (objQ != ww0.e) {
                    du9 du9Var = ww0.k;
                    if (objQ == du9Var) {
                        t41Var.s(i, null);
                        return 5;
                    }
                    if (objQ == ww0.h) {
                        t41Var.s(i, null);
                        return 5;
                    }
                    if (objQ == ww0.l) {
                        t41Var.s(i, null);
                        i();
                        return 4;
                    }
                    t41Var.s(i, null);
                    if (objQ instanceof xn8) {
                        objQ = ((xn8) objQ).a;
                    }
                    if (F(objQ, obj)) {
                        t41Var.t(i, ww0.i);
                        return 0;
                    }
                    if (t41Var.h.getAndSet((i * 2) + 1, du9Var) != du9Var) {
                        t41Var.r(i, true);
                    }
                    return 5;
                }
                if (t41Var.p(i, objQ, ww0.d)) {
                    break;
                }
            }
        }
        return 1;
    }

    public final void J(long j) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        uw0 uw0Var = this;
        if (uw0Var.y()) {
            return;
        }
        while (true) {
            atomicLongFieldUpdater = d;
            if (atomicLongFieldUpdater.get(uw0Var) > j) {
                break;
            } else {
                uw0Var = this;
            }
        }
        int i = ww0.c;
        int i2 = 0;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = e;
            if (i2 < i) {
                long j2 = atomicLongFieldUpdater.get(uw0Var);
                if (j2 == (4611686018427387903L & atomicLongFieldUpdater2.get(uw0Var)) && j2 == atomicLongFieldUpdater.get(uw0Var)) {
                    return;
                } else {
                    i2++;
                }
            } else {
                while (true) {
                    long j3 = atomicLongFieldUpdater2.get(uw0Var);
                    if (atomicLongFieldUpdater2.compareAndSet(uw0Var, j3, (j3 & 4611686018427387903L) + 4611686018427387904L)) {
                        break;
                    } else {
                        uw0Var = this;
                    }
                }
                while (true) {
                    long j4 = atomicLongFieldUpdater.get(uw0Var);
                    long j5 = atomicLongFieldUpdater2.get(uw0Var);
                    long j6 = j5 & 4611686018427387903L;
                    boolean z = (j5 & 4611686018427387904L) != 0;
                    if (j4 == j6 && j4 == atomicLongFieldUpdater.get(uw0Var)) {
                        break;
                    }
                    if (z) {
                        uw0Var = this;
                    } else {
                        uw0Var = this;
                        atomicLongFieldUpdater2.compareAndSet(uw0Var, j5, 4611686018427387904L + j6);
                    }
                }
                while (true) {
                    long j7 = atomicLongFieldUpdater2.get(uw0Var);
                    if (atomicLongFieldUpdater2.compareAndSet(uw0Var, j7, j7 & 4611686018427387903L)) {
                        return;
                    } else {
                        uw0Var = this;
                    }
                }
            }
        }
    }

    @Override // defpackage.c77
    public Object c(jv1 jv1Var, Object obj) {
        return D(this, obj, jv1Var);
    }

    @Override // defpackage.h41
    public final void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        g(cancellationException, true);
    }

    public final boolean d(long j) {
        return j < d.get(this) || j < c.get(this) + ((long) this.a);
    }

    public final t41 e() {
        n.getClass();
        Unsafe unsafe = oh6.a;
        Object objectVolatile = unsafe.getObjectVolatile(this, t);
        f.getClass();
        t41 t41Var = (t41) unsafe.getObjectVolatile(this, G);
        if (t41Var.e > ((t41) objectVolatile).e) {
            objectVolatile = t41Var;
        }
        k.getClass();
        t41 t41Var2 = (t41) unsafe.getObjectVolatile(this, y);
        if (t41Var2.e > ((t41) objectVolatile).e) {
            objectVolatile = t41Var2;
        }
        dq1 dq1Var = (dq1) objectVolatile;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = dq1.a;
            Object objE = dq1Var.e();
            if (objE == zm5.a) {
                break;
            }
            dq1 dq1Var2 = (dq1) objE;
            if (dq1Var2 != null) {
                dq1Var = dq1Var2;
            } else if (dq1Var.h()) {
                break;
            }
        }
        return (t41) dq1Var;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x006f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0072  */
    /* JADX WARN: Code duplicated, block: B:26:0x0076  */
    /* JADX WARN: Code duplicated, block: B:28:0x0079  */
    /* JADX WARN: Code duplicated, block: B:30:0x007c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0080  */
    /* JADX WARN: Code duplicated, block: B:37:0x008f  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x009c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:24:0x0072, please report this as an issue */
    @Override // defpackage.c77
    public Object f(Object obj) {
        int iB;
        be8 be8Var;
        wn8 wn8Var;
        AtomicLongFieldUpdater atomicLongFieldUpdater = b;
        long j = atomicLongFieldUpdater.get(this);
        boolean z = false;
        long j2 = 1152921504606846975L;
        boolean z2 = w(j, false) ? false : !d(j & 1152921504606846975L);
        r41 r41Var = s41.b;
        if (z2) {
            return r41Var;
        }
        Object obj2 = ww0.j;
        f.getClass();
        t41 t41Var = (t41) oh6.a.getObjectVolatile(this, G);
        while (true) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j3 = andIncrement & j2;
            boolean zW = w(andIncrement, z);
            int i = ww0.b;
            long j4 = i;
            long j5 = j3 / j4;
            int i2 = (int) (j3 % j4);
            if (t41Var.e == j5) {
                iB = b(this, t41Var, i2, obj, j3, obj2, zW);
                be8Var = be8.a;
                if (iB != 0) {
                    t41Var.b();
                    return be8Var;
                }
                if (iB != 1) {
                    return be8Var;
                }
                if (iB != 2) {
                    if (zW) {
                        t41Var.n();
                        return new q41(q());
                    }
                    wn8Var = obj2 instanceof wn8 ? (wn8) obj2 : null;
                    if (wn8Var != null) {
                        wn8Var.a(t41Var, i2 + i);
                    }
                    t41Var.n();
                    return r41Var;
                }
                if (iB != 3) {
                    l0.e("unexpected");
                    return null;
                }
                if (iB != 4) {
                    if (j3 < c.get(this)) {
                        t41Var.b();
                    }
                    return new q41(q());
                }
                if (iB == 5) {
                    t41Var.b();
                }
                z = false;
            } else {
                t41 t41VarN = n(j5, t41Var);
                if (t41VarN != null) {
                    t41Var = t41VarN;
                    iB = b(this, t41Var, i2, obj, j3, obj2, zW);
                    be8Var = be8.a;
                    if (iB != 0) {
                        t41Var.b();
                        return be8Var;
                    }
                    if (iB != 1) {
                        return be8Var;
                    }
                    if (iB != 2) {
                        if (zW) {
                            t41Var.n();
                            return new q41(q());
                        }
                        if (obj2 instanceof wn8) {
                        }
                        if (wn8Var != null) {
                            wn8Var.a(t41Var, i2 + i);
                        }
                        t41Var.n();
                        return r41Var;
                    }
                    if (iB != 3) {
                        l0.e("unexpected");
                        return null;
                    }
                    if (iB != 4) {
                        if (j3 < c.get(this)) {
                            t41Var.b();
                        }
                        return new q41(q());
                    }
                    if (iB == 5) {
                        t41Var.b();
                    }
                    z = false;
                } else {
                    if (zW) {
                        return new q41(q());
                    }
                    z = false;
                }
            }
            j2 = 1152921504606846975L;
        }
    }

    public final boolean g(Throwable th, boolean z) {
        uw0 uw0Var;
        boolean z2;
        long j;
        long j2;
        long j3;
        AtomicLongFieldUpdater atomicLongFieldUpdater = b;
        if (!z) {
            uw0Var = this;
            break;
        }
        while (true) {
            long j4 = atomicLongFieldUpdater.get(this);
            if (((int) (j4 >> 60)) != 0) {
                uw0Var = this;
                break;
            }
            t41 t41Var = ww0.a;
            uw0Var = this;
            if (atomicLongFieldUpdater.compareAndSet(uw0Var, j4, (j4 & 1152921504606846975L) + 1152921504606846976L)) {
                break;
            }
            this = uw0Var;
        }
        du9 du9Var = ww0.s;
        while (true) {
            p.getClass();
            uw0 uw0Var2 = uw0Var;
            Unsafe unsafe = oh6.a;
            long j5 = r;
            Throwable th2 = th;
            boolean zCompareAndSwapObject = unsafe.compareAndSwapObject(uw0Var2, j5, du9Var, th2);
            uw0Var = uw0Var2;
            if (zCompareAndSwapObject) {
                z2 = true;
                break;
            }
            if (unsafe.getObjectVolatile(uw0Var, j5) != du9Var) {
                z2 = false;
                break;
            }
            th = th2;
        }
        if (z) {
            do {
                j3 = atomicLongFieldUpdater.get(uw0Var);
            } while (!atomicLongFieldUpdater.compareAndSet(uw0Var, j3, 3458764513820540928L + (j3 & 1152921504606846975L)));
        } else {
            do {
                j = atomicLongFieldUpdater.get(uw0Var);
                int i = (int) (j >> 60);
                if (i == 0) {
                    j2 = (j & 1152921504606846975L) + 2305843009213693952L;
                } else {
                    if (i != 1) {
                        break;
                    }
                    j2 = (j & 1152921504606846975L) + 3458764513820540928L;
                }
            } while (!atomicLongFieldUpdater.compareAndSet(uw0Var, j, j2));
        }
        uw0Var.i();
        if (z2) {
            uw0Var.u();
        }
        return z2;
    }

    public final t41 h(long j) {
        long j2;
        t41 t41VarE = e();
        if (x()) {
            t41 t41Var = t41VarE;
            loop0: while (true) {
                int i = ww0.b - 1;
                while (true) {
                    if (-1 < i) {
                        j2 = (t41Var.e * ((long) ww0.b)) + ((long) i);
                        if (j2 >= c.get(this)) {
                            while (true) {
                                Object objQ = t41Var.q(i);
                                if (objQ != null && objQ != ww0.e) {
                                    if (objQ != ww0.d) {
                                        break;
                                    }
                                    break loop0;
                                }
                                if (t41Var.p(i, objQ, ww0.l)) {
                                    t41Var.n();
                                    break;
                                }
                            }
                            i--;
                        }
                    } else {
                        t41Var = (t41) t41Var.f();
                        if (t41Var == null) {
                        }
                    }
                    j2 = -1;
                    break loop0;
                }
            }
            if (j2 != -1) {
                j(j2);
            }
        }
        Object objZ = null;
        loop3: for (t41 t41Var2 = t41VarE; t41Var2 != null; t41Var2 = (t41) t41Var2.f()) {
            for (int i2 = ww0.b - 1; -1 < i2; i2--) {
                if ((t41Var2.e * ((long) ww0.b)) + ((long) i2) < j) {
                    break loop3;
                }
                while (true) {
                    Object objQ2 = t41Var2.q(i2);
                    if (objQ2 != null && objQ2 != ww0.e) {
                        if (!(objQ2 instanceof xn8)) {
                            if (!(objQ2 instanceof wn8)) {
                                break;
                            }
                            if (t41Var2.p(i2, objQ2, ww0.l)) {
                                objZ = vm4.z(objZ, objQ2);
                                t41Var2.r(i2, true);
                                break;
                            }
                        } else {
                            if (t41Var2.p(i2, objQ2, ww0.l)) {
                                objZ = vm4.z(objZ, ((xn8) objQ2).a);
                                t41Var2.r(i2, true);
                                break;
                            }
                        }
                    } else {
                        if (t41Var2.p(i2, objQ2, ww0.l)) {
                            t41Var2.n();
                            break;
                        }
                    }
                }
            }
        }
        if (objZ != null) {
            if (!(objZ instanceof ArrayList)) {
                C((wn8) objZ, true);
                return t41VarE;
            }
            ArrayList arrayList = (ArrayList) objZ;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                C((wn8) arrayList.get(size), true);
            }
        }
        return t41VarE;
    }

    public final void i() {
        w(b.get(this), false);
    }

    public final void j(long j) {
        k.getClass();
        t41 t41Var = (t41) oh6.a.getObjectVolatile(this, y);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = c;
            long j2 = atomicLongFieldUpdater.get(this);
            if (j < Math.max(((long) this.a) + j2, d.get(this))) {
                return;
            }
            this = this;
            if (atomicLongFieldUpdater.compareAndSet(this, j2, 1 + j2)) {
                long j3 = ww0.b;
                long j4 = j2 / j3;
                int i = (int) (j2 % j3);
                if (t41Var.e != j4) {
                    t41 t41VarM = this.m(j4, t41Var);
                    if (t41VarM != null) {
                        t41Var = t41VarM;
                    }
                }
                t41 t41Var2 = t41Var;
                if (this.H(t41Var2, i, j2, null) != ww0.o || j2 < this.r()) {
                    t41Var2.b();
                }
                t41Var = t41Var2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00b3 A[EDGE_INSN: B:43:0x00b3->B:46:0x00c0 BREAK  A[LOOP:1: B:31:0x0080->B:92:0x0080]] */
    /* JADX WARN: Code duplicated, block: B:47:0x00c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00f1 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x0090 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x00a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0088 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x00c0 A[EDGE_INSN: B:89:0x00c0->B:46:0x00c0 BREAK  A[LOOP:1: B:31:0x0080->B:92:0x0080], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:? A[SYNTHETIC] */
    public final void k() {
        int i;
        boolean z;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        Object objQ;
        if (y()) {
            return;
        }
        n.getClass();
        t41 t41Var = (t41) oh6.a.getObjectVolatile(this, t);
        while (true) {
            long andIncrement = d.getAndIncrement(this);
            long j = ww0.b;
            long j2 = andIncrement / j;
            if (this.r() <= andIncrement) {
                if (t41Var.e < j2 && t41Var.d() != null) {
                    this.z(j2, t41Var);
                }
                t(this);
                return;
            }
            uw0 uw0Var = this;
            if (t41Var.e == j2) {
                i = (int) (andIncrement % j);
                Object objQ2 = t41Var.q(i);
                z = objQ2 instanceof wn8;
                atomicLongFieldUpdater = c;
                if (z || andIncrement < atomicLongFieldUpdater.get(uw0Var) || !t41Var.p(i, objQ2, ww0.g)) {
                    while (true) {
                        objQ = t41Var.q(i);
                        if (objQ instanceof wn8) {
                            if (andIncrement < atomicLongFieldUpdater.get(uw0Var)) {
                                if (t41Var.p(i, objQ, new xn8((wn8) objQ))) {
                                    t(uw0Var);
                                    return;
                                }
                            } else if (t41Var.p(i, objQ, ww0.g)) {
                                if (!G(objQ)) {
                                    t41Var.t(i, ww0.j);
                                    t41Var.n();
                                    break;
                                } else {
                                    t41Var.t(i, ww0.d);
                                    t(uw0Var);
                                    return;
                                }
                            }
                        } else {
                            if (objQ == ww0.j) {
                                break;
                            }
                            if (objQ == null) {
                                if (t41Var.p(i, objQ, ww0.e)) {
                                    t(uw0Var);
                                    return;
                                }
                            } else if (objQ != ww0.d || objQ == ww0.h || objQ == ww0.i || objQ == ww0.k || objQ == ww0.l) {
                                t(uw0Var);
                                return;
                            } else if (objQ != ww0.f) {
                                l0.k(objQ, "Unexpected cell state: ");
                                return;
                            }
                        }
                    }
                    t(uw0Var);
                } else if (G(objQ2)) {
                    t41Var.t(i, ww0.d);
                    t(uw0Var);
                    return;
                } else {
                    t41Var.t(i, ww0.j);
                    t41Var.n();
                    t(uw0Var);
                }
            } else {
                t41 t41VarL = uw0Var.l(j2, t41Var, andIncrement);
                if (t41VarL == null) {
                    continue;
                } else {
                    t41Var = t41VarL;
                    i = (int) (andIncrement % j);
                    Object objQ3 = t41Var.q(i);
                    z = objQ3 instanceof wn8;
                    atomicLongFieldUpdater = c;
                    if (z) {
                        while (true) {
                            objQ = t41Var.q(i);
                            if (objQ instanceof wn8) {
                                if (andIncrement < atomicLongFieldUpdater.get(uw0Var)) {
                                    if (t41Var.p(i, objQ, new xn8((wn8) objQ))) {
                                        t(uw0Var);
                                        return;
                                    }
                                } else if (t41Var.p(i, objQ, ww0.g)) {
                                    if (!G(objQ)) {
                                        t41Var.t(i, ww0.j);
                                        t41Var.n();
                                        break;
                                    } else {
                                        t41Var.t(i, ww0.d);
                                        t(uw0Var);
                                        return;
                                    }
                                }
                            } else {
                                if (objQ == ww0.j) {
                                    break;
                                    break;
                                }
                                if (objQ == null) {
                                    if (objQ != ww0.d) {
                                        if (objQ != ww0.f) {
                                            l0.k(objQ, "Unexpected cell state: ");
                                            return;
                                        }
                                    }
                                    t(uw0Var);
                                    return;
                                }
                                if (t41Var.p(i, objQ, ww0.e)) {
                                    t(uw0Var);
                                    return;
                                }
                            }
                        }
                        t(uw0Var);
                    } else {
                        while (true) {
                            objQ = t41Var.q(i);
                            if (objQ instanceof wn8) {
                                if (andIncrement < atomicLongFieldUpdater.get(uw0Var)) {
                                    if (t41Var.p(i, objQ, new xn8((wn8) objQ))) {
                                        t(uw0Var);
                                        return;
                                    }
                                } else if (t41Var.p(i, objQ, ww0.g)) {
                                    if (!G(objQ)) {
                                        t41Var.t(i, ww0.j);
                                        t41Var.n();
                                        break;
                                    } else {
                                        t41Var.t(i, ww0.d);
                                        t(uw0Var);
                                        return;
                                    }
                                }
                            } else {
                                if (objQ == ww0.j) {
                                    break;
                                    break;
                                }
                                if (objQ == null) {
                                    if (objQ != ww0.d) {
                                        if (objQ != ww0.f) {
                                            l0.k(objQ, "Unexpected cell state: ");
                                            return;
                                        }
                                    }
                                    t(uw0Var);
                                    return;
                                }
                                if (t41Var.p(i, objQ, ww0.e)) {
                                    t(uw0Var);
                                    return;
                                }
                            }
                        }
                        t(uw0Var);
                    }
                }
            }
            this = uw0Var;
        }
    }

    public final t41 l(long j, t41 t41Var, long j2) {
        Object objK;
        Unsafe unsafe;
        t41 t41Var2 = ww0.a;
        vw0 vw0Var = vw0.a;
        loop0: while (true) {
            objK = zm5.k(t41Var, j, vw0Var);
            if (!lg7.v(objK)) {
                n67 n67VarS = lg7.s(objK);
                while (true) {
                    n.getClass();
                    Unsafe unsafe2 = oh6.a;
                    long j3 = t;
                    n67 n67Var = (n67) unsafe2.getObjectVolatile(this, j3);
                    if (n67Var.e >= n67VarS.e) {
                        break loop0;
                    }
                    if (!n67VarS.o()) {
                        break;
                    }
                    do {
                        unsafe = oh6.a;
                        if (unsafe.compareAndSwapObject(this, t, n67Var, n67VarS)) {
                            if (!n67Var.k()) {
                                break loop0;
                            }
                            n67Var.i();
                            break loop0;
                        }
                    } while (unsafe.getObjectVolatile(this, j3) == n67Var);
                    if (n67VarS.k()) {
                        n67VarS.i();
                    }
                }
            } else {
                break;
            }
        }
        if (lg7.v(objK)) {
            i();
            z(j, t41Var);
            t(this);
            return null;
        }
        t41 t41Var3 = (t41) lg7.s(objK);
        long j4 = t41Var3.e;
        if (j4 <= j) {
            return t41Var3;
        }
        long j5 = j4 * ((long) ww0.b);
        if (!d.compareAndSet(this, j2 + 1, j5)) {
            t(this);
            return null;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = e;
        if ((atomicLongFieldUpdater.addAndGet(this, j5 - j2) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(this) & 4611686018427387904L) != 0) {
            }
        }
        return null;
    }

    public final t41 m(long j, t41 t41Var) {
        Object objK;
        t41 t41Var2;
        long j2;
        Unsafe unsafe;
        t41 t41Var3 = ww0.a;
        vw0 vw0Var = vw0.a;
        loop0: while (true) {
            objK = zm5.k(t41Var, j, vw0Var);
            if (!lg7.v(objK)) {
                n67 n67VarS = lg7.s(objK);
                while (true) {
                    k.getClass();
                    Unsafe unsafe2 = oh6.a;
                    long j3 = y;
                    n67 n67Var = (n67) unsafe2.getObjectVolatile(this, j3);
                    if (n67Var.e >= n67VarS.e) {
                        break loop0;
                    }
                    if (!n67VarS.o()) {
                        break;
                    }
                    do {
                        unsafe = oh6.a;
                        if (unsafe.compareAndSwapObject(this, y, n67Var, n67VarS)) {
                            if (!n67Var.k()) {
                                break loop0;
                            }
                            n67Var.i();
                            break loop0;
                        }
                    } while (unsafe.getObjectVolatile(this, j3) == n67Var);
                    if (n67VarS.k()) {
                        n67VarS.i();
                    }
                }
            } else {
                break;
            }
        }
        if (lg7.v(objK)) {
            i();
            if (t41Var.e * ((long) ww0.b) < r()) {
                t41Var.b();
                return null;
            }
        } else {
            t41 t41Var4 = (t41) lg7.s(objK);
            long j4 = t41Var4.e;
            if (y() || j > d.get(this) / ((long) ww0.b)) {
                t41Var2 = t41Var4;
                break;
            }
            loop3: while (true) {
                n.getClass();
                Unsafe unsafe3 = oh6.a;
                long j5 = t;
                n67 n67Var2 = (n67) unsafe3.getObjectVolatile(this, j5);
                if (n67Var2.e >= j4 || !t41Var4.o()) {
                    t41Var2 = t41Var4;
                    break;
                }
                while (true) {
                    Unsafe unsafe4 = oh6.a;
                    t41Var2 = t41Var4;
                    if (unsafe4.compareAndSwapObject(this, t, n67Var2, t41Var4)) {
                        if (!n67Var2.k()) {
                            break loop3;
                        }
                        n67Var2.i();
                        break loop3;
                    }
                    if (unsafe4.getObjectVolatile(this, j5) != n67Var2) {
                        break;
                    }
                    t41Var4 = t41Var2;
                }
                if (t41Var2.k()) {
                    t41Var2.i();
                }
                t41Var4 = t41Var2;
            }
            if (j4 <= j) {
                return t41Var2;
            }
            long j6 = j4 * ((long) ww0.b);
            do {
                j2 = c.get(this);
                if (j2 >= j6) {
                    break;
                }
            } while (!c.compareAndSet(this, j2, j6));
            if (j4 * ((long) ww0.b) < r()) {
                t41Var2.b();
            }
        }
        return null;
    }

    public final t41 n(long j, t41 t41Var) {
        Object objK;
        long j2;
        long j3;
        Unsafe unsafe;
        t41 t41Var2 = ww0.a;
        vw0 vw0Var = vw0.a;
        loop0: while (true) {
            objK = zm5.k(t41Var, j, vw0Var);
            if (!lg7.v(objK)) {
                n67 n67VarS = lg7.s(objK);
                while (true) {
                    f.getClass();
                    Unsafe unsafe2 = oh6.a;
                    long j4 = G;
                    n67 n67Var = (n67) unsafe2.getObjectVolatile(this, j4);
                    if (n67Var.e >= n67VarS.e) {
                        break loop0;
                    }
                    if (!n67VarS.o()) {
                        break;
                    }
                    do {
                        unsafe = oh6.a;
                        if (unsafe.compareAndSwapObject(this, G, n67Var, n67VarS)) {
                            if (!n67Var.k()) {
                                break loop0;
                            }
                            n67Var.i();
                            break loop0;
                        }
                    } while (unsafe.getObjectVolatile(this, j4) == n67Var);
                    if (n67VarS.k()) {
                        n67VarS.i();
                    }
                }
            } else {
                break;
            }
        }
        boolean zV = lg7.v(objK);
        AtomicLongFieldUpdater atomicLongFieldUpdater = c;
        if (zV) {
            i();
            if (t41Var.e * ((long) ww0.b) < atomicLongFieldUpdater.get(this)) {
                t41Var.b();
                return null;
            }
        } else {
            t41 t41Var3 = (t41) lg7.s(objK);
            long j5 = t41Var3.e;
            if (j5 <= j) {
                return t41Var3;
            }
            long j6 = j5 * ((long) ww0.b);
            do {
                j2 = b.get(this);
                j3 = 1152921504606846975L & j2;
                if (j3 >= j6) {
                    break;
                }
            } while (!b.compareAndSet(this, j2, j3 + (((long) ((int) (j2 >> 60))) << 60)));
            if (j5 * ((long) ww0.b) < atomicLongFieldUpdater.get(this)) {
                t41Var3.b();
            }
        }
        return null;
    }

    public final Throwable o() {
        p.getClass();
        return (Throwable) oh6.a.getObjectVolatile(this, r);
    }

    public final Throwable p() {
        Throwable thO = o();
        return thO == null ? new la1("Channel was closed") : thO;
    }

    public final Throwable q() {
        Throwable thO = o();
        return thO == null ? new ma1("Channel was closed") : thO;
    }

    public final long r() {
        return b.get(this) & 1152921504606846975L;
    }

    public final boolean s() {
        while (true) {
            k.getClass();
            Unsafe unsafe = oh6.a;
            long j = y;
            t41 t41VarM = (t41) unsafe.getObjectVolatile(this, j);
            AtomicLongFieldUpdater atomicLongFieldUpdater = c;
            long j2 = atomicLongFieldUpdater.get(this);
            if (r() <= j2) {
                return false;
            }
            long j3 = ww0.b;
            long j4 = j2 / j3;
            if (t41VarM.e == j4 || (t41VarM = m(j4, t41VarM)) != null) {
                t41VarM.b();
                int i = (int) (j2 % j3);
                while (true) {
                    Object objQ = t41VarM.q(i);
                    if (objQ != null && objQ != ww0.e) {
                        if (objQ != ww0.d) {
                            if (objQ != ww0.j && objQ != ww0.l && objQ != ww0.i && objQ != ww0.h) {
                                if (objQ != ww0.g) {
                                    if (objQ == ww0.f || j2 != atomicLongFieldUpdater.get(this)) {
                                        break;
                                        break;
                                    }
                                    return true;
                                }
                                return true;
                            }
                            break;
                            break;
                            break;
                            break;
                        }
                        return true;
                    }
                    if (t41VarM.p(i, objQ, ww0.h)) {
                        k();
                        break;
                    }
                }
                c.compareAndSet(this, j2, j2 + 1);
            } else if (((t41) unsafe.getObjectVolatile(this, j)).e < j4) {
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        int i;
        String string;
        StringBuilder sb = new StringBuilder();
        int i2 = (int) (b.get(this) >> 60);
        if (i2 == 2) {
            sb.append("closed,");
        } else if (i2 == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.a + ',');
        sb.append("data=[");
        k.getClass();
        Unsafe unsafe = oh6.a;
        int i3 = 0;
        f.getClass();
        Object objectVolatile = unsafe.getObjectVolatile(this, G);
        int i4 = 1;
        n.getClass();
        List listA0 = fl1.A0(unsafe.getObjectVolatile(this, y), objectVolatile, unsafe.getObjectVolatile(this, t));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listA0) {
            if (((t41) obj) != ww0.a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            m0.d();
            return null;
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j = ((t41) next).e;
            do {
                Object next2 = it.next();
                long j2 = ((t41) next2).e;
                if (j > j2) {
                    next = next2;
                    j = j2;
                }
            } while (it.hasNext());
        }
        t41 t41Var = (t41) next;
        long j3 = c.get(this);
        long jR = r();
        loop2: while (true) {
            int i5 = ww0.b;
            int i6 = i3;
            while (i6 < i5) {
                i = i4;
                long j4 = (t41Var.e * ((long) ww0.b)) + ((long) i6);
                if (j4 >= jR && j4 >= j3) {
                    break loop2;
                }
                Object objQ = t41Var.q(i6);
                Object obj2 = t41Var.h.get(i6 * 2);
                if (objQ instanceof m21) {
                    string = (jR > j4 || j4 >= j3) ? (j3 > j4 || j4 >= jR) ? "cont" : "send" : "receive";
                } else if (objQ instanceof xn8) {
                    string = "EB(" + objQ + ')';
                } else if (pe4.d(objQ, ww0.f) || pe4.d(objQ, ww0.g)) {
                    string = "resuming_sender";
                } else {
                    if (objQ != null && !objQ.equals(ww0.e) && !objQ.equals(ww0.i) && !objQ.equals(ww0.h) && !objQ.equals(ww0.k) && !objQ.equals(ww0.j) && !objQ.equals(ww0.l)) {
                        string = objQ.toString();
                    }
                    i6++;
                    i4 = i;
                }
                if (obj2 != null) {
                    sb.append("(" + string + ',' + obj2 + "),");
                } else {
                    sb.append(string + ',');
                }
                i6++;
                i4 = i;
            }
            i = i4;
            t41Var = (t41) t41Var.d();
            if (t41Var == null) {
                break;
            }
            i4 = i;
            i3 = 0;
        }
        if (sb.length() == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        if (sb.charAt(sb.length() - i) == ',') {
            sb.deleteCharAt(sb.length() - i).getClass();
        }
        sb.append("]");
        return sb.toString();
    }

    public final void u() {
        Object objectVolatile;
        uw0 uw0Var;
        loop0: while (true) {
            q.getClass();
            Unsafe unsafe = oh6.a;
            long j = x;
            objectVolatile = unsafe.getObjectVolatile(this, j);
            du9 du9Var = objectVolatile == null ? ww0.q : ww0.r;
            while (true) {
                Unsafe unsafe2 = oh6.a;
                uw0Var = this;
                if (unsafe2.compareAndSwapObject(uw0Var, x, objectVolatile, du9Var)) {
                    break loop0;
                } else if (unsafe2.getObjectVolatile(uw0Var, j) != objectVolatile) {
                    break;
                } else {
                    this = uw0Var;
                }
            }
            this = uw0Var;
        }
        if (objectVolatile == null) {
            return;
        }
        nc8.g(1, objectVolatile);
        ((mt3) objectVolatile).invoke(uw0Var.o());
    }

    public final void v(q76 q76Var) {
        Unsafe unsafe;
        while (true) {
            q.getClass();
            Unsafe unsafe2 = oh6.a;
            uw0 uw0Var = this;
            if (unsafe2.compareAndSwapObject(uw0Var, x, (Object) null, q76Var)) {
                return;
            }
            long j = x;
            if (unsafe2.getObjectVolatile(uw0Var, j) != null) {
                while (true) {
                    Object objectVolatile = oh6.a.getObjectVolatile(uw0Var, j);
                    du9 du9Var = ww0.q;
                    if (objectVolatile != du9Var) {
                        if (objectVolatile == ww0.r) {
                            l0.e("Another handler was already registered and successfully invoked");
                            return;
                        } else {
                            l0.k(objectVolatile, "Another handler is already registered: ");
                            return;
                        }
                    }
                    du9 du9Var2 = ww0.r;
                    do {
                        uw0 uw0Var2 = uw0Var;
                        unsafe = oh6.a;
                        boolean zCompareAndSwapObject = unsafe.compareAndSwapObject(uw0Var2, x, du9Var, du9Var2);
                        uw0Var = uw0Var2;
                        if (zCompareAndSwapObject) {
                            q76Var.invoke(uw0Var.o());
                            return;
                        }
                    } while (unsafe.getObjectVolatile(uw0Var, j) == du9Var);
                }
            } else {
                this = uw0Var;
            }
        }
    }

    public final boolean w(long j, boolean z) {
        int i = (int) (j >> 60);
        if (i != 0 && i != 1) {
            if (i == 2) {
                h(j & 1152921504606846975L);
                if (!z || !s()) {
                }
            } else {
                if (i != 3) {
                    g84.f(fz5.j(i, "unexpected close status: "));
                    return false;
                }
                t41 t41VarH = h(j & 1152921504606846975L);
                Object objZ = null;
                loop0: do {
                    for (int i2 = ww0.b - 1; -1 < i2; i2--) {
                        long j2 = (t41VarH.e * ((long) ww0.b)) + ((long) i2);
                        while (true) {
                            Object objQ = t41VarH.q(i2);
                            if (objQ == ww0.i) {
                                break loop0;
                            }
                            du9 du9Var = ww0.d;
                            AtomicLongFieldUpdater atomicLongFieldUpdater = c;
                            if (objQ != du9Var) {
                                if (objQ != ww0.e && objQ != null) {
                                    if (!(objQ instanceof wn8) && !(objQ instanceof xn8)) {
                                        du9 du9Var2 = ww0.g;
                                        if (objQ == du9Var2 || objQ == ww0.f) {
                                            break loop0;
                                        }
                                        if (objQ != du9Var2) {
                                            break;
                                        }
                                    } else {
                                        if (j2 < atomicLongFieldUpdater.get(this)) {
                                            break loop0;
                                        }
                                        wn8 wn8Var = objQ instanceof xn8 ? ((xn8) objQ).a : (wn8) objQ;
                                        if (t41VarH.p(i2, objQ, ww0.l)) {
                                            objZ = vm4.z(objZ, wn8Var);
                                            t41VarH.s(i2, null);
                                            t41VarH.n();
                                            break;
                                        }
                                    }
                                } else {
                                    if (t41VarH.p(i2, objQ, ww0.l)) {
                                        t41VarH.n();
                                        break;
                                    }
                                }
                            } else {
                                if (j2 < atomicLongFieldUpdater.get(this)) {
                                    break loop0;
                                }
                                if (t41VarH.p(i2, objQ, ww0.l)) {
                                    t41VarH.s(i2, null);
                                    t41VarH.n();
                                    break;
                                }
                            }
                        }
                    }
                    t41VarH = (t41) t41VarH.f();
                } while (t41VarH != null);
                if (objZ != null) {
                    if (objZ instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) objZ;
                        for (int size = arrayList.size() - 1; -1 < size; size--) {
                            C((wn8) arrayList.get(size), false);
                        }
                    } else {
                        C((wn8) objZ, false);
                    }
                }
            }
            return true;
        }
        return false;
    }

    public boolean x() {
        return false;
    }

    public final boolean y() {
        long j = d.get(this);
        return j == 0 || j == Long.MAX_VALUE;
    }

    public final void z(long j, t41 t41Var) {
        uw0 uw0Var;
        t41 t41Var2;
        t41 t41Var3;
        while (t41Var.e < j && (t41Var3 = (t41) t41Var.d()) != null) {
            t41Var = t41Var3;
        }
        while (true) {
            t41 t41Var4 = t41Var;
            while (t41Var4.g() && (t41Var2 = (t41) t41Var4.d()) != null) {
                t41Var4 = t41Var2;
            }
            while (true) {
                n.getClass();
                Unsafe unsafe = oh6.a;
                long j2 = t;
                n67 n67Var = (n67) unsafe.getObjectVolatile(this, j2);
                if (n67Var.e >= t41Var4.e) {
                    return;
                }
                if (!t41Var4.o()) {
                    break;
                }
                while (true) {
                    Unsafe unsafe2 = oh6.a;
                    uw0Var = this;
                    if (unsafe2.compareAndSwapObject(uw0Var, t, n67Var, t41Var4)) {
                        if (n67Var.k()) {
                            n67Var.i();
                            return;
                        }
                        return;
                    } else if (unsafe2.getObjectVolatile(uw0Var, j2) != n67Var) {
                        break;
                    } else {
                        this = uw0Var;
                    }
                }
                if (t41Var4.k()) {
                    t41Var4.i();
                }
                this = uw0Var;
            }
            t41Var = t41Var4;
        }
    }
}
