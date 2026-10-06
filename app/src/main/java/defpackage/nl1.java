package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nl1 implements Iterable {
    public final ml1 a = new ml1();
    public final ml1 b = new ml1();

    public final void c(Object obj) {
        for (V v : this.a.values()) {
            v.b.k().i(obj, v.a);
        }
    }

    public final void d(uq4 uq4Var, Object obj) {
        hj8 hj8Var = new hj8(uq4Var, obj);
        if (uq4Var != null) {
            String[] strArrM = uq4Var.m();
            Object key = uq4Var.getKey();
            for (String str : strArrM) {
                this.b.put(str, hj8Var);
            }
            this.a.put(key, hj8Var);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.a.keySet().iterator();
    }
}
