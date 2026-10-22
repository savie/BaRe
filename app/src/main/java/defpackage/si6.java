package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class si6 extends la4 {
    public final transient Object[] k;
    public final transient int n;
    public final transient int p;

    public si6(Object[] objArr, int i, int i2) {
        super(0);
        this.k = objArr;
        this.n = i;
        this.p = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        sz8.f(i, this.p);
        Object obj = this.k[(i * 2) + this.n];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.p;
    }
}
