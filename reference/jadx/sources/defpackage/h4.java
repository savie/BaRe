package defpackage;

import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h4 extends k4 implements NavigableSet {
    public final /* synthetic */ vi5 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h4(vi5 vi5Var, NavigableMap navigableMap) {
        super(vi5Var, navigableMap);
        this.d = vi5Var;
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return c().ceilingKey(obj);
    }

    @Override // defpackage.k4
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final NavigableMap c() {
        return (NavigableMap) ((SortedMap) this.a);
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return ((f4) descendingSet()).iterator();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return new h4(this.d, c().descendingMap());
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        return c().floorKey(obj);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        return new h4(this.d, c().headMap(obj, z));
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        return c().higherKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        return c().lowerKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        e4 e4Var = (e4) iterator();
        if (!e4Var.hasNext()) {
            return null;
        }
        Object next = e4Var.next();
        e4Var.remove();
        return next;
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        Iterator itDescendingIterator = descendingIterator();
        if (!itDescendingIterator.hasNext()) {
            return null;
        }
        Object next = itDescendingIterator.next();
        itDescendingIterator.remove();
        return next;
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return new h4(this.d, c().subMap(obj, z, obj2, z2));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        return new h4(this.d, c().tailMap(obj, z));
    }

    @Override // defpackage.k4, java.util.SortedSet, java.util.NavigableSet
    public final SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // defpackage.k4, java.util.SortedSet, java.util.NavigableSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // defpackage.k4, java.util.SortedSet, java.util.NavigableSet
    public final SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }
}
