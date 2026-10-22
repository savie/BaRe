package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x66 implements Iterator {
    public final Iterator a;
    public u66 b;
    public final /* synthetic */ b76 c;

    public x66(b76 b76Var) {
        this.c = b76Var;
        this.a = b76Var.a.values().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        u66 u66Var = (u66) this.a.next();
        this.b = u66Var;
        return u66Var.a();
    }

    @Override // java.util.Iterator
    public final void remove() {
        u66 u66Var = this.b;
        boolean z = u66Var != null;
        int i = b76.G;
        if (!z) {
            g84.c();
        } else {
            this.c.remove(u66Var.a);
            this.b = null;
        }
    }
}
