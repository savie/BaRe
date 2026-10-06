package defpackage;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m4 extends AbstractCollection {
    public final Object a;
    public Collection b;
    public final m4 c;
    public final Collection d;
    public final /* synthetic */ q4 e;

    public m4(q4 q4Var, Object obj, Collection collection, m4 m4Var) {
        this.e = q4Var;
        this.a = obj;
        this.b = collection;
        this.c = m4Var;
        this.d = m4Var == null ? null : m4Var.b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        d();
        boolean zIsEmpty = this.b.isEmpty();
        boolean zAdd = this.b.add(obj);
        if (zAdd) {
            this.e.e++;
            if (zIsEmpty) {
                c();
            }
        }
        return zAdd;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = this.b.addAll(collection);
        if (zAddAll) {
            this.e.e += this.b.size() - size;
            if (size == 0) {
                c();
            }
        }
        return zAddAll;
    }

    public final void c() {
        m4 m4Var = this.c;
        if (m4Var != null) {
            m4Var.c();
        } else {
            this.e.d.put(this.a, this.b);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.b.clear();
        this.e.e -= size;
        e();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        d();
        return this.b.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        d();
        return this.b.containsAll(collection);
    }

    public final void d() {
        Collection collection;
        m4 m4Var = this.c;
        if (m4Var != null) {
            m4Var.d();
            if (m4Var.b == this.d) {
                return;
            }
            q.a();
            return;
        }
        if (!this.b.isEmpty() || (collection = (Collection) this.e.d.get(this.a)) == null) {
            return;
        }
        this.b = collection;
    }

    public final void e() {
        m4 m4Var = this.c;
        if (m4Var != null) {
            m4Var.e();
        } else if (this.b.isEmpty()) {
            this.e.d.remove(this.a);
        }
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        d();
        return this.b.equals(obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        d();
        return this.b.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        d();
        return new l4(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        d();
        boolean zRemove = this.b.remove(obj);
        if (zRemove) {
            this.e.e--;
            e();
        }
        return zRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zRemoveAll = this.b.removeAll(collection);
        if (zRemoveAll) {
            this.e.e += this.b.size() - size;
            e();
        }
        return zRemoveAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        int size = size();
        boolean zRetainAll = this.b.retainAll(collection);
        if (zRetainAll) {
            this.e.e += this.b.size() - size;
            e();
        }
        return zRetainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        d();
        return this.b.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        d();
        return this.b.toString();
    }
}
