package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oi6 extends la4 {
    public static final oi6 p = new oi6(0, new Object[0]);
    public final transient Object[] k;
    public final transient int n;

    public oi6(int i, Object[] objArr) {
        super(0);
        this.k = objArr;
        this.n = i;
    }

    @Override // defpackage.la4, defpackage.ga4
    public final int c(Object[] objArr) {
        Object[] objArr2 = this.k;
        int i = this.n;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // defpackage.ga4
    public final Object[] d() {
        return this.k;
    }

    @Override // defpackage.ga4
    public final int e() {
        return this.n;
    }

    @Override // defpackage.ga4
    public final int f() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i) {
        sz8.f(i, this.n);
        Object obj = this.k[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.n;
    }
}
