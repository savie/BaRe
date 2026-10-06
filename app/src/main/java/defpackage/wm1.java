package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wm1 implements Iterator {
    public int a;
    public int b;
    public int c;
    public final /* synthetic */ xm1 d;

    public wm1(xm1 xm1Var) {
        this.d = xm1Var;
        this.a = xm1Var.d;
        this.b = xm1Var.isEmpty() ? -1 : 0;
        this.c = -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        xm1 xm1Var = this.d;
        if (xm1Var.d != this.a) {
            q.a();
            return null;
        }
        if (!hasNext()) {
            m0.d();
            return null;
        }
        int i = this.b;
        this.c = i;
        Object obj = xm1Var.f()[i];
        int i2 = this.b + 1;
        if (i2 >= xm1Var.e) {
            i2 = -1;
        }
        this.b = i2;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        xm1 xm1Var = this.d;
        if (xm1Var.d != this.a) {
            q.a();
            return;
        }
        sz8.j("no calls to next() since the last call to remove()", this.c >= 0);
        this.a += 32;
        xm1Var.remove(xm1Var.f()[this.c]);
        this.b--;
        this.c = -1;
    }
}
