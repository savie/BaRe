package defpackage;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q4 extends v4 implements Serializable {
    public final transient AbstractMap d;
    public transient int e;

    public q4(AbstractMap abstractMap) {
        if (abstractMap.isEmpty()) {
            this.d = abstractMap;
        } else {
            c6.b();
            throw null;
        }
    }

    @Override // defpackage.ti5
    public Collection a() {
        t4 u4Var = this.a;
        if (u4Var == null) {
            u4Var = this instanceof y24 ? new u4(this) : new t4(this);
            this.a = u4Var;
        }
        return u4Var;
    }

    public final void c() {
        AbstractMap abstractMap = this.d;
        Iterator it = abstractMap.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        abstractMap.clear();
        this.e = 0;
    }

    public d4 d() {
        return new d4(this, this.d);
    }

    public abstract Collection e();

    public f4 f() {
        return new f4(this, this.d);
    }

    public boolean g(Object obj, Object obj2) {
        AbstractMap abstractMap = this.d;
        Collection collection = (Collection) abstractMap.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.e++;
            return true;
        }
        Collection collectionE = e();
        if (!collectionE.add(obj2)) {
            e6.e("New Collection violated the Collection spec");
            return false;
        }
        this.e++;
        abstractMap.put(obj, collectionE);
        return true;
    }

    public abstract Collection h(Object obj, Collection collection);
}
