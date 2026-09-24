package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rm1 implements Iterator {
    public int a;
    public int b;
    public int c;
    public final /* synthetic */ vm1 d;

    public rm1(vm1 vm1Var) {
        this.d = vm1Var;
        this.a = vm1Var.e;
        this.b = vm1Var.isEmpty() ? -1 : 0;
        this.c = -1;
    }

    public abstract Object a(int i);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        vm1 vm1Var = this.d;
        if (vm1Var.e != this.a) {
            q.a();
            return null;
        }
        if (!hasNext()) {
            m0.d();
            return null;
        }
        int i = this.b;
        this.c = i;
        Object objA = a(i);
        int i2 = this.b + 1;
        if (i2 >= vm1Var.f) {
            i2 = -1;
        }
        this.b = i2;
        return objA;
    }

    @Override // java.util.Iterator
    public final void remove() {
        vm1 vm1Var = this.d;
        if (vm1Var.e != this.a) {
            q.a();
            return;
        }
        sz8.j("no calls to next() since the last call to remove()", this.c >= 0);
        this.a += 32;
        vm1Var.remove(vm1Var.j()[this.c]);
        this.b--;
        this.c = -1;
    }
}
