package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class id9 extends ib9 {
    public static final id9 p = new id9(0, new Object[0]);
    public final transient Object[] k;
    public final transient int n;

    public id9(int i, Object[] objArr) {
        super(3);
        this.k = objArr;
        this.n = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        y13.N(i, this.n);
        Object obj = this.k[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // defpackage.ib9, defpackage.ga4
    public final int i(Object[] objArr) {
        Object[] objArr2 = this.k;
        int i = this.n;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // defpackage.ga4
    public final int k() {
        return this.n;
    }

    @Override // defpackage.ga4
    public final int o() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.n;
    }

    @Override // defpackage.ga4
    public final Object[] t() {
        return this.k;
    }
}
