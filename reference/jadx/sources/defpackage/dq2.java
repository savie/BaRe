package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dq2 implements Iterator, bo4 {
    public final /* synthetic */ int a = 0;
    public int b;
    public final Iterator c;

    public dq2(eq2 eq2Var, byte b) {
        this.b = eq2Var.c;
        this.c = eq2Var.b.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.a;
        Iterator it = this.c;
        switch (i) {
            case 0:
                break;
            default:
                return this.b > 0 && it.hasNext();
        }
        while (this.b > 0 && it.hasNext()) {
            it.next();
            this.b--;
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.a;
        Iterator it = this.c;
        switch (i) {
            case 0:
                break;
            default:
                int i2 = this.b;
                if (i2 != 0) {
                    this.b = i2 - 1;
                    return it.next();
                }
                m0.d();
                return null;
        }
        while (this.b > 0 && it.hasNext()) {
            it.next();
            this.b--;
        }
        return it.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public dq2(eq2 eq2Var) {
        this.c = eq2Var.b.iterator();
        this.b = eq2Var.c;
    }
}
