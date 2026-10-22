package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c4 implements Iterator {
    public final Iterator a;
    public Collection b;
    public final /* synthetic */ d4 c;

    public c4(d4 d4Var) {
        this.c = d4Var;
        this.a = d4Var.c.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.a.next();
        this.b = (Collection) entry.getValue();
        return this.c.a(entry);
    }

    @Override // java.util.Iterator
    public final void remove() {
        sz8.j("no calls to next() since the last call to remove()", this.b != null);
        this.a.remove();
        this.c.d.e -= this.b.size();
        this.b.clear();
        this.b = null;
    }
}
