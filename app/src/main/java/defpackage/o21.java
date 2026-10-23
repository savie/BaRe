package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class o21 extends an2 implements m21, zx1, wn8 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(o21.class, "_decisionAndIndex$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(o21.class, Object.class, "_state$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater n;
    public static final /* synthetic */ long p;
    public static final /* synthetic */ long q;
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;
    public final jv1 d;
    public final ox1 e;

    static {
        Unsafe unsafe = oh6.a;
        q = unsafe.objectFieldOffset(o21.class.getDeclaredField("_state$volatile"));
        n = AtomicReferenceFieldUpdater.newUpdater(o21.class, Object.class, "_parentHandle$volatile");
        p = unsafe.objectFieldOffset(o21.class.getDeclaredField("_parentHandle$volatile"));
    }

    public o21(int i, jv1 jv1Var) {
        super(i);
        this.d = jv1Var;
        this.e = jv1Var.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = t8.a;
    }

    public static Object F(ho5 ho5Var, Object obj, int i, rt3 rt3Var) {
        if (obj instanceof ln1) {
            return obj;
        }
        if (i != 1 && i != 2) {
            return obj;
        }
        if (rt3Var != null || (ho5Var instanceof j21)) {
            return new jn1(obj, ho5Var instanceof j21 ? (j21) ho5Var : null, rt3Var, (Throwable) null, 16);
        }
        return obj;
    }

    public static void z(ho5 ho5Var, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + ho5Var + ", already has " + obj).toString());
    }

    public String A() {
        return "CancellableContinuation";
    }

    public final void B() {
        Throwable thP;
        jv1 jv1Var = this.d;
        ym2 ym2Var = jv1Var instanceof ym2 ? (ym2) jv1Var : null;
        if (ym2Var == null || (thP = ym2Var.p(this)) == null) {
            return;
        }
        o();
        n(thP);
    }

    public final boolean C() {
        k.getClass();
        Unsafe unsafe = oh6.a;
        long j = q;
        Object objectVolatile = unsafe.getObjectVolatile(this, j);
        if ((objectVolatile instanceof jn1) && ((jn1) objectVolatile).d != null) {
            o();
            return false;
        }
        f.set(this, 536870911);
        unsafe.putObjectVolatile(this, j, t8.a);
        return true;
    }

    public final void D(Object obj, int i, rt3 rt3Var) throws xm2 {
        o21 o21Var;
        while (true) {
            k.getClass();
            Unsafe unsafe = oh6.a;
            long j = q;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof ho5)) {
                o21 o21Var2 = this;
                if (objectVolatile instanceof q21) {
                    q21 q21Var = (q21) objectVolatile;
                    if (q21.c.compareAndSet(q21Var, 0, 1)) {
                        if (rt3Var != null) {
                            o21Var2.l(rt3Var, q21Var.a, obj);
                            return;
                        }
                        return;
                    }
                }
                l0.k(obj, "Already resumed, but proposed with update ");
                return;
            }
            Object objF = F((ho5) objectVolatile, obj, i, rt3Var);
            while (true) {
                Unsafe unsafe2 = oh6.a;
                o21Var = this;
                if (unsafe2.compareAndSwapObject(o21Var, q, objectVolatile, objF)) {
                    if (!o21Var.y()) {
                        o21Var.o();
                    }
                    o21Var.p(i);
                    return;
                } else if (unsafe2.getObjectVolatile(o21Var, j) != objectVolatile) {
                    break;
                } else {
                    this = o21Var;
                }
            }
            this = o21Var;
        }
    }

    public final void E(rx1 rx1Var) throws xm2 {
        jv1 jv1Var = this.d;
        ym2 ym2Var = jv1Var instanceof ym2 ? (ym2) jv1Var : null;
        D(be8.a, (ym2Var != null ? ym2Var.d : null) == rx1Var ? 4 : this.c, null);
    }

    public final du9 G(Object obj, rt3 rt3Var) {
        o21 o21Var;
        du9 du9Var = pe4.a;
        while (true) {
            k.getClass();
            Unsafe unsafe = oh6.a;
            long j = q;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof ho5)) {
                return null;
            }
            Object objF = F((ho5) objectVolatile, obj, this.c, rt3Var);
            while (true) {
                Unsafe unsafe2 = oh6.a;
                o21Var = this;
                if (unsafe2.compareAndSwapObject(o21Var, q, objectVolatile, objF)) {
                    if (!o21Var.y()) {
                        o21Var.o();
                    }
                    return du9Var;
                }
                if (unsafe2.getObjectVolatile(o21Var, j) != objectVolatile) {
                    break;
                }
                this = o21Var;
            }
            this = o21Var;
        }
    }

    @Override // defpackage.wn8
    public final void a(n67 n67Var, int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = f;
            i2 = atomicIntegerFieldUpdater.get(this);
            if ((i2 & 536870911) != 536870911) {
                l0.e("invokeOnCancellation should be called at most once");
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, ((i2 >> 29) << 29) + i));
        x(n67Var);
    }

    @Override // defpackage.m21
    public final du9 b(Object obj, rt3 rt3Var) {
        return G(obj, rt3Var);
    }

    @Override // defpackage.an2
    public final void c(CancellationException cancellationException) {
        CancellationException cancellationException2;
        o21 o21Var;
        while (true) {
            k.getClass();
            Unsafe unsafe = oh6.a;
            long j = q;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile instanceof ho5) {
                l0.e("Not completed");
                return;
            }
            if (objectVolatile instanceof ln1) {
                return;
            }
            if (objectVolatile instanceof jn1) {
                jn1 jn1Var = (jn1) objectVolatile;
                if (jn1Var.e != null) {
                    l0.e("Must be called at most once");
                    return;
                }
                jn1 jn1VarA = jn1.a(jn1Var, null, cancellationException, 15);
                while (true) {
                    Unsafe unsafe2 = oh6.a;
                    o21 o21Var2 = this;
                    if (unsafe2.compareAndSwapObject(o21Var2, q, objectVolatile, jn1VarA)) {
                        j21 j21Var = jn1Var.b;
                        if (j21Var != null) {
                            o21Var2.k(j21Var, cancellationException);
                        }
                        rt3 rt3Var = jn1Var.c;
                        if (rt3Var != null) {
                            o21Var2.l(rt3Var, cancellationException, jn1Var.a);
                            return;
                        }
                        return;
                    }
                    if (unsafe2.getObjectVolatile(o21Var2, j) != objectVolatile) {
                        cancellationException2 = cancellationException;
                        o21Var = o21Var2;
                        break;
                    }
                    this = o21Var2;
                }
            } else {
                o21 o21Var3 = this;
                CancellationException cancellationException3 = cancellationException;
                jn1 jn1Var2 = new jn1(objectVolatile, (j21) null, (rt3) null, cancellationException3, 14);
                cancellationException2 = cancellationException3;
                while (true) {
                    jn1 jn1Var3 = jn1Var2;
                    Unsafe unsafe3 = oh6.a;
                    o21Var = o21Var3;
                    boolean zCompareAndSwapObject = unsafe3.compareAndSwapObject(o21Var, q, objectVolatile, jn1Var3);
                    jn1Var2 = jn1Var3;
                    if (zCompareAndSwapObject) {
                        return;
                    }
                    if (unsafe3.getObjectVolatile(o21Var, j) != objectVolatile) {
                        break;
                    } else {
                        o21Var3 = o21Var;
                    }
                }
            }
            cancellationException = cancellationException2;
            this = o21Var;
        }
    }

    @Override // defpackage.an2
    public final jv1 d() {
        return this.d;
    }

    @Override // defpackage.m21
    public final void e(Object obj, rt3 rt3Var) throws xm2 {
        D(obj, this.c, rt3Var);
    }

    @Override // defpackage.an2
    public final Throwable f(Object obj) {
        Throwable thF = super.f(obj);
        if (thF != null) {
            return thF;
        }
        return null;
    }

    @Override // defpackage.m21
    public final void g(Object obj) throws xm2 {
        p(this.c);
    }

    @Override // defpackage.zx1
    public final zx1 getCallerFrame() {
        jv1 jv1Var = this.d;
        if (jv1Var instanceof zx1) {
            return (zx1) jv1Var;
        }
        return null;
    }

    @Override // defpackage.jv1
    public final ox1 getContext() {
        return this.e;
    }

    @Override // defpackage.an2
    public final Object h(Object obj) {
        return obj instanceof jn1 ? ((jn1) obj).a : obj;
    }

    @Override // defpackage.an2
    public final Object j() {
        return t();
    }

    public final void k(j21 j21Var, Throwable th) {
        try {
            j21Var.a(th);
        } catch (Throwable th2) {
            y13.m(this.e, new mn1("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void l(rt3 rt3Var, Throwable th, Object obj) {
        ox1 ox1Var = this.e;
        try {
            rt3Var.a(th, obj, ox1Var);
        } catch (Throwable th2) {
            y13.m(ox1Var, new mn1("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    public final void m(n67 n67Var, Throwable th) {
        ox1 ox1Var = this.e;
        int i = f.get(this) & 536870911;
        if (i == 536870911) {
            l0.e("The index for Segment.onCancellation(..) is broken");
            return;
        }
        try {
            n67Var.m(i, ox1Var);
        } catch (Throwable th2) {
            y13.m(ox1Var, new mn1("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final boolean n(Throwable th) {
        Throwable cancellationException;
        o21 o21Var;
        while (true) {
            k.getClass();
            Unsafe unsafe = oh6.a;
            long j = q;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof ho5)) {
                return false;
            }
            boolean z = (objectVolatile instanceof j21) || (objectVolatile instanceof n67);
            if (th == null) {
                cancellationException = new CancellationException("Continuation " + this + " was cancelled normally");
            } else {
                cancellationException = th;
            }
            q21 q21Var = new q21(cancellationException, z);
            while (true) {
                Unsafe unsafe2 = oh6.a;
                o21Var = this;
                if (unsafe2.compareAndSwapObject(o21Var, q, objectVolatile, q21Var)) {
                    ho5 ho5Var = (ho5) objectVolatile;
                    if (ho5Var instanceof j21) {
                        o21Var.k((j21) objectVolatile, th);
                    } else if (ho5Var instanceof n67) {
                        o21Var.m((n67) objectVolatile, th);
                    }
                    if (!o21Var.y()) {
                        o21Var.o();
                    }
                    o21Var.p(o21Var.c);
                    return true;
                }
                if (unsafe2.getObjectVolatile(o21Var, j) != objectVolatile) {
                    break;
                }
                this = o21Var;
            }
            this = o21Var;
        }
    }

    public final void o() {
        in2 in2VarR = r();
        if (in2VarR == null) {
            return;
        }
        in2VarR.dispose();
        n.getClass();
        oh6.a.putObjectVolatile(this, p, ao5.a);
    }

    public final void p(int i) throws xm2 {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = f;
            i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = i2 >> 29;
            if (i3 != 0) {
                if (i3 != 1) {
                    l0.e("Already resumed");
                    return;
                }
                boolean z = i == 4;
                jv1 jv1Var = this.d;
                if (!z && (jv1Var instanceof ym2)) {
                    boolean z2 = i == 1 || i == 2;
                    int i4 = this.c;
                    if (z2 == (i4 == 1 || i4 == 2)) {
                        ym2 ym2Var = (ym2) jv1Var;
                        rx1 rx1Var = ym2Var.d;
                        ox1 context = ym2Var.e.getContext();
                        if (ly8.N(rx1Var, context)) {
                            ly8.M(rx1Var, context, this);
                            return;
                        }
                        uy2 uy2VarA = r28.a();
                        if (uy2VarA.c >= 4294967296L) {
                            w40 w40Var = uy2VarA.e;
                            if (w40Var == null) {
                                w40Var = new w40();
                                uy2VarA.e = w40Var;
                            }
                            w40Var.addLast(this);
                            return;
                        }
                        uy2VarA.r(true);
                        try {
                            zv1.q(this, jv1Var, true);
                            do {
                            } while (uy2VarA.v());
                        } catch (Throwable th) {
                            try {
                                i(th);
                            } finally {
                                uy2VarA.q(true);
                            }
                        }
                        return;
                    }
                }
                zv1.q(this, jv1Var, z);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, 1073741824 + (536870911 & i2)));
    }

    public Throwable q(ci4 ci4Var) {
        return ci4Var.getCancellationException();
    }

    public final in2 r() {
        n.getClass();
        return (in2) oh6.a.getObjectVolatile(this, p);
    }

    @Override // defpackage.jv1
    public final void resumeWith(Object obj) {
        Throwable thA = en6.a(obj);
        if (thA != null) {
            obj = new ln1(thA, false);
        }
        D(obj, this.c, null);
    }

    public final Object s() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        oh4 oh4Var;
        boolean zY = y();
        do {
            atomicIntegerFieldUpdater = f;
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 != 2) {
                    l0.e("Already suspended");
                    return null;
                }
                if (zY) {
                    B();
                }
                Object objT = t();
                if (objT instanceof ln1) {
                    throw ((ln1) objT).a;
                }
                int i3 = this.c;
                if ((i3 != 1 && i3 != 2) || (oh4Var = (oh4) this.e.get(nh4.b)) == null || oh4Var.isActive()) {
                    return h(objT);
                }
                CancellationException cancellationException = oh4Var.getCancellationException();
                c(cancellationException);
                throw cancellationException;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 536870912 + (536870911 & i)));
        if (r() == null) {
            v();
        }
        if (zY) {
            B();
        }
        return yx1.a;
    }

    public final Object t() {
        k.getClass();
        return oh6.a.getObjectVolatile(this, q);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(A());
        sb.append('(');
        sb.append(od2.z(this.d));
        sb.append("){");
        Object objT = t();
        if (objT instanceof ho5) {
            str = "Active";
        } else {
            str = objT instanceof q21 ? "Cancelled" : "Completed";
        }
        sb.append(str);
        sb.append("}@");
        sb.append(od2.l(this));
        return sb.toString();
    }

    public final void u() {
        in2 in2VarV = v();
        if (in2VarV == null || (t() instanceof ho5)) {
            return;
        }
        in2VarV.dispose();
        n.getClass();
        oh6.a.putObjectVolatile(this, p, ao5.a);
    }

    public final in2 v() {
        oh4 oh4Var = (oh4) this.e.get(nh4.b);
        if (oh4Var == null) {
            return null;
        }
        in2 in2VarG = sz8.G(oh4Var, true, new d61(this));
        while (true) {
            n.getClass();
            Unsafe unsafe = oh6.a;
            long j = p;
            o21 o21Var = this;
            if (unsafe.compareAndSwapObject(o21Var, j, (Object) null, in2VarG) || unsafe.getObjectVolatile(o21Var, j) != null) {
                break;
            }
            this = o21Var;
        }
        return in2VarG;
    }

    public final void w(mt3 mt3Var) {
        x(new i21(mt3Var));
    }

    public final void x(ho5 ho5Var) {
        o21 o21Var;
        Unsafe unsafe;
        o21 o21Var2;
        while (true) {
            k.getClass();
            Unsafe unsafe2 = oh6.a;
            long j = q;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            if (objectVolatile instanceof t8) {
                while (true) {
                    Unsafe unsafe3 = oh6.a;
                    o21Var = this;
                    if (unsafe3.compareAndSwapObject(o21Var, q, objectVolatile, ho5Var)) {
                        return;
                    }
                    if (unsafe3.getObjectVolatile(o21Var, j) != objectVolatile) {
                        break;
                    } else {
                        this = o21Var;
                    }
                }
            } else {
                o21Var = this;
                if ((objectVolatile instanceof j21) || (objectVolatile instanceof n67)) {
                    z(ho5Var, objectVolatile);
                    throw null;
                }
                if (objectVolatile instanceof ln1) {
                    ln1 ln1Var = (ln1) objectVolatile;
                    if (!ln1.b.compareAndSet(ln1Var, 0, 1)) {
                        z(ho5Var, objectVolatile);
                        throw null;
                    }
                    if (objectVolatile instanceof q21) {
                        Throwable th = ln1Var.a;
                        if (ho5Var instanceof j21) {
                            o21Var.k((j21) ho5Var, th);
                            return;
                        } else {
                            o21Var.m((n67) ho5Var, th);
                            return;
                        }
                    }
                    return;
                }
                if (objectVolatile instanceof jn1) {
                    jn1 jn1Var = (jn1) objectVolatile;
                    if (jn1Var.b != null) {
                        z(ho5Var, objectVolatile);
                        throw null;
                    }
                    if (ho5Var instanceof n67) {
                        return;
                    }
                    j21 j21Var = (j21) ho5Var;
                    Throwable th2 = jn1Var.e;
                    if (th2 != null) {
                        o21Var.k(j21Var, th2);
                        return;
                    }
                    jn1 jn1VarA = jn1.a(jn1Var, j21Var, null, 29);
                    do {
                        unsafe = oh6.a;
                        o21Var2 = o21Var;
                        if (unsafe.compareAndSwapObject(o21Var, q, objectVolatile, jn1VarA)) {
                            return;
                        } else {
                            o21Var = o21Var2;
                        }
                    } while (unsafe.getObjectVolatile(o21Var2, j) == objectVolatile);
                } else {
                    o21 o21Var3 = o21Var;
                    if (ho5Var instanceof n67) {
                        return;
                    }
                    jn1 jn1Var2 = new jn1(objectVolatile, (j21) ho5Var, (rt3) null, (Throwable) null, 28);
                    while (true) {
                        jn1 jn1Var3 = jn1Var2;
                        Unsafe unsafe4 = oh6.a;
                        o21Var = o21Var3;
                        boolean zCompareAndSwapObject = unsafe4.compareAndSwapObject(o21Var, q, objectVolatile, jn1Var3);
                        jn1Var2 = jn1Var3;
                        if (zCompareAndSwapObject) {
                            return;
                        }
                        if (unsafe4.getObjectVolatile(o21Var, j) != objectVolatile) {
                            break;
                        } else {
                            o21Var3 = o21Var;
                        }
                    }
                }
            }
            this = o21Var;
        }
    }

    public final boolean y() {
        return this.c == 2 && ((ym2) this.d).n();
    }
}
