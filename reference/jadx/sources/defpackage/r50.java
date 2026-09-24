package defpackage;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r50 extends oa4 {
    public final Object[] a;
    public final Object[] b;
    public final Comparator c;

    public r50(Comparator comparator) {
        this.a = new Object[0];
        this.b = new Object[0];
        this.c = comparator;
    }

    @Override // defpackage.oa4
    public final boolean c(Object obj) {
        return p(obj) != -1;
    }

    @Override // defpackage.oa4
    public final Object d(m61 m61Var) {
        int iP = p(m61Var);
        if (iP != -1) {
            return this.b[iP];
        }
        return null;
    }

    @Override // defpackage.oa4
    public final Comparator e() {
        return this.c;
    }

    @Override // defpackage.oa4
    public final Object f() {
        Object[] objArr = this.a;
        if (objArr.length > 0) {
            return objArr[objArr.length - 1];
        }
        return null;
    }

    @Override // defpackage.oa4
    public final Object g() {
        Object[] objArr = this.a;
        if (objArr.length > 0) {
            return objArr[0];
        }
        return null;
    }

    @Override // defpackage.oa4
    public final Object i(Object obj) {
        int iP = p(obj);
        if (iP == -1) {
            c6.f("Can't find predecessor of nonexistent key");
            return null;
        }
        if (iP <= 0) {
            return null;
        }
        return this.a[iP - 1];
    }

    @Override // defpackage.oa4
    public final boolean isEmpty() {
        return this.a.length == 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new q50(this, 0, false);
    }

    @Override // defpackage.oa4
    public final void k(iz1 iz1Var) {
        int i = 0;
        while (true) {
            Object[] objArr = this.a;
            if (i >= objArr.length) {
                return;
            }
            iz1Var.B(objArr[i], this.b[i]);
            i++;
        }
    }

    @Override // defpackage.oa4
    public final Iterator k0() {
        return new q50(this, this.a.length - 1, true);
    }

    @Override // defpackage.oa4
    public final oa4 l(Iterable iterable, Object obj) {
        int iP = p(obj);
        Comparator comparator = this.c;
        Object[] objArr = this.b;
        Object[] objArr2 = this.a;
        if (iP != -1) {
            if (objArr2[iP] == obj && objArr[iP] == iterable) {
                return this;
            }
            int length = objArr2.length;
            Object[] objArr3 = new Object[length];
            System.arraycopy(objArr2, 0, objArr3, 0, length);
            objArr3[iP] = obj;
            int length2 = objArr.length;
            Object[] objArr4 = new Object[length2];
            System.arraycopy(objArr, 0, objArr4, 0, length2);
            objArr4[iP] = iterable;
            return new r50(comparator, objArr3, objArr4);
        }
        if (objArr2.length > 25) {
            HashMap map = new HashMap(objArr2.length + 1);
            for (int i = 0; i < objArr2.length; i++) {
                map.put(objArr2[i], objArr[i]);
            }
            map.put(obj, iterable);
            return x91.b(new ArrayList(map.keySet()), map, comparator);
        }
        int i2 = 0;
        while (i2 < objArr2.length && comparator.compare(objArr2[i2], obj) < 0) {
            i2++;
        }
        int length3 = objArr2.length + 1;
        Object[] objArr5 = new Object[length3];
        System.arraycopy(objArr2, 0, objArr5, 0, i2);
        objArr5[i2] = obj;
        int i3 = i2 + 1;
        System.arraycopy(objArr2, i2, objArr5, i3, (length3 - i2) - 1);
        int length4 = objArr.length + 1;
        Object[] objArr6 = new Object[length4];
        System.arraycopy(objArr, 0, objArr6, 0, i2);
        objArr6[i2] = iterable;
        System.arraycopy(objArr, i2, objArr6, i3, (length4 - i2) - 1);
        return new r50(comparator, objArr5, objArr6);
    }

    @Override // defpackage.oa4
    public final oa4 o(Object obj) {
        int iP = p(obj);
        if (iP == -1) {
            return this;
        }
        Object[] objArr = this.a;
        int length = objArr.length - 1;
        Object[] objArr2 = new Object[length];
        System.arraycopy(objArr, 0, objArr2, 0, iP);
        int i = iP + 1;
        System.arraycopy(objArr, i, objArr2, iP, length - iP);
        Object[] objArr3 = this.b;
        int length2 = objArr3.length - 1;
        Object[] objArr4 = new Object[length2];
        System.arraycopy(objArr3, 0, objArr4, 0, iP);
        System.arraycopy(objArr3, i, objArr4, iP, length2 - iP);
        return new r50(this.c, objArr2, objArr4);
    }

    public final int p(Object obj) {
        int i = 0;
        for (Object obj2 : this.a) {
            if (this.c.compare(obj, obj2) == 0) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // defpackage.oa4
    public final int size() {
        return this.a.length;
    }

    public r50(Comparator comparator, Object[] objArr, Object[] objArr2) {
        this.a = objArr;
        this.b = objArr2;
        this.c = comparator;
    }
}
