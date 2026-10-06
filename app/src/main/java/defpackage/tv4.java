package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class tv4 implements Iterator {
    public u66 a;

    public tv4(u66 u66Var) {
        this.a = u66Var;
    }

    public abstract u66 a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            m0.d();
            return null;
        }
        u66 u66Var = this.a;
        this.a = a();
        return u66Var;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
