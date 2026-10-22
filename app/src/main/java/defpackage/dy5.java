package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dy5 implements Iterator {
    public int a;
    public final /* synthetic */ gy5 b;

    public dy5(gy5 gy5Var) {
        this.b = gy5Var;
        this.a = gy5Var.b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a < this.b.c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException("No more elements.");
        }
        m61[] m61VarArr = this.b.a;
        int i = this.a;
        m61 m61Var = m61VarArr[i];
        this.a = i + 1;
        return m61Var;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Can't remove component from immutable Path!");
    }
}
