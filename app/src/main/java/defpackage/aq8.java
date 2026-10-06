package defpackage;

import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class aq8 implements Iterator {
    public m3 a;
    public final /* synthetic */ cq8 b;

    public aq8(cq8 cq8Var) {
        this.b = cq8Var;
        this.a = cq8Var.d;
    }

    public final void a() {
        m3 m3Var;
        cq8 cq8Var = this.b;
        ReentrantReadWriteLock.WriteLock writeLock = cq8Var.b.writeLock();
        try {
            writeLock.lock();
            do {
                m3 m3Var2 = this.a;
                m3Var = m3Var2.a;
                this.a = m3Var;
                m3 m3Var3 = cq8Var.d;
                if (m3Var2 == m3Var3) {
                    cq8Var.d = m3Var3.a;
                }
                m3 m3Var4 = m3Var2.b;
                if (m3Var4 != null) {
                    m3Var4.a = m3Var;
                    m3 m3Var5 = m3Var2.a;
                    if (m3Var5 != null) {
                        m3Var5.b = m3Var4;
                    }
                } else if (m3Var != null) {
                    m3Var.b = null;
                }
                if (m3Var != null) {
                }
            } while (m3Var.a() == null);
        } finally {
            writeLock.unlock();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        m3 m3Var = this.a;
        if (m3Var == null) {
            return false;
        }
        if (m3Var.a() != null) {
            return true;
        }
        a();
        return this.a != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        m3 m3Var = this.a;
        if (m3Var == null) {
            return null;
        }
        Object objA = m3Var.a();
        if (objA == null) {
            a();
            return next();
        }
        this.a = this.a.a;
        return objA;
    }

    @Override // java.util.Iterator
    public final void remove() {
        m3 m3Var = this.a;
        if (m3Var == null) {
            return;
        }
        m3 m3Var2 = m3Var.a;
        this.b.remove(m3Var.a());
        this.a = m3Var2;
    }
}
