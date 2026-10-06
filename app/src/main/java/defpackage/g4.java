package defpackage;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g4 extends j4 implements NavigableMap {
    public final /* synthetic */ vi5 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g4(vi5 vi5Var, NavigableMap navigableMap) {
        super(vi5Var, navigableMap);
        this.k = vi5Var;
    }

    @Override // defpackage.j4
    public final SortedSet b() {
        return new h4(this.k, e());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry entryCeilingEntry = e().ceilingEntry(obj);
        if (entryCeilingEntry == null) {
            return null;
        }
        return a(entryCeilingEntry);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return e().ceilingKey(obj);
    }

    @Override // defpackage.j4
    /* JADX INFO: renamed from: d */
    public final SortedSet keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return new g4(this.k, e().descendingMap());
    }

    public final AbstractMap.SimpleImmutableEntry f(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry entry = (Map.Entry) it.next();
        Collection collectionE = this.k.e();
        ((ArrayList) collectionE).addAll((Collection) entry.getValue());
        it.remove();
        return new AbstractMap.SimpleImmutableEntry(entry.getKey(), Collections.unmodifiableList((List) collectionE));
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        Map.Entry entryFirstEntry = e().firstEntry();
        if (entryFirstEntry == null) {
            return null;
        }
        return a(entryFirstEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry entryFloorEntry = e().floorEntry(obj);
        if (entryFloorEntry == null) {
            return null;
        }
        return a(entryFloorEntry);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return e().floorKey(obj);
    }

    @Override // defpackage.j4
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final NavigableMap e() {
        return (NavigableMap) ((SortedMap) this.c);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z) {
        return new g4(this.k, e().headMap(obj, z));
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry entryHigherEntry = e().higherEntry(obj);
        if (entryHigherEntry == null) {
            return null;
        }
        return a(entryHigherEntry);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return e().higherKey(obj);
    }

    @Override // defpackage.j4, defpackage.d4, java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        Map.Entry entryLastEntry = e().lastEntry();
        if (entryLastEntry == null) {
            return null;
        }
        return a(entryLastEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry entryLowerEntry = e().lowerEntry(obj);
        if (entryLowerEntry == null) {
            return null;
        }
        return a(entryLowerEntry);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return e().lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        return f(((b4) entrySet()).iterator());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        return f(((b4) ((d4) descendingMap()).entrySet()).iterator());
    }

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return new g4(this.k, e().subMap(obj, z, obj2, z2));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z) {
        return new g4(this.k, e().tailMap(obj, z));
    }

    @Override // defpackage.j4, java.util.SortedMap, java.util.NavigableMap
    public final SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // defpackage.j4, java.util.SortedMap, java.util.NavigableMap
    public final SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // defpackage.j4, java.util.SortedMap, java.util.NavigableMap
    public final SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }
}
