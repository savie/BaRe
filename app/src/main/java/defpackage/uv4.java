package defpackage;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Deque;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uv4 extends AbstractCollection implements Deque {
    public u66 a;
    public u66 b;

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Deque, java.util.Queue
    public final boolean add(Object obj) {
        return offerLast((u66) obj);
    }

    @Override // java.util.Deque
    public final void addFirst(Object obj) {
        u66 u66Var = (u66) obj;
        if (d(u66Var)) {
            c6.b();
            return;
        }
        u66 u66Var2 = this.a;
        this.a = u66Var;
        if (u66Var2 == null) {
            this.b = u66Var;
        } else {
            u66Var2.b = u66Var;
            u66Var.c = u66Var2;
        }
    }

    @Override // java.util.Deque
    public final void addLast(Object obj) {
        if (offerLast((u66) obj)) {
            return;
        }
        c6.b();
    }

    public final void c() {
        if (isEmpty()) {
            m0.d();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        u66 u66Var = this.a;
        while (u66Var != null) {
            u66 u66Var2 = u66Var.c;
            u66Var.b = null;
            u66Var.c = null;
            u66Var = u66Var2;
        }
        this.b = null;
        this.a = null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Deque
    public final boolean contains(Object obj) {
        return (obj instanceof u66) && d((u66) obj);
    }

    public final boolean d(u66 u66Var) {
        return (u66Var.b == null && u66Var.c == null && u66Var != this.a) ? false : true;
    }

    @Override // java.util.Deque
    public final Iterator descendingIterator() {
        return new sv4(this.b);
    }

    @Override // java.util.Deque
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final boolean offerLast(u66 u66Var) {
        if (d(u66Var)) {
            return false;
        }
        u66 u66Var2 = this.b;
        this.b = u66Var;
        if (u66Var2 == null) {
            this.a = u66Var;
            return true;
        }
        u66Var2.c = u66Var;
        u66Var.b = u66Var2;
        return true;
    }

    @Override // java.util.Deque, java.util.Queue
    public final Object element() {
        c();
        return this.a;
    }

    @Override // java.util.Deque
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final u66 pollFirst() {
        if (isEmpty()) {
            return null;
        }
        u66 u66Var = this.a;
        u66 u66Var2 = u66Var.c;
        u66Var.c = null;
        this.a = u66Var2;
        if (u66Var2 == null) {
            this.b = null;
            return u66Var;
        }
        u66Var2.b = null;
        return u66Var;
    }

    @Override // java.util.Deque
    public final Object getFirst() {
        c();
        return this.a;
    }

    @Override // java.util.Deque
    public final Object getLast() {
        c();
        return this.b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return this.a == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Deque
    public final Iterator iterator() {
        return new rv4(this.a);
    }

    @Override // java.util.Deque, java.util.Queue
    public final boolean offer(Object obj) {
        return offerLast((u66) obj);
    }

    @Override // java.util.Deque
    public final boolean offerFirst(Object obj) {
        u66 u66Var = (u66) obj;
        if (d(u66Var)) {
            return false;
        }
        u66 u66Var2 = this.a;
        this.a = u66Var;
        if (u66Var2 == null) {
            this.b = u66Var;
            return true;
        }
        u66Var2.b = u66Var;
        u66Var.c = u66Var2;
        return true;
    }

    @Override // java.util.Deque, java.util.Queue
    public final Object peek() {
        return this.a;
    }

    @Override // java.util.Deque
    public final Object peekFirst() {
        return this.a;
    }

    @Override // java.util.Deque
    public final Object peekLast() {
        return this.b;
    }

    @Override // java.util.Deque, java.util.Queue
    public final Object poll() {
        return pollFirst();
    }

    @Override // java.util.Deque
    public final Object pollLast() {
        if (isEmpty()) {
            return null;
        }
        u66 u66Var = this.b;
        u66 u66Var2 = u66Var.b;
        u66Var.b = null;
        this.b = u66Var2;
        if (u66Var2 == null) {
            this.a = null;
            return u66Var;
        }
        u66Var2.c = null;
        return u66Var;
    }

    @Override // java.util.Deque
    public final Object pop() {
        c();
        return pollFirst();
    }

    @Override // java.util.Deque
    public final void push(Object obj) {
        u66 u66Var = (u66) obj;
        if (d(u66Var)) {
            c6.b();
            return;
        }
        u66 u66Var2 = this.a;
        this.a = u66Var;
        if (u66Var2 == null) {
            this.b = u66Var;
        } else {
            u66Var2.b = u66Var;
            u66Var.c = u66Var2;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Deque
    public final boolean remove(Object obj) {
        if (!(obj instanceof u66)) {
            return false;
        }
        u66 u66Var = (u66) obj;
        if (!d(u66Var)) {
            return false;
        }
        u66 u66Var2 = u66Var.b;
        u66 u66Var3 = u66Var.c;
        if (u66Var2 == null) {
            this.a = u66Var3;
        } else {
            u66Var2.c = u66Var3;
            u66Var.b = null;
        }
        if (u66Var3 == null) {
            this.b = u66Var2;
            return true;
        }
        u66Var3.b = u66Var2;
        u66Var.c = null;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Deque
    public final Object removeFirst() {
        c();
        return pollFirst();
    }

    @Override // java.util.Deque
    public final boolean removeFirstOccurrence(Object obj) {
        return remove(obj);
    }

    @Override // java.util.Deque
    public final Object removeLast() {
        c();
        if (isEmpty()) {
            return null;
        }
        u66 u66Var = this.b;
        u66 u66Var2 = u66Var.b;
        u66Var.b = null;
        this.b = u66Var2;
        if (u66Var2 == null) {
            this.a = null;
            return u66Var;
        }
        u66Var2.c = null;
        return u66Var;
    }

    @Override // java.util.Deque
    public final boolean removeLastOccurrence(Object obj) {
        return remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Deque
    public final int size() {
        int i = 0;
        for (u66 u66Var = this.a; u66Var != null; u66Var = u66Var.c) {
            i++;
        }
        return i;
    }

    @Override // java.util.Deque, java.util.Queue
    public final Object remove() {
        c();
        return pollFirst();
    }
}
