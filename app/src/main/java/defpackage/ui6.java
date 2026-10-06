package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ui6 extends na4 {
    public static final Object[] x;
    public static final ui6 y;
    public final transient Object[] n;
    public final transient int p;
    public final transient Object[] q;
    public final transient int r;
    public final transient int t;

    static {
        Object[] objArr = new Object[0];
        x = objArr;
        y = new ui6(0, 0, 0, objArr, objArr);
    }

    public ui6(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        super(0);
        this.n = objArr;
        this.p = i;
        this.q = objArr2;
        this.r = i2;
        this.t = i3;
    }

    @Override // defpackage.ga4
    public final int c(Object[] objArr) {
        Object[] objArr2 = this.n;
        int i = this.t;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.q;
            if (objArr.length != 0) {
                int iH = cy0.H(obj);
                while (true) {
                    int i = iH & this.r;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iH = i + 1;
                }
            }
        }
        return false;
    }

    @Override // defpackage.ga4
    public final Object[] d() {
        return this.n;
    }

    @Override // defpackage.ga4
    public final int e() {
        return this.t;
    }

    @Override // defpackage.ga4
    public final int f() {
        return 0;
    }

    @Override // defpackage.na4, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.p;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        la4 oi6Var = this.f;
        if (oi6Var == null) {
            ja4 ja4Var = la4.f;
            int i = this.t;
            oi6Var = i == 0 ? oi6.p : new oi6(i, this.n);
            this.f = oi6Var;
        }
        return oi6Var.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.t;
    }
}
