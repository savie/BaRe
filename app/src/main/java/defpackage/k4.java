package defpackage;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class k4 extends f4 implements SortedSet {
    public final /* synthetic */ vi5 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k4(vi5 vi5Var, SortedMap sortedMap) {
        super(vi5Var, sortedMap);
        this.c = vi5Var;
    }

    public SortedMap c() {
        return (SortedMap) this.a;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return c().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return c().firstKey();
    }

    public SortedSet headSet(Object obj) {
        return new k4(this.c, c().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return c().lastKey();
    }

    public SortedSet subSet(Object obj, Object obj2) {
        return new k4(this.c, c().subMap(obj, obj2));
    }

    public SortedSet tailSet(Object obj) {
        return new k4(this.c, c().tailMap(obj));
    }
}
