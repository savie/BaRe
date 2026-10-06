package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e50 extends AbstractSet {
    public final /* synthetic */ int a;
    public final /* synthetic */ Map b;

    public /* synthetic */ e50(int i, Map map) {
        this.a = i;
        this.b = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        switch (this.a) {
            case 1:
                ((cw4) this.b).clear();
                break;
            default:
                super.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        bw4 bw4VarA;
        Object obj2;
        Object value;
        switch (this.a) {
            case 1:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                cw4 cw4Var = (cw4) this.b;
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                bw4 bw4Var = null;
                if (key != null) {
                    try {
                        bw4VarA = cw4Var.a(key, false);
                    } catch (ClassCastException unused) {
                        bw4VarA = null;
                    }
                    break;
                } else {
                    bw4VarA = null;
                }
                if (bw4VarA != null && ((obj2 = bw4VarA.n) == (value = entry.getValue()) || (obj2 != null && obj2.equals(value)))) {
                    bw4Var = bw4VarA;
                }
                return bw4Var != null;
            default:
                return super.contains(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i = this.a;
        Map map = this.b;
        switch (i) {
            case 0:
                return new h50((k50) map);
            default:
                return new xv4((cw4) map);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        bw4 bw4VarA;
        Object obj2;
        Object value;
        switch (this.a) {
            case 1:
                cw4 cw4Var = (cw4) this.b;
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                bw4 bw4Var = null;
                if (key != null) {
                    try {
                        bw4VarA = cw4Var.a(key, false);
                    } catch (ClassCastException unused) {
                        bw4VarA = null;
                    }
                    break;
                } else {
                    bw4VarA = null;
                }
                if (bw4VarA != null && ((obj2 = bw4VarA.n) == (value = entry.getValue()) || (obj2 != null && obj2.equals(value)))) {
                    bw4Var = bw4VarA;
                }
                if (bw4Var == null) {
                    return false;
                }
                cw4Var.d(bw4Var, true);
                return true;
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        int i = this.a;
        Map map = this.b;
        switch (i) {
            case 0:
                return ((k50) map).c;
            default:
                return ((cw4) map).d;
        }
    }
}
