package defpackage;

import java.util.AbstractMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q50 implements Iterator {
    public int a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ r50 c;

    public q50(r50 r50Var, int i, boolean z) {
        this.c = r50Var;
        this.b = z;
        this.a = i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.a;
        if (this.b) {
            return i >= 0;
        }
        return i < this.c.a.length;
    }

    @Override // java.util.Iterator
    public final Object next() {
        r50 r50Var = this.c;
        Object[] objArr = r50Var.a;
        int i = this.a;
        Object obj = objArr[i];
        Object obj2 = r50Var.b[i];
        this.a = this.b ? i - 1 : i + 1;
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Can't remove elements from ImmutableSortedMap");
    }
}
