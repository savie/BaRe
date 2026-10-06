package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class k50 extends dg7 implements Map {
    public e50 d;
    public g50 e;
    public i50 f;

    public k50(k50 k50Var) {
        super(0);
        h(k50Var);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        e50 e50Var = this.d;
        if (e50Var != null) {
            return e50Var;
        }
        e50 e50Var2 = new e50(0, this);
        this.d = e50Var2;
        return e50Var2;
    }

    @Override // java.util.Map
    public final Set keySet() {
        g50 g50Var = this.e;
        if (g50Var != null) {
            return g50Var;
        }
        g50 g50Var2 = new g50(this);
        this.e = g50Var2;
        return g50Var2;
    }

    public final boolean l(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean m(Collection collection) {
        int i = this.c;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        return i != this.c;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        b(map.size() + this.c);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        i50 i50Var = this.f;
        if (i50Var != null) {
            return i50Var;
        }
        i50 i50Var2 = new i50(this);
        this.f = i50Var2;
        return i50Var2;
    }
}
