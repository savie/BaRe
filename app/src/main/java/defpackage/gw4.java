package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gw4 extends AbstractSet {
    public final /* synthetic */ iw4 a;

    public gw4(iw4 iw4Var) {
        this.a = iw4Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new fw4(this.a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        iw4 iw4Var = this.a;
        hw4 hw4VarA = null;
        if (obj != null) {
            try {
                hw4VarA = iw4Var.a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        if (hw4VarA != null) {
            iw4Var.d(hw4VarA, true);
        }
        return hw4VarA != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.d;
    }
}
