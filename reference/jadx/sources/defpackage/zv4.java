package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zv4 extends AbstractSet {
    public final /* synthetic */ cw4 a;

    public zv4(cw4 cw4Var) {
        this.a = cw4Var;
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
        return new yv4(this.a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        cw4 cw4Var = this.a;
        bw4 bw4VarA = null;
        if (obj != null) {
            try {
                bw4VarA = cw4Var.a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        if (bw4VarA != null) {
            cw4Var.d(bw4VarA, true);
        }
        return bw4VarA != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.d;
    }
}
