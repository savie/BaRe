package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c65 extends a65 implements Iterator, bo4 {
    @Override // java.util.Iterator
    public final Object next() {
        b();
        int i = this.a;
        d65 d65Var = (d65) this.d;
        if (i >= d65Var.f) {
            m0.d();
            return null;
        }
        this.a = i + 1;
        this.b = i;
        Object[] objArr = d65Var.b;
        objArr.getClass();
        Object obj = objArr[this.b];
        f();
        return obj;
    }
}
