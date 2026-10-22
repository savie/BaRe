package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s66 implements Iterator {
    public final Iterator a;
    public Object b;
    public final /* synthetic */ b76 c;

    public s66(b76 b76Var) {
        this.c = b76Var;
        this.a = b76Var.a.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object next = this.a.next();
        this.b = next;
        return next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        Object obj = this.b;
        boolean z = obj != null;
        int i = b76.G;
        if (!z) {
            g84.c();
        } else {
            this.c.remove(obj);
            this.b = null;
        }
    }
}
