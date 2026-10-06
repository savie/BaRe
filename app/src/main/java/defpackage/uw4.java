package defpackage;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uw4 extends w4 implements RandomAccess, Serializable {
    public Object[] a;
    public final int b;
    public int c;
    public final uw4 d;
    public final ww4 e;

    public uw4(Object[] objArr, int i, int i2, uw4 uw4Var, ww4 ww4Var) {
        objArr.getClass();
        ww4Var.getClass();
        this.a = objArr;
        this.b = i;
        this.c = i2;
        this.d = uw4Var;
        this.e = ww4Var;
        ((AbstractList) this).modCount = ((AbstractList) ww4Var).modCount;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        l();
        k();
        int i2 = this.c;
        if (i < 0 || i > i2) {
            a6.d(dj7.i("index: ", i, i2, ", size: "));
        } else {
            i(this.b + i, obj);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        collection.getClass();
        l();
        k();
        int i2 = this.c;
        if (i < 0 || i > i2) {
            a6.d(dj7.i("index: ", i, i2, ", size: "));
            return false;
        }
        int size = collection.size();
        g(this.b + i, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        l();
        k();
        p(this.b, this.c);
    }

    @Override // defpackage.w4
    public final int d() {
        k();
        return this.c;
    }

    @Override // defpackage.w4
    public final Object e(int i) {
        l();
        k();
        int i2 = this.c;
        if (i >= 0 && i < i2) {
            return o(this.b + i);
        }
        a6.d(dj7.i("index: ", i, i2, ", size: "));
        return null;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        k();
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            Object[] objArr = this.a;
            int i = this.c;
            if (i == list.size()) {
                for (int i2 = 0; i2 < i; i2++) {
                    if (pe4.d(objArr[this.b + i2], list.get(i2))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void g(int i, Collection collection, int i2) {
        ((AbstractList) this).modCount++;
        ww4 ww4Var = this.e;
        uw4 uw4Var = this.d;
        if (uw4Var != null) {
            uw4Var.g(i, collection, i2);
        } else {
            ww4 ww4Var2 = ww4.d;
            ww4Var.g(i, collection, i2);
        }
        this.a = ww4Var.a;
        this.c += i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        k();
        int i2 = this.c;
        if (i >= 0 && i < i2) {
            return this.a[this.b + i];
        }
        a6.d(dj7.i("index: ", i, i2, ", size: "));
        return null;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        k();
        Object[] objArr = this.a;
        int i = this.c;
        int iHashCode = 1;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = objArr[this.b + i2];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public final void i(int i, Object obj) {
        ((AbstractList) this).modCount++;
        ww4 ww4Var = this.e;
        uw4 uw4Var = this.d;
        if (uw4Var != null) {
            uw4Var.i(i, obj);
        } else {
            ww4 ww4Var2 = ww4.d;
            ww4Var.i(i, obj);
        }
        this.a = ww4Var.a;
        this.c++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        k();
        for (int i = 0; i < this.c; i++) {
            if (pe4.d(this.a[this.b + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        k();
        return this.c == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final void k() {
        if (((AbstractList) this.e).modCount == ((AbstractList) this).modCount) {
            return;
        }
        q.a();
    }

    public final void l() {
        if (this.e.c) {
            x5.e();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        k();
        for (int i = this.c - 1; i >= 0; i--) {
            if (pe4.d(this.a[this.b + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        k();
        int i2 = this.c;
        if (i >= 0 && i <= i2) {
            return new tw4(this, i);
        }
        a6.d(dj7.i("index: ", i, i2, ", size: "));
        return null;
    }

    public final Object o(int i) {
        Object objO;
        ((AbstractList) this).modCount++;
        uw4 uw4Var = this.d;
        if (uw4Var != null) {
            objO = uw4Var.o(i);
        } else {
            ww4 ww4Var = ww4.d;
            objO = this.e.o(i);
        }
        this.c--;
        return objO;
    }

    public final void p(int i, int i2) {
        if (i2 > 0) {
            ((AbstractList) this).modCount++;
        }
        uw4 uw4Var = this.d;
        if (uw4Var != null) {
            uw4Var.p(i, i2);
        } else {
            ww4 ww4Var = ww4.d;
            this.e.p(i, i2);
        }
        this.c -= i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        l();
        k();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            e(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        l();
        k();
        return s(this.b, this.c, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        l();
        k();
        return s(this.b, this.c, collection, true) > 0;
    }

    public final int s(int i, int i2, Collection collection, boolean z) {
        int iS;
        uw4 uw4Var = this.d;
        if (uw4Var != null) {
            iS = uw4Var.s(i, i2, collection, z);
        } else {
            ww4 ww4Var = ww4.d;
            iS = this.e.s(i, i2, collection, z);
        }
        if (iS > 0) {
            ((AbstractList) this).modCount++;
        }
        this.c -= iS;
        return iS;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        l();
        k();
        int i2 = this.c;
        if (i < 0 || i >= i2) {
            a6.d(dj7.i("index: ", i, i2, ", size: "));
            return null;
        }
        Object[] objArr = this.a;
        int i3 = this.b;
        Object obj2 = objArr[i3 + i];
        objArr[i3 + i] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        zm5.g(i, i2, this.c);
        return new uw4(this.a, this.b + i, i2 - i, this, this.e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        k();
        int length = objArr.length;
        int i = this.c;
        Object[] objArr2 = this.a;
        int i2 = this.b;
        if (length < i) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr2, i2, i + i2, objArr.getClass());
            objArrCopyOfRange.getClass();
            return objArrCopyOfRange;
        }
        x50.g0(0, i2, i + i2, objArr2, objArr);
        int i3 = this.c;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        k();
        return g67.d(this.a, this.b, this.c, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        l();
        k();
        i(this.b + this.c, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        k();
        Object[] objArr = this.a;
        int i = this.c;
        int i2 = this.b;
        return x50.l0(objArr, i2, i + i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        l();
        k();
        int size = collection.size();
        g(this.b + this.c, collection, size);
        return size > 0;
    }
}
