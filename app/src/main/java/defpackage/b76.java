package defpackage;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b76 extends AbstractMap implements ConcurrentMap, Serializable {
    public static final int G;
    public static final int H;
    public final ConcurrentHashMap a;
    public final long[] b;
    public final uv4 c;
    public final AtomicLong d;
    public final AtomicLong e;
    public final ReentrantLock f;
    public final ConcurrentLinkedQueue k;
    public final AtomicLongArray n;
    public final AtomicLongArray p;
    public final AtomicReferenceArray q;
    public final AtomicReference r;
    public transient t66 t;
    public transient y66 x;
    public transient r66 y;

    static {
        int iMin = Math.min(4, 1 << (32 - Integer.numberOfLeadingZeros(Runtime.getRuntime().availableProcessors() - 1)));
        G = iMin;
        H = iMin - 1;
    }

    public b76(m66 m66Var) {
        int i = m66Var.a;
        this.e = new AtomicLong(Math.min(m66Var.c, 9223372034707292160L));
        this.a = new ConcurrentHashMap(m66Var.b, 0.75f, i);
        this.f = new ReentrantLock();
        this.d = new AtomicLong();
        this.c = new uv4();
        this.k = new ConcurrentLinkedQueue();
        this.r = new AtomicReference(q66.a);
        int i2 = G;
        this.b = new long[i2];
        this.n = new AtomicLongArray(i2);
        this.p = new AtomicLongArray(i2);
        this.q = new AtomicReferenceArray(i2 * 16);
    }

    public final void a(u66 u66Var) {
        int id = ((int) Thread.currentThread().getId()) & H;
        AtomicLongArray atomicLongArray = this.n;
        long j = atomicLongArray.get(id);
        atomicLongArray.lazySet(id, 1 + j);
        this.q.lazySet((id * 16) + ((int) (15 & j)), u66Var);
        if (((q66) this.r.get()).a(j - this.p.get(id) < 4)) {
            h();
        }
    }

    public final void b(Runnable runnable) {
        this.k.add(runnable);
        this.r.lazySet(q66.b);
        h();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        AtomicReferenceArray atomicReferenceArray = this.q;
        ReentrantLock reentrantLock = this.f;
        reentrantLock.lock();
        while (true) {
            try {
                u66 u66VarF = this.c.pollFirst();
                if (u66VarF == null) {
                    break;
                }
                this.a.remove(u66VarF.a, u66VarF);
                f(u66VarF);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        for (int i = 0; i < atomicReferenceArray.length(); i++) {
            atomicReferenceArray.lazySet(i, null);
        }
        while (true) {
            Runnable runnable = (Runnable) this.k.poll();
            if (runnable == null) {
                reentrantLock.unlock();
                return;
            }
            runnable.run();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return this.a.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        obj.getClass();
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            if (((u66) it.next()).a().equals(obj)) {
                return true;
            }
        }
        return false;
    }

    public final void d() {
        int i;
        Runnable runnable;
        int id = (int) Thread.currentThread().getId();
        int i2 = G + id;
        while (true) {
            i = 0;
            if (id >= i2) {
                break;
            }
            int i3 = H & id;
            long j = this.n.get(i3);
            while (i < 8) {
                long[] jArr = this.b;
                int i4 = (i3 * 16) + ((int) (jArr[i3] & 15));
                AtomicReferenceArray atomicReferenceArray = this.q;
                u66 u66Var = (u66) atomicReferenceArray.get(i4);
                if (u66Var == null) {
                    break;
                }
                atomicReferenceArray.lazySet(i4, null);
                uv4 uv4Var = this.c;
                if (uv4Var.d(u66Var) && u66Var != uv4Var.b) {
                    u66 u66Var2 = u66Var.b;
                    u66 u66Var3 = u66Var.c;
                    if (u66Var2 == null) {
                        uv4Var.a = u66Var3;
                    } else {
                        u66Var2.c = u66Var3;
                        u66Var.b = null;
                    }
                    if (u66Var3 == null) {
                        uv4Var.b = u66Var2;
                    } else {
                        u66Var3.b = u66Var2;
                        u66Var.c = null;
                    }
                    u66 u66Var4 = uv4Var.b;
                    uv4Var.b = u66Var;
                    if (u66Var4 == null) {
                        uv4Var.a = u66Var;
                    } else {
                        u66Var4.c = u66Var;
                        u66Var.b = u66Var4;
                    }
                }
                jArr[i3] = jArr[i3] + 1;
                i++;
            }
            this.p.lazySet(i3, j);
            id++;
        }
        while (i < 16 && (runnable = (Runnable) this.k.poll()) != null) {
            runnable.run();
            i++;
        }
    }

    public final void e() {
        u66 u66VarF;
        while (this.d.get() > this.e.get() && (u66VarF = this.c.pollFirst()) != null) {
            this.a.remove(u66VarF.a, u66VarF);
            f(u66VarF);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        r66 r66Var = this.y;
        if (r66Var != null) {
            return r66Var;
        }
        r66 r66Var2 = new r66(this);
        this.y = r66Var2;
        return r66Var2;
    }

    public final void f(u66 u66Var) {
        z66 z66Var;
        do {
            z66Var = (z66) u66Var.get();
        } while (!u66Var.compareAndSet(z66Var, new z66(z66Var.b, 0)));
        AtomicLong atomicLong = this.d;
        atomicLong.lazySet(atomicLong.get() - ((long) Math.abs(z66Var.a)));
    }

    public final Object g(Object obj, Object obj2, boolean z) {
        obj.getClass();
        obj2.getClass();
        int i = 1;
        z66 z66Var = new z66(obj2, 1);
        u66 u66Var = new u66(obj, z66Var);
        while (true) {
            u66 u66Var2 = (u66) this.a.putIfAbsent(u66Var.a, u66Var);
            if (u66Var2 == null) {
                b(new ue2(i, this, u66Var));
                return null;
            }
            if (z) {
                a(u66Var2);
                return u66Var2.a();
            }
            while (true) {
                z66 z66Var2 = (z66) u66Var2.get();
                if (!z66Var2.a()) {
                    break;
                }
                if (u66Var2.compareAndSet(z66Var2, z66Var)) {
                    int i2 = 1 - z66Var2.a;
                    if (i2 == 0) {
                        a(u66Var2);
                    } else {
                        b(new w66(this, u66Var2, i2));
                    }
                    return z66Var2.b;
                }
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        u66 u66Var = (u66) this.a.get(obj);
        if (u66Var == null) {
            return null;
        }
        a(u66Var);
        return u66Var.a();
    }

    public final void h() {
        n66 n66Var = q66.a;
        p66 p66Var = q66.c;
        AtomicReference atomicReference = this.r;
        ReentrantLock reentrantLock = this.f;
        if (reentrantLock.tryLock()) {
            try {
                atomicReference.lazySet(p66Var);
                d();
                while (!atomicReference.compareAndSet(p66Var, n66Var) && atomicReference.get() == p66Var) {
                }
            } finally {
                while (!atomicReference.compareAndSet(p66Var, n66Var) && atomicReference.get() == p66Var) {
                }
                reentrantLock.unlock();
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        t66 t66Var = this.t;
        if (t66Var != null) {
            return t66Var;
        }
        t66 t66Var2 = new t66(this);
        this.t = t66Var2;
        return t66Var2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        return g(obj, obj2, false);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object putIfAbsent(Object obj, Object obj2) {
        return g(obj, obj2, true);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean remove(Object obj, Object obj2) {
        ConcurrentHashMap concurrentHashMap = this.a;
        u66 u66Var = (u66) concurrentHashMap.get(obj);
        int i = 0;
        if (u66Var != null && obj2 != null) {
            z66 z66Var = (z66) u66Var.get();
            do {
                Object obj3 = z66Var.b;
                if (obj2 != obj3 && !obj3.equals(obj2)) {
                    return false;
                }
                if (z66Var.a() ? u66Var.compareAndSet(z66Var, new z66(z66Var.b, -z66Var.a)) : false) {
                    if (!concurrentHashMap.remove(obj, u66Var)) {
                        break;
                    }
                    b(new v66(this, u66Var, i));
                    return true;
                }
                z66Var = (z66) u66Var.get();
            } while (z66Var.a());
        }
        return false;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        z66 z66Var;
        obj.getClass();
        obj2.getClass();
        obj3.getClass();
        z66 z66Var2 = new z66(obj3, 1);
        u66 u66Var = (u66) this.a.get(obj);
        if (u66Var != null) {
            do {
                z66Var = (z66) u66Var.get();
                if (z66Var.a()) {
                    Object obj4 = z66Var.b;
                    if (obj2 != obj4 && !obj4.equals(obj2)) {
                        return false;
                    }
                }
            } while (!u66Var.compareAndSet(z66Var, z66Var2));
            int i = 1 - z66Var.a;
            if (i == 0) {
                a(u66Var);
                return true;
            }
            b(new w66(this, u66Var, i));
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.a.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        y66 y66Var = this.x;
        if (y66Var != null) {
            return y66Var;
        }
        y66 y66Var2 = new y66(this);
        this.x = y66Var2;
        return y66Var2;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object replace(Object obj, Object obj2) {
        z66 z66Var;
        obj.getClass();
        obj2.getClass();
        z66 z66Var2 = new z66(obj2, 1);
        u66 u66Var = (u66) this.a.get(obj);
        if (u66Var == null) {
            return null;
        }
        do {
            z66Var = (z66) u66Var.get();
            if (!z66Var.a()) {
                return null;
            }
        } while (!u66Var.compareAndSet(z66Var, z66Var2));
        int i = 1 - z66Var.a;
        if (i == 0) {
            a(u66Var);
        } else {
            b(new w66(this, u66Var, i));
        }
        return z66Var.b;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        z66 z66Var;
        u66 u66Var = (u66) this.a.remove(obj);
        if (u66Var == null) {
            return null;
        }
        do {
            z66Var = (z66) u66Var.get();
            if (!z66Var.a()) {
                break;
            }
        } while (!u66Var.compareAndSet(z66Var, new z66(z66Var.b, -z66Var.a)));
        b(new v66(this, u66Var, 0));
        return u66Var.a();
    }
}
