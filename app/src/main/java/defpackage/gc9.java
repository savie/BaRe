package defpackage;

import java.util.Collections;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class gc9 extends pb9 implements NavigableSet, Iterable {
    public final transient Comparator n;
    public transient gc9 p;

    public gc9(Comparator comparator) {
        super(3);
        this.n = comparator;
    }

    public static od9 H(Comparator comparator) {
        if (ad9.a == comparator) {
            return od9.r;
        }
        ra9 ra9Var = ib9.f;
        return new od9(id9.p, comparator);
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public final gc9 descendingSet() {
        gc9 gc9VarH = this.p;
        if (gc9VarH == null) {
            od9 od9Var = (od9) this;
            Comparator comparatorReverseOrder = Collections.reverseOrder(od9Var.n);
            gc9VarH = od9Var.isEmpty() ? H(comparatorReverseOrder) : new od9(od9Var.q.x(), comparatorReverseOrder);
            this.p = gc9VarH;
            gc9VarH.p = this;
        }
        return gc9VarH;
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public final od9 subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        if (this.n.compare(obj, obj2) > 0) {
            c6.b();
            return null;
        }
        od9 od9Var = (od9) this;
        od9 od9VarL = od9Var.L(od9Var.K(obj, z), od9Var.q.size());
        return od9VarL.L(0, od9VarL.I(obj2, z2));
    }

    public final void addFirst(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final void addLast(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return this.n;
    }

    @Override // java.util.SortedSet
    public abstract Object first();

    public final Object getFirst() {
        return first();
    }

    public final Object getLast() {
        return last();
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        obj.getClass();
        od9 od9Var = (od9) this;
        return od9Var.L(0, od9Var.I(obj, false));
    }

    @Override // java.util.SortedSet
    public abstract Object last();

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }

    public final Object removeFirst() {
        throw new UnsupportedOperationException();
    }

    public final Object removeLast() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        obj.getClass();
        od9 od9Var = (od9) this;
        return od9Var.L(od9Var.K(obj, true), od9Var.q.size());
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        obj.getClass();
        od9 od9Var = (od9) this;
        return od9Var.L(0, od9Var.I(obj, z));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        obj.getClass();
        od9 od9Var = (od9) this;
        return od9Var.L(od9Var.K(obj, z), od9Var.q.size());
    }
}
