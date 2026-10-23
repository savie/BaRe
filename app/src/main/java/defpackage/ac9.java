package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ac9 extends pb9 {
    public final /* synthetic */ dc9 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ac9(dc9 dc9Var) {
        super(3);
        this.n = dc9Var;
    }

    @Override // defpackage.pb9
    public final ib9 C() {
        return new zb9(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.n.get(entry.getKey());
            if (obj2 != null && obj2.equals(entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.pb9, java.util.Collection, java.util.Set
    public final int hashCode() {
        return lg7.L(this.n.entrySet());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return B().listIterator(0);
    }

    @Override // defpackage.ga4
    public final ne8 s() {
        return B().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.n.d.size();
    }
}
