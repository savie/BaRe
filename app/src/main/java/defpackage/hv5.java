package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hv5 implements Iterator {
    public int a;
    public final /* synthetic */ iv5 b;

    public hv5(iv5 iv5Var) {
        this.b = iv5Var;
        this.a = iv5Var.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a > 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            return null;
        }
        int i = this.a - 1;
        this.a = i;
        return (ev5) this.b.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.a;
        iv5 iv5Var = this.b;
        ev5 ev5Var = (ev5) iv5Var.remove(i);
        if (ev5Var != null) {
            iv5Var.a.remove(ev5Var);
        }
    }
}
