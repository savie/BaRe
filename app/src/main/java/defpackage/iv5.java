package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iv5 extends ArrayList {
    public final HashSet a;

    public iv5(HashSet hashSet) {
        this.a = hashSet;
    }

    public final ev5 c() {
        int size = size();
        if (size <= 0) {
            return null;
        }
        ev5 ev5Var = (ev5) remove(size - 1);
        if (ev5Var != null) {
            this.a.remove(ev5Var);
        }
        return ev5Var;
    }

    public final ev5 d() {
        int size = size();
        if (size <= 0) {
            return null;
        }
        return (ev5) get(size - 1);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new hv5(this);
    }
}
