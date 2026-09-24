package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ae9 extends pb9 {
    public final transient Object n;

    public ae9(Object obj) {
        super(3);
        this.n = obj;
    }

    @Override // defpackage.pb9
    public final ib9 B() {
        Object[] objArr = {this.n};
        for (int i = 0; i < 1; i++) {
            ra9 ra9Var = ib9.f;
            if (objArr[i] == null) {
                f6.n(fz5.j(i, "at index "));
                return null;
            }
        }
        return ib9.B(1, objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.n.equals(obj);
    }

    @Override // defpackage.pb9, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.n.hashCode();
    }

    @Override // defpackage.ga4
    public final int i(Object[] objArr) {
        objArr[0] = this.n;
        return 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new oc9(this.n);
    }

    @Override // defpackage.ga4
    public final ne8 s() {
        return new oc9(this.n);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return eq3.k("[", this.n.toString(), "]");
    }
}
