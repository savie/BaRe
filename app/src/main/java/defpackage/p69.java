package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p69 extends y59 {
    public static final p69 p = new p69(0, new Object[0]);
    public final transient Object[] k;
    public final transient int n;

    public p69(int i, Object[] objArr) {
        super(1);
        this.k = objArr;
        this.n = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        xx3.F(i, this.n);
        Object obj = this.k[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // defpackage.ga4
    public final Object[] l() {
        return this.k;
    }

    @Override // defpackage.ga4
    public final int o() {
        return 0;
    }

    @Override // defpackage.ga4
    public final int p() {
        return this.n;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.n;
    }

    @Override // defpackage.y59, defpackage.ga4
    public final int w(Object[] objArr) {
        Object[] objArr2 = this.k;
        int i = this.n;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }
}
