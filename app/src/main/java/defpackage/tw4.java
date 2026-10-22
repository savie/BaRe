package defpackage;

import java.util.AbstractList;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tw4 implements ListIterator, bo4 {
    public final uw4 a;
    public int b;
    public int c = -1;
    public int d;

    public tw4(uw4 uw4Var, int i) {
        this.a = uw4Var;
        this.b = i;
        this.d = ((AbstractList) uw4Var).modCount;
    }

    public final void a() {
        if (((AbstractList) this.a.e).modCount == this.d) {
            return;
        }
        q.a();
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        a();
        int i = this.b;
        this.b = i + 1;
        uw4 uw4Var = this.a;
        uw4Var.add(i, obj);
        this.c = -1;
        this.d = ((AbstractList) uw4Var).modCount;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.a.c;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.b > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        a();
        int i = this.b;
        uw4 uw4Var = this.a;
        if (i >= uw4Var.c) {
            m0.d();
            return null;
        }
        this.b = i + 1;
        this.c = i;
        return uw4Var.a[uw4Var.b + i];
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        int i = this.b;
        if (i <= 0) {
            m0.d();
            return null;
        }
        int i2 = i - 1;
        this.b = i2;
        this.c = i2;
        uw4 uw4Var = this.a;
        return uw4Var.a[uw4Var.b + i2];
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.b - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        a();
        int i = this.c;
        if (i == -1) {
            l0.e("Call next() or previous() before removing element from the iterator.");
            return;
        }
        uw4 uw4Var = this.a;
        uw4Var.e(i);
        this.b = this.c;
        this.c = -1;
        this.d = ((AbstractList) uw4Var).modCount;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        a();
        int i = this.c;
        if (i != -1) {
            this.a.set(i, obj);
        } else {
            l0.e("Call next() or previous() before replacing element from the iterator.");
        }
    }
}
