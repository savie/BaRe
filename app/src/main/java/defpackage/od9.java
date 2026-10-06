package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class od9 extends gc9 {
    public static final od9 r;
    public final transient ib9 q;

    static {
        ra9 ra9Var = ib9.f;
        r = new od9(id9.p, ad9.a);
    }

    public od9(ib9 ib9Var, Comparator comparator) {
        super(comparator);
        this.q = ib9Var;
    }

    @Override // defpackage.pb9
    public final ib9 B() {
        return this.q;
    }

    public final int I(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.q, obj, this.n);
        if (iBinarySearch >= 0) {
            return z ? iBinarySearch + 1 : iBinarySearch;
        }
        return ~iBinarySearch;
    }

    public final int K(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.q, obj, this.n);
        if (iBinarySearch >= 0) {
            return z ? iBinarySearch : iBinarySearch + 1;
        }
        return ~iBinarySearch;
    }

    public final od9 L(int i, int i2) {
        ib9 ib9Var = this.q;
        if (i == 0) {
            if (i2 == ib9Var.size()) {
                return this;
            }
            i = 0;
        }
        Comparator comparator = this.n;
        return i < i2 ? new od9(ib9Var.subList(i, i2), comparator) : gc9.H(comparator);
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        int iK = K(obj, true);
        ib9 ib9Var = this.q;
        if (iK == ib9Var.size()) {
            return null;
        }
        return ib9Var.get(iK);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.q, obj, this.n) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        Comparator comparator = this.n;
        if (!ji8.R(comparator, collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        ra9 ra9VarListIterator = this.q.listIterator(0);
        Iterator it = collection.iterator();
        if (ra9VarListIterator.hasNext()) {
            Object next = it.next();
            Object next2 = ra9VarListIterator.next();
            while (true) {
                try {
                    int iCompare = comparator.compare(next2, next);
                    if (iCompare >= 0) {
                        if (iCompare != 0) {
                            break;
                        }
                        if (!it.hasNext()) {
                            return true;
                        }
                        next = it.next();
                    } else {
                        if (!ra9VarListIterator.hasNext()) {
                            break;
                        }
                        next2 = ra9VarListIterator.next();
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
        }
        return false;
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return this.q.x().listIterator(0);
    }

    @Override // defpackage.pb9, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            ib9 ib9Var = this.q;
            if (ib9Var.size() == set.size()) {
                if (isEmpty()) {
                    return true;
                }
                Comparator comparator = this.n;
                if (!ji8.R(comparator, set)) {
                    return containsAll(set);
                }
                Iterator it = set.iterator();
                try {
                    ra9 ra9VarListIterator = ib9Var.listIterator(0);
                    while (ra9VarListIterator.hasNext()) {
                        Object next = ra9VarListIterator.next();
                        Object next2 = it.next();
                        if (next2 == null || comparator.compare(next, next2) != 0) {
                        }
                    }
                    return true;
                } catch (ClassCastException | NoSuchElementException unused) {
                }
            }
        }
        return false;
    }

    @Override // defpackage.gc9, java.util.SortedSet
    public final Object first() {
        if (!isEmpty()) {
            return this.q.get(0);
        }
        m0.d();
        return null;
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        int I = I(obj, true) - 1;
        if (I == -1) {
            return null;
        }
        return this.q.get(I);
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        int iK = K(obj, false);
        ib9 ib9Var = this.q;
        if (iK == ib9Var.size()) {
            return null;
        }
        return ib9Var.get(iK);
    }

    @Override // defpackage.ga4
    public final int i(Object[] objArr) {
        return this.q.i(objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public final /* synthetic */ Iterator iterator() {
        return this.q.listIterator(0);
    }

    @Override // defpackage.ga4
    public final int k() {
        return this.q.k();
    }

    @Override // defpackage.gc9, java.util.SortedSet
    public final Object last() {
        if (isEmpty()) {
            m0.d();
            return null;
        }
        ib9 ib9Var = this.q;
        return ib9Var.get(ib9Var.size() - 1);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        int I = I(obj, false) - 1;
        if (I == -1) {
            return null;
        }
        return this.q.get(I);
    }

    @Override // defpackage.ga4
    public final int o() {
        return this.q.o();
    }

    @Override // defpackage.ga4
    public final ne8 s() {
        return this.q.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.q.size();
    }

    @Override // defpackage.ga4
    public final Object[] t() {
        return this.q.t();
    }
}
