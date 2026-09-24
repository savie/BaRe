package defpackage;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class d4 extends AbstractMap {
    public transient b4 a;
    public transient w65 b;
    public final transient Map c;
    public final /* synthetic */ q4 d;

    public d4(q4 q4Var, Map map) {
        this.d = q4Var;
        this.c = map;
    }

    public final AbstractMap.SimpleImmutableEntry a(Map.Entry entry) {
        Object key = entry.getKey();
        return new AbstractMap.SimpleImmutableEntry(key, this.d.h(key, (Collection) entry.getValue()));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        q4 q4Var = this.d;
        if (this.c == q4Var.d) {
            q4Var.c();
            return;
        }
        c4 c4Var = new c4(this);
        while (c4Var.hasNext()) {
            c4Var.next();
            c4Var.remove();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map map = this.c;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        b4 b4Var = this.a;
        if (b4Var != null) {
            return b4Var;
        }
        b4 b4Var2 = new b4(this);
        this.a = b4Var2;
        return b4Var2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        return this == obj || this.c.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        Map map = this.c;
        map.getClass();
        try {
            obj2 = map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return null;
        }
        return this.d.h(obj, collection);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.c.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        q4 q4Var = this.d;
        Set set = q4Var.b;
        if (set != null) {
            return set;
        }
        f4 f4VarF = q4Var.f();
        q4Var.b = f4VarF;
        return f4VarF;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Collection collection = (Collection) this.c.remove(obj);
        if (collection == null) {
            return null;
        }
        q4 q4Var = this.d;
        Collection collectionE = q4Var.e();
        collectionE.addAll(collection);
        q4Var.e -= collection.size();
        collection.clear();
        return collectionE;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.c.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.c.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        w65 w65Var = this.b;
        if (w65Var != null) {
            return w65Var;
        }
        w65 w65Var2 = new w65(this);
        this.b = w65Var2;
        return w65Var2;
    }
}
