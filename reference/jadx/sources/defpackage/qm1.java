package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qm1 extends AbstractSet {
    public final /* synthetic */ vm1 a;

    public qm1(vm1 vm1Var) {
        this.a = vm1Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        vm1 vm1Var = this.a;
        Map mapB = vm1Var.b();
        if (mapB != null) {
            return mapB.entrySet().contains(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        int iE = vm1Var.e(entry.getKey());
        return iE != -1 && Objects.equals(vm1Var.k()[iE], entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        vm1 vm1Var = this.a;
        Map mapB = vm1Var.b();
        return mapB != null ? mapB.entrySet().iterator() : new om1(vm1Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        vm1 vm1Var = this.a;
        Map mapB = vm1Var.b();
        if (mapB != null) {
            return mapB.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (vm1Var.g()) {
            return false;
        }
        int iD = vm1Var.d();
        Object key = entry.getKey();
        Object value = entry.getValue();
        Object obj2 = vm1Var.a;
        Objects.requireNonNull(obj2);
        int iE = ji8.E(key, value, iD, obj2, vm1Var.i(), vm1Var.j(), vm1Var.k());
        if (iE == -1) {
            return false;
        }
        vm1Var.f(iE, iD);
        vm1Var.f--;
        vm1Var.e += 32;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.size();
    }
}
