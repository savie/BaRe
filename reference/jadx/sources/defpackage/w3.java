package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class w3 implements Iterator, bo4 {
    public int a;
    public final /* synthetic */ z3 b;

    public w3(z3 z3Var) {
        this.b = z3Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a < this.b.d();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            m0.d();
            return null;
        }
        int i = this.a;
        this.a = i + 1;
        return this.b.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
