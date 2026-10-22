package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ew4 extends AbstractSet {
    public final /* synthetic */ iw4 a;

    public ew4(iw4 iw4Var) {
        this.a = iw4Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        hw4 hw4VarA;
        if (obj instanceof Map.Entry) {
            iw4 iw4Var = this.a;
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            hw4 hw4Var = null;
            if (key != null) {
                try {
                    hw4VarA = iw4Var.a(key, false);
                } catch (ClassCastException unused) {
                    hw4VarA = null;
                }
            } else {
                hw4VarA = null;
            }
            if (hw4VarA != null && Objects.equals(hw4VarA.n, entry.getValue())) {
                hw4Var = hw4VarA;
            }
            if (hw4Var != null) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new dw4(this.a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        hw4 hw4VarA;
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            iw4 iw4Var = this.a;
            hw4 hw4Var = null;
            if (key != null) {
                try {
                    hw4VarA = iw4Var.a(key, false);
                } catch (ClassCastException unused) {
                    hw4VarA = null;
                }
            } else {
                hw4VarA = null;
            }
            if (hw4VarA != null && Objects.equals(hw4VarA.n, entry.getValue())) {
                hw4Var = hw4VarA;
            }
            if (hw4Var != null) {
                iw4Var.d(hw4Var, true);
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.d;
    }
}
