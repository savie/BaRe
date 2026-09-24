package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class he6 implements Iterator {
    public int a;
    public final /* synthetic */ ie6 b;

    public he6(ie6 ie6Var) {
        this.b = ie6Var;
        this.a = ie6Var.b - 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.a;
        ma2 ma2Var = new ma2(15);
        Math.pow(2.0d, i);
        this.a--;
        return ma2Var;
    }

    @Override // java.util.Iterator
    public final void remove() {
    }
}
