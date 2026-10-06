package defpackage;

import java.util.AbstractMap;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pi6 extends la4 {
    public final /* synthetic */ qi6 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pi6(qi6 qi6Var) {
        super(0);
        this.k = qi6Var;
    }

    @Override // java.util.List
    public final Object get(int i) {
        qi6 qi6Var = this.k;
        sz8.f(i, qi6Var.q);
        Object[] objArr = qi6Var.p;
        int i2 = i * 2;
        Object obj = objArr[i2];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.k.q;
    }
}
