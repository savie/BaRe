package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ld9 extends pb9 {
    public static final Object[] x;
    public static final ld9 y;
    public final transient Object[] n;
    public final transient int p;
    public final transient Object[] q;
    public final transient int r;
    public final transient int t;

    static {
        Object[] objArr = new Object[0];
        x = objArr;
        y = new ld9(0, 0, 0, objArr, objArr);
    }

    public ld9(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        super(3);
        this.n = objArr;
        this.p = i;
        this.q = objArr2;
        this.r = i2;
        this.t = i3;
    }

    @Override // defpackage.pb9
    public final ib9 C() {
        return ib9.B(this.t, this.n);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        Object[] objArr = this.q;
        if (objArr.length == 0) {
            return false;
        }
        int iRotateLeft = (int) (((long) Integer.rotateLeft((int) (((long) obj.hashCode()) * (-862048943)), 15)) * 461845907);
        while (true) {
            int i = iRotateLeft & this.r;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iRotateLeft = i + 1;
        }
    }

    @Override // defpackage.pb9, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.p;
    }

    @Override // defpackage.ga4
    public final int i(Object[] objArr) {
        Object[] objArr2 = this.n;
        int i = this.t;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return B().listIterator(0);
    }

    @Override // defpackage.ga4
    public final int k() {
        return this.t;
    }

    @Override // defpackage.ga4
    public final int o() {
        return 0;
    }

    @Override // defpackage.ga4
    public final ne8 s() {
        return B().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.t;
    }

    @Override // defpackage.ga4
    public final Object[] t() {
        return this.n;
    }
}
