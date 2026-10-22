package defpackage;

import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nu5 extends z3 implements RandomAccess {
    public final hy0[] a;
    public final int[] b;

    public nu5(hy0[] hy0VarArr, int[] iArr) {
        this.a = hy0VarArr;
        this.b = iArr;
    }

    @Override // defpackage.l3, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof hy0) {
            return super.contains((hy0) obj);
        }
        return false;
    }

    @Override // defpackage.l3
    public final int d() {
        return this.a.length;
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.a[i];
    }

    @Override // defpackage.z3, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof hy0) {
            return super.indexOf((hy0) obj);
        }
        return -1;
    }

    @Override // defpackage.z3, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof hy0) {
            return super.lastIndexOf((hy0) obj);
        }
        return -1;
    }
}
