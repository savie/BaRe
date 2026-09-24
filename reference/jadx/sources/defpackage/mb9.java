package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mb9 extends ma9 {
    public static final mb9 e = new mb9(0, new Object[0]);
    public final transient Object[] c;
    public final transient int d;

    public mb9(int i, Object[] objArr) {
        this.c = objArr;
        this.d = i;
    }

    @Override // defpackage.ma9, defpackage.ea9
    public final int c(Object[] objArr) {
        Object[] objArr2 = this.c;
        int i = this.d;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // defpackage.ea9
    public final int d() {
        return this.d;
    }

    @Override // defpackage.ea9
    public final int e() {
        return 0;
    }

    @Override // defpackage.ea9
    public final boolean g() {
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        w13.x(i, this.d);
        Object obj = this.c[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // defpackage.ea9
    public final Object[] i() {
        return this.c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }
}
