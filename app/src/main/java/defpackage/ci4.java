package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ci4 implements oh4, k61 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(ci4.class, Object.class, "_state$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater b;
    public static final /* synthetic */ long c;
    public static final /* synthetic */ long d;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    static {
        Unsafe unsafe = oh6.a;
        d = unsafe.objectFieldOffset(ci4.class.getDeclaredField("_state$volatile"));
        b = AtomicReferenceFieldUpdater.newUpdater(ci4.class, Object.class, "_parentHandle$volatile");
        c = unsafe.objectFieldOffset(ci4.class.getDeclaredField("_parentHandle$volatile"));
    }

    public ci4(boolean z) {
        this._state$volatile = z ? pe4.h : pe4.g;
    }

    public static h61 J(v05 v05Var) {
        while (v05Var.l()) {
            v05Var = v05Var.k();
        }
        while (true) {
            v05Var = v05Var.j();
            if (!v05Var.l()) {
                if (v05Var instanceof h61) {
                    return (h61) v05Var;
                }
                if (v05Var instanceof wn5) {
                    return null;
                }
            }
        }
    }

    public static String S(Object obj) {
        if (!(obj instanceof vh4)) {
            if (obj instanceof fb4) {
                return ((fb4) obj).isActive() ? "Active" : "New";
            }
            return obj instanceof ln1 ? "Cancelled" : "Completed";
        }
        vh4 vh4Var = (vh4) obj;
        if (vh4Var.e()) {
            return "Cancelling";
        }
        return vh4.b.get(vh4Var) == 1 ? "Completing" : "Active";
    }

    public static CancellationException T(ci4 ci4Var, Throwable th) {
        CancellationException cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        return cancellationException == null ? new ph4(ci4Var.o(), th, ci4Var) : cancellationException;
    }

    public boolean A(Throwable th) {
        return false;
    }

    public final void C(oh4 oh4Var) {
        ao5 ao5Var = ao5.a;
        if (oh4Var == null) {
            Q(ao5Var);
            return;
        }
        oh4Var.start();
        g61 g61VarAttachChild = oh4Var.attachChild(this);
        Q(g61VarAttachChild);
        if (E()) {
            g61VarAttachChild.dispose();
            Q(ao5Var);
        }
    }

    public final in2 D(boolean z, sh4 sh4Var) {
        ci4 ci4Var;
        sh4 sh4Var2;
        boolean zC;
        sh4Var.k = this;
        loop0: while (true) {
            Object objZ = this.z();
            if (!(objZ instanceof iv2)) {
                ci4Var = this;
                sh4Var2 = sh4Var;
                boolean z2 = objZ instanceof fb4;
                ao5 ao5Var = ao5.a;
                if (z2) {
                    fb4 fb4Var = (fb4) objZ;
                    wn5 wn5VarB = fb4Var.b();
                    if (wn5VarB == null) {
                        ci4Var.O((sh4) objZ);
                    } else {
                        if (sh4Var2.p()) {
                            vh4 vh4Var = fb4Var instanceof vh4 ? (vh4) fb4Var : null;
                            Throwable thD = vh4Var != null ? vh4Var.d() : null;
                            if (thD == null) {
                                zC = wn5VarB.c(sh4Var2, 5);
                            } else if (z) {
                                sh4Var2.q(thD);
                                return ao5Var;
                            }
                        } else {
                            zC = wn5VarB.c(sh4Var2, 1);
                        }
                        if (zC) {
                            break;
                        }
                    }
                    this = ci4Var;
                    sh4Var = sh4Var2;
                } else if (z) {
                    Object objZ2 = ci4Var.z();
                    ln1 ln1Var = objZ2 instanceof ln1 ? (ln1) objZ2 : null;
                    sh4Var2.q(ln1Var != null ? ln1Var.a : null);
                }
                return ao5Var;
            }
            iv2 iv2Var = (iv2) objZ;
            if (iv2Var.a) {
                while (true) {
                    a.getClass();
                    Unsafe unsafe = oh6.a;
                    long j = d;
                    ci4Var = this;
                    sh4Var2 = sh4Var;
                    if (unsafe.compareAndSwapObject(ci4Var, j, objZ, sh4Var2)) {
                        break loop0;
                    }
                    if (unsafe.getObjectVolatile(ci4Var, j) != objZ) {
                        break;
                    }
                    this = ci4Var;
                    sh4Var = sh4Var2;
                }
            } else {
                ci4Var = this;
                sh4Var2 = sh4Var;
                ci4Var.N(iv2Var);
            }
            this = ci4Var;
            sh4Var = sh4Var2;
        }
        return sh4Var2;
    }

    public final boolean E() {
        return !(z() instanceof fb4);
    }

    public boolean F() {
        return this instanceof it0;
    }

    public final boolean G(Object obj) {
        Object objW;
        do {
            objW = W(z(), obj);
            if (objW == pe4.b) {
                return false;
            }
            if (objW == pe4.c) {
                return true;
            }
        } while (objW == pe4.d);
        i(objW);
        return true;
    }

    public final Object H(Object obj) {
        Object objW;
        do {
            objW = W(z(), obj);
            if (objW == pe4.b) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                ln1 ln1Var = obj instanceof ln1 ? (ln1) obj : null;
                throw new IllegalStateException(str, ln1Var != null ? ln1Var.a : null);
            }
        } while (objW == pe4.d);
        return objW;
    }

    public String I() {
        return getClass().getSimpleName();
    }

    public final void K(wn5 wn5Var, Throwable th) {
        wn5Var.c(new xw4(4), 4);
        Object objI = wn5Var.i();
        objI.getClass();
        mn1 mn1Var = null;
        for (v05 v05VarJ = (v05) objI; !v05VarJ.equals(wn5Var); v05VarJ = v05VarJ.j()) {
            if ((v05VarJ instanceof sh4) && ((sh4) v05VarJ).p()) {
                try {
                    ((sh4) v05VarJ).q(th);
                } catch (Throwable th2) {
                    if (mn1Var != null) {
                        yc9.a(mn1Var, th2);
                    } else {
                        mn1Var = new mn1("Exception in completion handler " + v05VarJ + " for " + this, th2);
                    }
                }
            }
        }
        if (mn1Var != null) {
            B(mn1Var);
        }
        n(th);
    }

    public final void N(iv2 iv2Var) {
        wn5 wn5Var = new wn5();
        Object eb4Var = iv2Var.a ? wn5Var : new eb4(wn5Var);
        while (true) {
            a.getClass();
            Unsafe unsafe = oh6.a;
            long j = d;
            ci4 ci4Var = this;
            iv2 iv2Var2 = iv2Var;
            if (unsafe.compareAndSwapObject(ci4Var, j, iv2Var2, eb4Var) || unsafe.getObjectVolatile(ci4Var, j) != iv2Var2) {
                return;
            }
            this = ci4Var;
            iv2Var = iv2Var2;
        }
    }

    public final void O(sh4 sh4Var) {
        sh4Var.e(new wn5());
        v05 v05VarJ = sh4Var.j();
        while (true) {
            a.getClass();
            Unsafe unsafe = oh6.a;
            long j = d;
            ci4 ci4Var = this;
            sh4 sh4Var2 = sh4Var;
            if (unsafe.compareAndSwapObject(ci4Var, j, sh4Var2, v05VarJ) || unsafe.getObjectVolatile(ci4Var, j) != sh4Var2) {
                return;
            }
            this = ci4Var;
            sh4Var = sh4Var2;
        }
    }

    public final void P(sh4 sh4Var) {
        ci4 ci4Var;
        while (true) {
            Object objZ = this.z();
            if (!(objZ instanceof sh4)) {
                if (!(objZ instanceof fb4) || ((fb4) objZ).b() == null) {
                    return;
                }
                sh4Var.m();
                return;
            }
            if (objZ != sh4Var) {
                return;
            }
            iv2 iv2Var = pe4.h;
            while (true) {
                a.getClass();
                Unsafe unsafe = oh6.a;
                long j = d;
                ci4Var = this;
                if (unsafe.compareAndSwapObject(ci4Var, j, objZ, iv2Var)) {
                    return;
                }
                if (unsafe.getObjectVolatile(ci4Var, j) != objZ) {
                    break;
                } else {
                    this = ci4Var;
                }
            }
            this = ci4Var;
        }
    }

    public final void Q(g61 g61Var) {
        b.getClass();
        oh6.a.putObjectVolatile(this, c, g61Var);
    }

    public final int R(Object obj) {
        Unsafe unsafe;
        Unsafe unsafe2;
        boolean z = obj instanceof iv2;
        long j = d;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        if (z) {
            if (((iv2) obj).a) {
                return 0;
            }
            iv2 iv2Var = pe4.h;
            do {
                atomicReferenceFieldUpdater.getClass();
                unsafe2 = oh6.a;
                if (unsafe2.compareAndSwapObject(this, d, obj, iv2Var)) {
                    return 1;
                }
            } while (unsafe2.getObjectVolatile(this, j) == obj);
            return -1;
        }
        if (!(obj instanceof eb4)) {
            return 0;
        }
        wn5 wn5Var = ((eb4) obj).a;
        do {
            atomicReferenceFieldUpdater.getClass();
            unsafe = oh6.a;
            if (unsafe.compareAndSwapObject(this, d, obj, wn5Var)) {
                return 1;
            }
        } while (unsafe.getObjectVolatile(this, j) == obj);
        return -1;
    }

    public final boolean U(fb4 fb4Var, Object obj) {
        Object gb4Var = obj instanceof fb4 ? new gb4((fb4) obj) : obj;
        while (true) {
            a.getClass();
            Unsafe unsafe = oh6.a;
            long j = d;
            ci4 ci4Var = this;
            fb4 fb4Var2 = fb4Var;
            if (unsafe.compareAndSwapObject(ci4Var, j, fb4Var2, gb4Var)) {
                ci4Var.L(obj);
                ci4Var.q(fb4Var2, obj);
                return true;
            }
            if (unsafe.getObjectVolatile(ci4Var, j) != fb4Var2) {
                return false;
            }
            this = ci4Var;
            fb4Var = fb4Var2;
        }
    }

    public final boolean V(fb4 fb4Var, Throwable th) {
        wn5 wn5VarX = x(fb4Var);
        if (wn5VarX == null) {
            return false;
        }
        vh4 vh4Var = new vh4(wn5VarX, th);
        while (true) {
            a.getClass();
            Unsafe unsafe = oh6.a;
            long j = d;
            ci4 ci4Var = this;
            fb4 fb4Var2 = fb4Var;
            if (unsafe.compareAndSwapObject(ci4Var, j, fb4Var2, vh4Var)) {
                ci4Var.K(wn5VarX, th);
                return true;
            }
            if (unsafe.getObjectVolatile(ci4Var, j) != fb4Var2) {
                return false;
            }
            this = ci4Var;
            fb4Var = fb4Var2;
        }
    }

    public final Object W(Object obj, Object obj2) {
        if (!(obj instanceof fb4)) {
            return pe4.b;
        }
        if (((obj instanceof iv2) || (obj instanceof sh4)) && !(obj instanceof h61) && !(obj2 instanceof ln1)) {
            return U((fb4) obj, obj2) ? obj2 : pe4.d;
        }
        fb4 fb4Var = (fb4) obj;
        wn5 wn5VarX = x(fb4Var);
        if (wn5VarX == null) {
            return pe4.d;
        }
        vh4 vh4Var = fb4Var instanceof vh4 ? (vh4) fb4Var : null;
        if (vh4Var == null) {
            vh4Var = new vh4(wn5VarX, null);
        }
        synchronized (vh4Var) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = vh4.b;
            if (atomicIntegerFieldUpdater.get(vh4Var) == 1) {
                return pe4.b;
            }
            atomicIntegerFieldUpdater.set(vh4Var, 1);
            if (vh4Var != fb4Var) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, fb4Var, vh4Var)) {
                    if (atomicReferenceFieldUpdater.get(this) != fb4Var) {
                        return pe4.d;
                    }
                }
            }
            boolean zE = vh4Var.e();
            ln1 ln1Var = obj2 instanceof ln1 ? (ln1) obj2 : null;
            if (ln1Var != null) {
                vh4Var.a(ln1Var.a);
            }
            Throwable thD = zE ? null : vh4Var.d();
            if (thD != null) {
                K(wn5VarX, thD);
            }
            h61 h61VarJ = J(wn5VarX);
            if (h61VarJ != null && X(vh4Var, h61VarJ, obj2)) {
                return pe4.c;
            }
            wn5VarX.c(new xw4(2), 2);
            h61 h61VarJ2 = J(wn5VarX);
            return (h61VarJ2 == null || !X(vh4Var, h61VarJ2, obj2)) ? s(vh4Var, obj2) : pe4.c;
        }
    }

    public final boolean X(vh4 vh4Var, h61 h61Var, Object obj) {
        while (sz8.G(h61Var.n, false, new uh4(this, vh4Var, h61Var, obj)) == ao5.a) {
            h61Var = J(h61Var);
            if (h61Var == null) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.oh4
    public final g61 attachChild(k61 k61Var) {
        ci4 ci4Var;
        h61 h61Var = new h61(k61Var);
        h61Var.k = this;
        loop0: while (true) {
            Object objZ = this.z();
            if (objZ instanceof iv2) {
                iv2 iv2Var = (iv2) objZ;
                if (iv2Var.a) {
                    while (true) {
                        a.getClass();
                        Unsafe unsafe = oh6.a;
                        long j = d;
                        ci4Var = this;
                        if (unsafe.compareAndSwapObject(ci4Var, j, objZ, h61Var)) {
                            break loop0;
                        }
                        if (unsafe.getObjectVolatile(ci4Var, j) != objZ) {
                            break;
                        }
                        this = ci4Var;
                    }
                } else {
                    ci4Var = this;
                    ci4Var.N(iv2Var);
                }
                this = ci4Var;
            } else {
                ci4Var = this;
                boolean z = objZ instanceof fb4;
                ao5 ao5Var = ao5.a;
                Throwable thD = null;
                if (!z) {
                    Object objZ2 = ci4Var.z();
                    ln1 ln1Var = objZ2 instanceof ln1 ? (ln1) objZ2 : null;
                    h61Var.q(ln1Var != null ? ln1Var.a : null);
                    return ao5Var;
                }
                wn5 wn5VarB = ((fb4) objZ).b();
                if (wn5VarB != null) {
                    if (wn5VarB.c(h61Var, 7)) {
                        break;
                    }
                    boolean zC = wn5VarB.c(h61Var, 3);
                    Object objZ3 = ci4Var.z();
                    if (objZ3 instanceof vh4) {
                        thD = ((vh4) objZ3).d();
                    } else {
                        ln1 ln1Var2 = objZ3 instanceof ln1 ? (ln1) objZ3 : null;
                        if (ln1Var2 != null) {
                            thD = ln1Var2.a;
                        }
                    }
                    h61Var.q(thD);
                    if (zC) {
                        break;
                    }
                    return ao5Var;
                }
                ci4Var.O((sh4) objZ);
                this = ci4Var;
            }
        }
        return h61Var;
    }

    public Object await(jv1 jv1Var) {
        return k(jv1Var);
    }

    @Override // defpackage.oh4
    public void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new ph4(o(), null, this);
        }
        m(cancellationException);
    }

    @Override // defpackage.ox1
    public final Object fold(Object obj, qt3 qt3Var) {
        return qt3Var.invoke(obj, this);
    }

    @Override // defpackage.ox1
    public final mx1 get(nx1 nx1Var) {
        return od2.k(this, nx1Var);
    }

    @Override // defpackage.oh4
    public final CancellationException getCancellationException() {
        Object objZ = z();
        if (!(objZ instanceof vh4)) {
            if (!(objZ instanceof fb4)) {
                return objZ instanceof ln1 ? T(this, ((ln1) objZ).a) : new ph4(getClass().getSimpleName().concat(" has completed normally"), null, this);
            }
            l0.k(this, "Job is still new or active: ");
            return null;
        }
        Throwable thD = ((vh4) objZ).d();
        if (thD == null) {
            l0.k(this, "Job is still new or active: ");
            return null;
        }
        String strConcat = getClass().getSimpleName().concat(" is cancelling");
        CancellationException cancellationException = thD instanceof CancellationException ? (CancellationException) thD : null;
        return cancellationException == null ? new ph4(strConcat, thD, this) : cancellationException;
    }

    @Override // defpackage.oh4
    public final f77 getChildren() {
        return new i77(new yh4(null, this));
    }

    public Object getCompleted() {
        return t();
    }

    public final Throwable getCompletionExceptionOrNull() {
        Object objZ = z();
        if (objZ instanceof fb4) {
            l0.e("This job has not completed yet");
            return null;
        }
        ln1 ln1Var = objZ instanceof ln1 ? (ln1) objZ : null;
        if (ln1Var != null) {
            return ln1Var.a;
        }
        return null;
    }

    @Override // defpackage.mx1
    public final nx1 getKey() {
        return nh4.b;
    }

    @Override // defpackage.oh4
    public final in2 invokeOnCompletion(boolean z, boolean z2, mt3 mt3Var) {
        return D(z2, z ? new mg4(mt3Var) : new ng4(mt3Var));
    }

    @Override // defpackage.oh4
    public boolean isActive() {
        Object objZ = z();
        return (objZ instanceof fb4) && ((fb4) objZ).isActive();
    }

    @Override // defpackage.oh4
    public final boolean isCancelled() {
        Object objZ = z();
        if (objZ instanceof ln1) {
            return true;
        }
        return (objZ instanceof vh4) && ((vh4) objZ).e();
    }

    public void j(Object obj) {
        i(obj);
    }

    @Override // defpackage.oh4
    public final Object join(jv1 jv1Var) {
        Object objZ;
        be8 be8Var;
        do {
            objZ = z();
            boolean z = objZ instanceof fb4;
            be8Var = be8.a;
            if (!z) {
                sz8.p(jv1Var.getContext());
                return be8Var;
            }
        } while (R(objZ) < 0);
        o21 o21Var = new o21(1, nc8.D(jv1Var));
        o21Var.u();
        o21Var.x(new jn2(sz8.G(this, true, new in6(o21Var))));
        Object objS = o21Var.s();
        yx1 yx1Var = yx1.a;
        if (objS != yx1Var) {
            objS = be8Var;
        }
        return objS == yx1Var ? objS : be8Var;
    }

    public final Object k(jv1 jv1Var) throws Throwable {
        Object objZ;
        do {
            objZ = z();
            if (!(objZ instanceof fb4)) {
                if (objZ instanceof ln1) {
                    throw ((ln1) objZ).a;
                }
                return pe4.I(objZ);
            }
        } while (R(objZ) < 0);
        th4 th4Var = new th4(nc8.D(jv1Var), this);
        th4Var.u();
        th4Var.x(new jn2(sz8.G(this, true, new hn6(th4Var))));
        return th4Var.s();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003c A[PHI: r0
      0x003c: PHI (r0v1 java.lang.Object) = (r0v0 java.lang.Object), (r0v9 java.lang.Object) binds: [B:3:0x0008, B:16:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x0040  */
    /* JADX WARN: Code duplicated, block: B:26:0x0056 A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #0 {, blocks: (B:24:0x004b, B:26:0x0056, B:31:0x005e, B:33:0x0067, B:34:0x006b), top: B:71:0x004b }] */
    /* JADX WARN: Code duplicated, block: B:31:0x005e A[Catch: all -> 0x005c, TRY_ENTER, TryCatch #0 {, blocks: (B:24:0x004b, B:26:0x0056, B:31:0x005e, B:33:0x0067, B:34:0x006b), top: B:71:0x004b }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0067 A[Catch: all -> 0x005c, TryCatch #0 {, blocks: (B:24:0x004b, B:26:0x0056, B:31:0x005e, B:33:0x0067, B:34:0x006b), top: B:71:0x004b }] */
    /* JADX WARN: Code duplicated, block: B:36:0x007a  */
    /* JADX WARN: Code duplicated, block: B:39:0x007e  */
    /* JADX WARN: Code duplicated, block: B:43:0x008a  */
    /* JADX WARN: Code duplicated, block: B:45:0x008e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x0090  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:69:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:71:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x004a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x00b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x0040, please report this as an issue */
    public final boolean l(Object obj) {
        Throwable thR;
        Object objZ;
        Throwable thD;
        du9 du9Var;
        fb4 fb4Var;
        Object objW;
        Object objW2 = pe4.b;
        if (w()) {
            do {
                Object objZ2 = z();
                if (objZ2 instanceof fb4) {
                    if (objZ2 instanceof vh4) {
                        if (vh4.b.get((vh4) objZ2) == 1) {
                        }
                    }
                    objW2 = W(objZ2, new ln1(r(obj), false));
                }
                objW2 = pe4.b;
                break;
            } while (objW2 == pe4.d);
            if (objW2 != pe4.c) {
                if (objW2 == pe4.b) {
                    thR = null;
                    while (true) {
                        objZ = z();
                        if (objZ instanceof vh4) {
                            synchronized (objZ) {
                                if (((vh4) objZ).c() == pe4.f) {
                                    du9Var = pe4.e;
                                } else {
                                    boolean zE = ((vh4) objZ).e();
                                    if (thR == null) {
                                        thR = r(obj);
                                    }
                                    ((vh4) objZ).a(thR);
                                    thD = zE ? null : ((vh4) objZ).d();
                                    if (thD != null) {
                                        K(((vh4) objZ).a, thD);
                                    }
                                    du9Var = pe4.b;
                                }
                            }
                        } else if (objZ instanceof fb4) {
                            if (thR == null) {
                                thR = r(obj);
                            }
                            fb4Var = (fb4) objZ;
                            if (fb4Var.isActive()) {
                                objW = W(objZ, new ln1(thR, false));
                                if (objW != pe4.b) {
                                    l0.k(objZ, "Cannot happen in ");
                                    return false;
                                }
                                if (objW != pe4.d) {
                                    objW2 = objW;
                                    break;
                                }
                            } else if (V(fb4Var, thR)) {
                                du9Var = pe4.b;
                            }
                        } else {
                            du9Var = pe4.e;
                        }
                        objW2 = du9Var;
                        break;
                    }
                }
                if (objW2 != pe4.b && objW2 != pe4.c) {
                    if (objW2 == pe4.e) {
                        return false;
                    }
                    i(objW2);
                    return true;
                }
            }
        } else {
            if (objW2 == pe4.b) {
                thR = null;
                while (true) {
                    objZ = z();
                    if (objZ instanceof vh4) {
                        synchronized (objZ) {
                            if (((vh4) objZ).c() == pe4.f) {
                                du9Var = pe4.e;
                            } else {
                                boolean zE2 = ((vh4) objZ).e();
                                if (thR == null) {
                                    thR = r(obj);
                                }
                                ((vh4) objZ).a(thR);
                                if (zE2) {
                                }
                                if (thD != null) {
                                    K(((vh4) objZ).a, thD);
                                }
                                du9Var = pe4.b;
                            }
                        }
                    } else if (objZ instanceof fb4) {
                        if (thR == null) {
                            thR = r(obj);
                        }
                        fb4Var = (fb4) objZ;
                        if (fb4Var.isActive()) {
                            objW = W(objZ, new ln1(thR, false));
                            if (objW != pe4.b) {
                                l0.k(objZ, "Cannot happen in ");
                                return false;
                            }
                            if (objW != pe4.d) {
                                objW2 = objW;
                                break;
                            }
                        } else if (V(fb4Var, thR)) {
                            du9Var = pe4.b;
                        }
                    } else {
                        du9Var = pe4.e;
                    }
                    objW2 = du9Var;
                    break;
                }
            }
            if (objW2 != pe4.b) {
                if (objW2 == pe4.e) {
                    return false;
                }
                i(objW2);
                return true;
            }
        }
        return true;
    }

    public void m(CancellationException cancellationException) {
        l(cancellationException);
    }

    @Override // defpackage.ox1
    public final ox1 minusKey(nx1 nx1Var) {
        return od2.r(this, nx1Var);
    }

    public final boolean n(Throwable th) {
        if (F()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        g61 g61VarY = y();
        if (g61VarY == null || g61VarY == ao5.a) {
            return z;
        }
        return g61VarY.a(th) || z;
    }

    public String o() {
        return "Job was cancelled";
    }

    public boolean p(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return l(th) && v();
    }

    @Override // defpackage.ox1
    public final ox1 plus(ox1 ox1Var) {
        return od2.u(this, ox1Var);
    }

    public final void q(fb4 fb4Var, Object obj) {
        g61 g61VarY = y();
        if (g61VarY != null) {
            g61VarY.dispose();
            Q(ao5.a);
        }
        mn1 mn1Var = null;
        ln1 ln1Var = obj instanceof ln1 ? (ln1) obj : null;
        Throwable th = ln1Var != null ? ln1Var.a : null;
        if (fb4Var instanceof sh4) {
            try {
                ((sh4) fb4Var).q(th);
                return;
            } catch (Throwable th2) {
                B(new mn1("Exception in completion handler " + fb4Var + " for " + this, th2));
                return;
            }
        }
        wn5 wn5VarB = fb4Var.b();
        if (wn5VarB != null) {
            wn5VarB.c(new xw4(1), 1);
            Object objI = wn5VarB.i();
            objI.getClass();
            for (v05 v05VarJ = (v05) objI; !v05VarJ.equals(wn5VarB); v05VarJ = v05VarJ.j()) {
                if (v05VarJ instanceof sh4) {
                    try {
                        ((sh4) v05VarJ).q(th);
                    } catch (Throwable th3) {
                        if (mn1Var != null) {
                            yc9.a(mn1Var, th3);
                        } else {
                            mn1Var = new mn1("Exception in completion handler " + v05VarJ + " for " + this, th3);
                        }
                    }
                }
            }
            if (mn1Var != null) {
                B(mn1Var);
            }
        }
    }

    public final Throwable r(Object obj) {
        Throwable thD;
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        ci4 ci4Var = (ci4) obj;
        Object objZ = ci4Var.z();
        if (objZ instanceof vh4) {
            thD = ((vh4) objZ).d();
        } else if (objZ instanceof ln1) {
            thD = ((ln1) objZ).a;
        } else {
            if (objZ instanceof fb4) {
                l0.k(objZ, "Cannot be cancelling child in this state: ");
                return null;
            }
            thD = null;
        }
        CancellationException cancellationException = thD instanceof CancellationException ? (CancellationException) thD : null;
        return cancellationException == null ? new ph4("Parent job is ".concat(S(objZ)), thD, ci4Var) : cancellationException;
    }

    public final Object s(vh4 vh4Var, Object obj) throws Throwable {
        Throwable th;
        ci4 ci4Var;
        vh4 vh4Var2;
        ln1 ln1Var = obj instanceof ln1 ? (ln1) obj : null;
        Throwable th2 = ln1Var != null ? ln1Var.a : null;
        synchronized (vh4Var) {
            try {
                vh4Var.e();
                ArrayList<Throwable> arrayListF = vh4Var.f(th2);
                Throwable thU = u(vh4Var, arrayListF);
                if (thU != null) {
                    try {
                        if (arrayListF.size() > 1) {
                            Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(arrayListF.size()));
                            for (Throwable th3 : arrayListF) {
                                if (th3 != thU && th3 != thU && !(th3 instanceof CancellationException) && setNewSetFromMap.add(th3)) {
                                    yc9.a(thU, th3);
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        throw th;
                    }
                }
                if (thU != null && thU != th2) {
                    obj = new ln1(thU, false);
                }
                if (thU != null && (n(thU) || A(thU))) {
                    obj.getClass();
                    ln1.b.compareAndSet((ln1) obj, 0, 1);
                }
                L(obj);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
                Object gb4Var = obj instanceof fb4 ? new gb4((fb4) obj) : obj;
                while (true) {
                    atomicReferenceFieldUpdater.getClass();
                    Unsafe unsafe = oh6.a;
                    long j = d;
                    ci4Var = this;
                    vh4Var2 = vh4Var;
                    if (unsafe.compareAndSwapObject(ci4Var, j, vh4Var2, gb4Var) || unsafe.getObjectVolatile(ci4Var, j) != vh4Var2) {
                        break;
                    }
                    this = ci4Var;
                    vh4Var = vh4Var2;
                }
                ci4Var.q(vh4Var2, obj);
                return obj;
            } catch (Throwable th5) {
                th = th5;
            }
        }
    }

    @Override // defpackage.oh4
    public final boolean start() {
        int iR;
        do {
            iR = R(z());
            if (iR == 0) {
                return false;
            }
        } while (iR != 1);
        return true;
    }

    public final Object t() throws Throwable {
        Object objZ = z();
        if (objZ instanceof fb4) {
            l0.e("This job has not completed yet");
            return null;
        }
        if (objZ instanceof ln1) {
            throw ((ln1) objZ).a;
        }
        return pe4.I(objZ);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(I() + '{' + S(z()) + '}');
        sb.append('@');
        sb.append(od2.l(this));
        return sb.toString();
    }

    public final Throwable u(vh4 vh4Var, ArrayList arrayList) {
        Object next;
        Object obj = null;
        if (arrayList.isEmpty()) {
            if (vh4Var.e()) {
                return new ph4(o(), null, this);
            }
            return null;
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((Throwable) next) instanceof CancellationException);
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) arrayList.get(0);
        if (th2 instanceof g48) {
            for (Object obj2 : arrayList) {
                Throwable th3 = (Throwable) obj2;
                if (th3 != th2 && (th3 instanceof g48)) {
                    obj = obj2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    public boolean v() {
        return true;
    }

    public boolean w() {
        return this instanceof bn1;
    }

    public final wn5 x(fb4 fb4Var) {
        wn5 wn5VarB = fb4Var.b();
        if (wn5VarB != null) {
            return wn5VarB;
        }
        if (fb4Var instanceof iv2) {
            return new wn5();
        }
        if (fb4Var instanceof sh4) {
            O((sh4) fb4Var);
            return null;
        }
        l0.k(fb4Var, "State should have list: ");
        return null;
    }

    public final g61 y() {
        b.getClass();
        return (g61) oh6.a.getObjectVolatile(this, c);
    }

    public final Object z() {
        a.getClass();
        return oh6.a.getObjectVolatile(this, d);
    }

    public void M() {
    }

    @Override // defpackage.oh4
    public final in2 invokeOnCompletion(mt3 mt3Var) {
        return D(true, new ng4(mt3Var));
    }

    public void B(mn1 mn1Var) {
        throw mn1Var;
    }

    public void L(Object obj) {
    }

    public void i(Object obj) {
    }
}
