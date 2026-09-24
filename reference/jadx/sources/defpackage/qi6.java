package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qi6 extends na4 {
    public final transient ti6 n;
    public final transient Object[] p;
    public final transient int q;

    public qi6(ti6 ti6Var, Object[] objArr, int i) {
        super(0);
        this.n = ti6Var;
        this.p = objArr;
        this.q = i;
    }

    public final la4 C() {
        return new pi6(this);
    }

    @Override // defpackage.ga4
    public final int c(Object[] objArr) {
        la4 la4VarC = this.f;
        if (la4VarC == null) {
            la4VarC = C();
            this.f = la4VarC;
        }
        return la4VarC.c(objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.n.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        la4 la4VarC = this.f;
        if (la4VarC == null) {
            la4VarC = C();
            this.f = la4VarC;
        }
        return la4VarC.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.q;
    }
}
