package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ub9 extends db9 {
    public final transient bc9 c;
    public final transient xb9 d;

    public ub9(bc9 bc9Var, xb9 xb9Var) {
        this.c = bc9Var;
        this.d = xb9Var;
    }

    @Override // defpackage.ea9
    public final int c(Object[] objArr) {
        return this.d.c(objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.c.get(obj) != null;
    }

    @Override // defpackage.db9, defpackage.ea9
    public final ma9 f() {
        return this.d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.d.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.c.f;
    }
}
