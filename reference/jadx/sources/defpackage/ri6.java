package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ri6 extends na4 {
    public final transient ti6 n;
    public final transient si6 p;

    public ri6(ti6 ti6Var, si6 si6Var) {
        super(0);
        this.n = ti6Var;
        this.p = si6Var;
    }

    @Override // defpackage.ga4
    public final int c(Object[] objArr) {
        return this.p.c(objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.n.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return this.p.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.n.f;
    }
}
