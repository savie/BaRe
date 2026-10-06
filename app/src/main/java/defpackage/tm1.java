package defpackage;

import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tm1 implements Map.Entry {
    public final Object a;
    public int b;
    public final /* synthetic */ vm1 c;

    public tm1(vm1 vm1Var, int i) {
        this.c = vm1Var;
        Object obj = vm1.q;
        this.a = vm1Var.j()[i];
        this.b = i;
    }

    public final void a() {
        int i = this.b;
        Object obj = this.a;
        vm1 vm1Var = this.c;
        if (i != -1 && i < vm1Var.size()) {
            if (Objects.equals(obj, vm1Var.j()[this.b])) {
                return;
            }
        }
        Object obj2 = vm1.q;
        this.b = vm1Var.e(obj);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (Objects.equals(getKey(), entry.getKey()) && Objects.equals(getValue(), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        vm1 vm1Var = this.c;
        Map mapB = vm1Var.b();
        if (mapB != null) {
            return mapB.get(this.a);
        }
        a();
        int i = this.b;
        if (i == -1) {
            return null;
        }
        return vm1Var.k()[i];
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object key = getKey();
        Object value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        vm1 vm1Var = this.c;
        Map mapB = vm1Var.b();
        Object obj2 = this.a;
        if (mapB != null) {
            return mapB.put(obj2, obj);
        }
        a();
        int i = this.b;
        if (i == -1) {
            vm1Var.put(obj2, obj);
            return null;
        }
        Object obj3 = vm1Var.k()[i];
        vm1Var.k()[this.b] = obj;
        return obj3;
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
