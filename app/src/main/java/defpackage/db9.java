package defpackage;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class db9 extends ea9 implements Set {
    public transient ma9 b;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                return size() == set.size() && containsAll(set);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // defpackage.ea9
    public ma9 f() {
        ma9 ma9Var = this.b;
        if (ma9Var != null) {
            return ma9Var;
        }
        ma9 ma9VarK = k();
        this.b = ma9VarK;
        return ma9VarK;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    public ma9 k() {
        Object[] array = toArray(ea9.a);
        ga9 ga9Var = ma9.b;
        return ma9.l(array.length, array);
    }
}
