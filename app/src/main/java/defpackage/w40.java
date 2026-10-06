package defpackage;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w40 extends w4 {
    public static final Object[] d = new Object[0];
    public int a;
    public Object[] b;
    public int c;

    public w40(int i) {
        Object[] objArr;
        if (i == 0) {
            objArr = d;
        } else {
            if (i <= 0) {
                c6.f(fz5.j(i, "Illegal Capacity: "));
                throw null;
            }
            objArr = new Object[i];
        }
        this.b = objArr;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int length;
        int i2 = this.c;
        if (i < 0 || i > i2) {
            a6.d(dj7.i("index: ", i, i2, ", size: "));
            return;
        }
        if (i == i2) {
            addLast(obj);
            return;
        }
        if (i == 0) {
            addFirst(obj);
            return;
        }
        p();
        g(this.c + 1);
        int iO = o(this.a + i);
        int i3 = this.c;
        if (i < ((i3 + 1) >> 1)) {
            if (iO == 0) {
                Object[] objArr = this.b;
                objArr.getClass();
                length = objArr.length - 1;
            } else {
                length = iO - 1;
            }
            int length2 = this.a;
            if (length2 == 0) {
                Object[] objArr2 = this.b;
                objArr2.getClass();
                length2 = objArr2.length;
            }
            int i4 = length2 - 1;
            int i5 = this.a;
            Object[] objArr3 = this.b;
            if (length >= i5) {
                objArr3[i4] = objArr3[i5];
                x50.g0(i5, i5 + 1, length + 1, objArr3, objArr3);
            } else {
                x50.g0(i5 - 1, i5, objArr3.length, objArr3, objArr3);
                Object[] objArr4 = this.b;
                objArr4[objArr4.length - 1] = objArr4[0];
                x50.g0(0, 1, length + 1, objArr4, objArr4);
            }
            this.b[length] = obj;
            this.a = i4;
        } else {
            int iO2 = o(i3 + this.a);
            Object[] objArr5 = this.b;
            if (iO < iO2) {
                x50.g0(iO + 1, iO, iO2, objArr5, objArr5);
            } else {
                x50.g0(1, 0, iO2, objArr5, objArr5);
                Object[] objArr6 = this.b;
                objArr6[0] = objArr6[objArr6.length - 1];
                x50.g0(iO + 1, iO, objArr6.length - 1, objArr6, objArr6);
            }
            this.b[iO] = obj;
        }
        this.c++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        collection.getClass();
        int i2 = this.c;
        if (i < 0 || i > i2) {
            a6.d(dj7.i("index: ", i, i2, ", size: "));
            return false;
        }
        if (collection.isEmpty()) {
            return false;
        }
        if (i == this.c) {
            return addAll(collection);
        }
        p();
        g(collection.size() + this.c);
        int iO = o(this.c + this.a);
        int iO2 = o(this.a + i);
        int size = collection.size();
        if (i >= ((this.c + 1) >> 1)) {
            int i3 = iO2 + size;
            Object[] objArr = this.b;
            if (iO2 < iO) {
                int i4 = size + iO;
                if (i4 <= objArr.length) {
                    x50.g0(i3, iO2, iO, objArr, objArr);
                } else if (i3 >= objArr.length) {
                    x50.g0(i3 - objArr.length, iO2, iO, objArr, objArr);
                } else {
                    int length = iO - (i4 - objArr.length);
                    x50.g0(0, length, iO, objArr, objArr);
                    Object[] objArr2 = this.b;
                    x50.g0(i3, iO2, length, objArr2, objArr2);
                }
            } else {
                x50.g0(size, 0, iO, objArr, objArr);
                Object[] objArr3 = this.b;
                if (i3 >= objArr3.length) {
                    x50.g0(i3 - objArr3.length, iO2, objArr3.length, objArr3, objArr3);
                } else {
                    x50.g0(0, objArr3.length - size, objArr3.length, objArr3, objArr3);
                    Object[] objArr4 = this.b;
                    x50.g0(i3, iO2, objArr4.length - size, objArr4, objArr4);
                }
            }
            f(iO2, collection);
            return true;
        }
        int i5 = this.a;
        int length2 = i5 - size;
        Object[] objArr5 = this.b;
        if (iO2 < i5) {
            x50.g0(length2, i5, objArr5.length, objArr5, objArr5);
            Object[] objArr6 = this.b;
            if (size >= iO2) {
                x50.g0(objArr6.length - size, 0, iO2, objArr6, objArr6);
            } else {
                x50.g0(objArr6.length - size, 0, size, objArr6, objArr6);
                Object[] objArr7 = this.b;
                x50.g0(0, size, iO2, objArr7, objArr7);
            }
        } else if (length2 >= 0) {
            x50.g0(length2, i5, iO2, objArr5, objArr5);
        } else {
            length2 += objArr5.length;
            int i6 = iO2 - i5;
            int length3 = objArr5.length - length2;
            if (length3 >= i6) {
                x50.g0(length2, i5, iO2, objArr5, objArr5);
            } else {
                x50.g0(length2, i5, i5 + length3, objArr5, objArr5);
                Object[] objArr8 = this.b;
                x50.g0(0, this.a + length3, iO2, objArr8, objArr8);
            }
        }
        this.a = length2;
        f(k(iO2 - size), collection);
        return true;
    }

    public final void addFirst(Object obj) {
        p();
        g(this.c + 1);
        int length = this.a;
        if (length == 0) {
            Object[] objArr = this.b;
            objArr.getClass();
            length = objArr.length;
        }
        int i = length - 1;
        this.a = i;
        this.b[i] = obj;
        this.c++;
    }

    public final void addLast(Object obj) {
        p();
        g(d() + 1);
        this.b[o(d() + this.a)] = obj;
        this.c = d() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            p();
            l(this.a, o(d() + this.a));
        }
        this.a = 0;
        this.c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.w4
    public final int d() {
        return this.c;
    }

    @Override // defpackage.w4
    public final Object e(int i) {
        int i2 = this.c;
        if (i < 0 || i >= i2) {
            a6.d(dj7.i("index: ", i, i2, ", size: "));
            return null;
        }
        if (i == d() - 1) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        p();
        int iO = o(this.a + i);
        Object[] objArr = this.b;
        Object obj = objArr[iO];
        int i3 = this.c >> 1;
        int i4 = this.a;
        if (i < i3) {
            if (iO >= i4) {
                x50.g0(i4 + 1, i4, iO, objArr, objArr);
            } else {
                x50.g0(1, 0, iO, objArr, objArr);
                Object[] objArr2 = this.b;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i5 = this.a;
                x50.g0(i5 + 1, i5, objArr2.length - 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.b;
            int i6 = this.a;
            objArr3[i6] = null;
            this.a = i(i6);
        } else {
            int iO2 = o((d() - 1) + i4);
            Object[] objArr4 = this.b;
            if (iO <= iO2) {
                x50.g0(iO, iO + 1, iO2 + 1, objArr4, objArr4);
            } else {
                x50.g0(iO, iO + 1, objArr4.length, objArr4, objArr4);
                Object[] objArr5 = this.b;
                objArr5[objArr5.length - 1] = objArr5[0];
                x50.g0(0, 1, iO2 + 1, objArr5, objArr5);
            }
            this.b[iO2] = null;
        }
        this.c--;
        return obj;
    }

    public final void f(int i, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.b.length;
        while (i < length && it.hasNext()) {
            this.b[i] = it.next();
            i++;
        }
        int i2 = this.a;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.b[i3] = it.next();
        }
        this.c = collection.size() + this.c;
    }

    public final void g(int i) {
        if (i < 0) {
            l0.e("Deque is too big.");
            return;
        }
        Object[] objArr = this.b;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == d) {
            if (i < 10) {
                i = 10;
            }
            this.b = new Object[i];
            return;
        }
        int length = objArr.length;
        int i2 = length + (length >> 1);
        if (i2 - i < 0) {
            i2 = i;
        }
        if (i2 - 2147483639 > 0) {
            i2 = i > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[i2];
        x50.g0(0, this.a, objArr.length, objArr, objArr2);
        Object[] objArr3 = this.b;
        int length2 = objArr3.length;
        int i3 = this.a;
        x50.g0(length2 - i3, 0, i3, objArr3, objArr2);
        this.a = 0;
        this.b = objArr2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int iD = d();
        if (i >= 0 && i < iD) {
            return this.b[o(this.a + i)];
        }
        a6.d(dj7.i("index: ", i, iD, ", size: "));
        return null;
    }

    public final int i(int i) {
        Object[] objArr = this.b;
        objArr.getClass();
        if (i == objArr.length - 1) {
            return 0;
        }
        return i + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        int iO = o(d() + this.a);
        int length = this.a;
        if (length < iO) {
            while (length < iO) {
                if (pe4.d(obj, this.b[length])) {
                    i = this.a;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (isEmpty() || (length = this.a) < iO) {
            return -1;
        }
        int length2 = this.b.length;
        while (length < length2) {
            if (pe4.d(obj, this.b[length])) {
                i = this.a;
            } else {
                length++;
            }
        }
        for (int i2 = 0; i2 < iO; i2++) {
            if (pe4.d(obj, this.b[i2])) {
                length = i2 + this.b.length;
                i = this.a;
            }
        }
        return -1;
        return length - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return d() == 0;
    }

    public final int k(int i) {
        return i < 0 ? i + this.b.length : i;
    }

    public final void l(int i, int i2) {
        Object[] objArr = this.b;
        if (i < i2) {
            x50.m0(objArr, i, i2);
        } else {
            Arrays.fill(objArr, i, objArr.length, (Object) null);
            x50.m0(this.b, 0, i2);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        Object[] objArr;
        int length;
        int i;
        int iO = o(this.c + this.a);
        int i2 = this.a;
        if (i2 < iO) {
            length = iO - 1;
            if (i2 <= length) {
                while (!pe4.d(obj, this.b[length])) {
                    if (length != i2) {
                        length--;
                    }
                }
                i = this.a;
                return length - i;
            }
            return -1;
        }
        if (!isEmpty() && this.a >= iO) {
            do {
                iO--;
                objArr = this.b;
                if (-1 >= iO) {
                    objArr.getClass();
                    length = objArr.length - 1;
                    int i3 = this.a;
                    if (i3 <= length) {
                        while (!pe4.d(obj, this.b[length])) {
                            if (length != i3) {
                                length--;
                            }
                        }
                        i = this.a;
                    }
                }
                return length - i;
            } while (!pe4.d(obj, objArr[iO]));
            length = iO + this.b.length;
            i = this.a;
            return length - i;
        }
        return -1;
    }

    public final int o(int i) {
        Object[] objArr = this.b;
        return i >= objArr.length ? i - objArr.length : i;
    }

    public final void p() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        e(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int iO;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.b.length != 0) {
            int iO2 = o(this.c + this.a);
            int i = this.a;
            if (i < iO2) {
                iO = i;
                while (true) {
                    objArr = this.b;
                    if (i >= iO2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (collection.contains(obj)) {
                        z = true;
                    } else {
                        this.b[iO] = obj;
                        iO++;
                    }
                    i++;
                }
                x50.m0(objArr, iO, iO2);
            } else {
                int length = this.b.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.b;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (collection.contains(obj2)) {
                        z2 = true;
                    } else {
                        this.b[i2] = obj2;
                        i2++;
                    }
                    i++;
                }
                iO = o(i2);
                for (int i3 = 0; i3 < iO2; i3++) {
                    Object[] objArr3 = this.b;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (collection.contains(obj3)) {
                        z2 = true;
                    } else {
                        this.b[iO] = obj3;
                        iO = i(iO);
                    }
                }
                z = z2;
            }
            if (z) {
                p();
                this.c = k(iO - this.a);
            }
        }
        return z;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        p();
        Object[] objArr = this.b;
        int i = this.a;
        Object obj = objArr[i];
        objArr[i] = null;
        this.a = i(i);
        this.c = d() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        p();
        int iO = o((size() - 1) + this.a);
        Object[] objArr = this.b;
        Object obj = objArr[iO];
        objArr[iO] = null;
        this.c = d() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        zm5.g(i, i2, this.c);
        int i3 = i2 - i;
        if (i3 == 0) {
            return;
        }
        if (i3 == this.c) {
            clear();
            return;
        }
        if (i3 == 1) {
            e(i);
            return;
        }
        p();
        int i4 = this.c - i2;
        int i5 = this.a;
        if (i < i4) {
            int iO = o((i - 1) + i5);
            int iO2 = o(this.a + (i2 - 1));
            while (i > 0) {
                int i6 = iO + 1;
                int iMin = Math.min(i, Math.min(i6, iO2 + 1));
                Object[] objArr = this.b;
                int i7 = iO2 - iMin;
                int i8 = iO - iMin;
                x50.g0(i7 + 1, i8 + 1, i6, objArr, objArr);
                iO = k(i8);
                iO2 = k(i7);
                i -= iMin;
            }
            int iO3 = o(this.a + i3);
            l(this.a, iO3);
            this.a = iO3;
        } else {
            int iO4 = o(i5 + i2);
            int iO5 = o(this.a + i);
            int i9 = this.c;
            while (true) {
                i9 -= i2;
                if (i9 <= 0) {
                    break;
                }
                Object[] objArr2 = this.b;
                i2 = Math.min(i9, Math.min(objArr2.length - iO4, objArr2.length - iO5));
                Object[] objArr3 = this.b;
                int i10 = iO4 + i2;
                x50.g0(iO5, iO4, i10, objArr3, objArr3);
                iO4 = o(i10);
                iO5 = o(iO5 + i2);
            }
            int iO6 = o(this.c + this.a);
            l(k(iO6 - i3), iO6);
        }
        this.c -= i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int iO;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.b.length != 0) {
            int iO2 = o(this.c + this.a);
            int i = this.a;
            if (i < iO2) {
                iO = i;
                while (true) {
                    objArr = this.b;
                    if (i >= iO2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (collection.contains(obj)) {
                        this.b[iO] = obj;
                        iO++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                x50.m0(objArr, iO, iO2);
            } else {
                int length = this.b.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.b;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (collection.contains(obj2)) {
                        this.b[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                iO = o(i2);
                for (int i3 = 0; i3 < iO2; i3++) {
                    Object[] objArr3 = this.b;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (collection.contains(obj3)) {
                        this.b[iO] = obj3;
                        iO = i(iO);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                p();
                this.c = k(iO - this.a);
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        int iD = d();
        if (i < 0 || i >= iD) {
            a6.d(dj7.i("index: ", i, iD, ", size: "));
            return null;
        }
        int iO = o(this.a + i);
        Object[] objArr = this.b;
        Object obj2 = objArr[iO];
        objArr[iO] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        int i = this.c;
        if (length < i) {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), i);
            objNewInstance.getClass();
            objArr = (Object[]) objNewInstance;
        }
        int iO = o(this.c + this.a);
        int i2 = this.a;
        if (i2 < iO) {
            x50.i0(i2, iO, 2, this.b, objArr);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.b;
            x50.g0(0, this.a, objArr2.length, objArr2, objArr);
            Object[] objArr3 = this.b;
            x50.g0(objArr3.length - this.a, 0, iO, objArr3, objArr);
        }
        int i3 = this.c;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    public w40() {
        this.b = d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[d()]);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        if (collection.isEmpty()) {
            return false;
        }
        p();
        g(collection.size() + d());
        f(o(d() + this.a), collection);
        return true;
    }
}
