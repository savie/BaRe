package defpackage;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class n3 implements Set {
    public static final AtomicLong e = new AtomicLong();
    public final long a = e.getAndIncrement();
    public final ReentrantReadWriteLock b = new ReentrantReadWriteLock();
    public final AbstractMap c;
    public m3 d;

    public n3(AbstractMap abstractMap) {
        this.c = abstractMap;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        ReentrantReadWriteLock.WriteLock writeLock = this.b.writeLock();
        try {
            writeLock.lock();
            AbstractMap abstractMap = this.c;
            if (!abstractMap.containsKey(obj)) {
                m3 m3VarC = c(obj, this.d);
                this.d = m3VarC;
                abstractMap.put(obj, m3VarC);
                z = true;
            }
            return z;
        } finally {
            writeLock.unlock();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        boolean z;
        ReentrantReadWriteLock.WriteLock writeLock = this.b.writeLock();
        try {
            writeLock.lock();
            boolean z2 = false;
            for (Object obj : collection) {
                if (obj != null) {
                    AbstractMap abstractMap = this.c;
                    if (abstractMap.containsKey(obj)) {
                        z = false;
                    } else {
                        m3 m3VarC = c(obj, this.d);
                        this.d = m3VarC;
                        abstractMap.put(obj, m3VarC);
                        z = true;
                    }
                    z2 |= z;
                }
            }
            writeLock.unlock();
            return z2;
        } catch (Throwable th) {
            writeLock.unlock();
            throw th;
        }
    }

    public abstract m3 c(Object obj, m3 m3Var);

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        ReentrantReadWriteLock.WriteLock writeLock = this.b.writeLock();
        try {
            writeLock.lock();
            this.d = null;
            this.c.clear();
        } finally {
            writeLock.unlock();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        ReentrantReadWriteLock.ReadLock lock = this.b.readLock();
        try {
            lock.lock();
            m3 m3Var = (m3) this.c.get(obj);
            lock.unlock();
            return (m3Var == null || m3Var.a() == null) ? false : true;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.a == ((n3) obj).a;
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        long j = this.a;
        return 31 + ((int) (j ^ (j >>> 32)));
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return this.d == null;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        AbstractMap abstractMap = this.c;
        if (!contains(obj)) {
            return false;
        }
        ReentrantReadWriteLock.WriteLock writeLock = this.b.writeLock();
        try {
            writeLock.lock();
            m3 m3Var = (m3) abstractMap.get(obj);
            if (m3Var == null) {
                return false;
            }
            m3 m3Var2 = this.d;
            if (m3Var != m3Var2) {
                m3 m3Var3 = m3Var.b;
                m3 m3Var4 = m3Var.a;
                if (m3Var3 != null) {
                    m3Var3.a = m3Var4;
                    m3 m3Var5 = m3Var.a;
                    if (m3Var5 != null) {
                        m3Var5.b = m3Var3;
                    }
                } else if (m3Var4 != null) {
                    m3Var4.b = null;
                }
            } else {
                this.d = m3Var2.a;
            }
            abstractMap.remove(obj);
            return true;
        } finally {
            writeLock.unlock();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return this.c.size();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        return this.c.entrySet().toArray();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.c.entrySet().toArray(objArr);
    }
}
