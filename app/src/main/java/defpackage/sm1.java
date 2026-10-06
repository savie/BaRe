package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sm1 extends AbstractSet {
    public final /* synthetic */ vm1 a;

    public sm1(vm1 vm1Var) {
        this.a = vm1Var;
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
        vm1 vm1Var = this.a;
        Map mapB = vm1Var.b();
        return mapB != null ? mapB.keySet().iterator() : new nm1(vm1Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        vm1 vm1Var = this.a;
        Map mapB = vm1Var.b();
        if (mapB != null) {
            return mapB.keySet().remove(obj);
        }
        return vm1Var.h(obj) != vm1.q;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.size();
    }
}
