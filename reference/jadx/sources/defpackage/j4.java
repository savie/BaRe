package defpackage;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class j4 extends d4 implements SortedMap {
    public SortedSet e;
    public final /* synthetic */ vi5 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j4(vi5 vi5Var, SortedMap sortedMap) {
        super(vi5Var, sortedMap);
        this.f = vi5Var;
    }

    public SortedSet b() {
        return new k4(this.f, e());
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return e().comparator();
    }

    @Override // defpackage.d4, java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public SortedSet keySet() {
        SortedSet sortedSet = this.e;
        if (sortedSet != null) {
            return sortedSet;
        }
        SortedSet sortedSetB = b();
        this.e = sortedSetB;
        return sortedSetB;
    }

    public SortedMap e() {
        return (SortedMap) this.c;
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return e().firstKey();
    }

    public SortedMap headMap(Object obj) {
        return new j4(this.f, e().headMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return e().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new j4(this.f, e().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new j4(this.f, e().tailMap(obj));
    }
}
