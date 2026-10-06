package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class or7 implements Iterator, bo4 {
    public final Iterator a;
    public int b;
    public final /* synthetic */ pr7 c;

    public or7(pr7 pr7Var) {
        this.c = pr7Var;
        this.a = pr7Var.a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        pr7 pr7Var;
        Iterator it;
        while (true) {
            int i = this.b;
            pr7Var = this.c;
            int i2 = pr7Var.b;
            it = this.a;
            if (i >= i2 || !it.hasNext()) {
                break;
            }
            it.next();
            this.b++;
        }
        return this.b < pr7Var.c && it.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        pr7 pr7Var;
        Iterator it;
        while (true) {
            int i = this.b;
            pr7Var = this.c;
            int i2 = pr7Var.b;
            it = this.a;
            if (i >= i2 || !it.hasNext()) {
                break;
            }
            it.next();
            this.b++;
        }
        int i3 = this.b;
        if (i3 < pr7Var.c) {
            this.b = i3 + 1;
            return it.next();
        }
        m0.d();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
