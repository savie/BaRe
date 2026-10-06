package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xq7 implements Iterator {
    public m3 a;
    public final /* synthetic */ zq7 b;

    public xq7(zq7 zq7Var) {
        this.b = zq7Var;
        this.a = zq7Var.d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        m3 m3Var = this.a;
        if (m3Var == null) {
            return null;
        }
        Object objA = m3Var.a();
        this.a = this.a.a;
        return objA;
    }

    @Override // java.util.Iterator
    public final void remove() {
        m3 m3Var = this.a;
        if (m3Var == null) {
            return;
        }
        m3 m3Var2 = m3Var.a;
        this.b.remove(m3Var.a());
        this.a = m3Var2;
    }
}
