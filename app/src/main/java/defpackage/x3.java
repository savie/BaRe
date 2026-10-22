package defpackage;

import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x3 extends w3 implements ListIterator {
    public final /* synthetic */ z3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x3(z3 z3Var, int i) {
        super(z3Var);
        this.c = z3Var;
        int iD = z3Var.d();
        if (i < 0 || i > iD) {
            a6.d(dj7.i("index: ", i, iD, ", size: "));
            throw null;
        }
        this.a = i;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.a > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.a;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            m0.d();
            return null;
        }
        int i = this.a - 1;
        this.a = i;
        return this.c.get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.a - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
