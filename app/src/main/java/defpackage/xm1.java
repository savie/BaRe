package defpackage;

import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xm1 extends AbstractSet implements Serializable {
    public transient Object a;
    public transient int[] b;
    public transient Object[] c;
    public transient int d;
    public transient int e;

    public static xm1 c(int i) {
        xm1 xm1Var = new xm1();
        if (i >= 0) {
            xm1Var.d = ms8.s(i, 1);
            return xm1Var;
        }
        c6.f("Expected size must be >= 0");
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int iMin;
        char c = 31;
        if (e()) {
            sz8.j("Arrays already allocated", e());
            int i = this.d;
            int iM = ji8.M(i);
            this.a = ji8.g(iM);
            this.d = ji8.B(this.d, 32 - Integer.numberOfLeadingZeros(iM - 1), 31);
            this.b = new int[i];
            this.c = new Object[i];
        }
        Set setD = d();
        if (setD != null) {
            return setD.add(obj);
        }
        int[] iArrG = g();
        Object[] objArrF = f();
        int i2 = this.e;
        int i3 = i2 + 1;
        int iH = cy0.H(obj);
        int i4 = (1 << (this.d & 31)) - 1;
        int i5 = iH & i4;
        Object obj2 = this.a;
        Objects.requireNonNull(obj2);
        int iK = ji8.K(i5, obj2);
        if (iK != 0) {
            int i6 = ~i4;
            int i7 = iH & i6;
            int i8 = 0;
            while (true) {
                int i9 = iK - 1;
                int i10 = iArrG[i9];
                char c2 = c;
                if ((i10 & i6) == i7 && Objects.equals(obj, objArrF[i9])) {
                    return false;
                }
                int i11 = i10 & i4;
                i8++;
                if (i11 == 0) {
                    if (i8 < 9) {
                        if (i3 <= i4) {
                            iArrG[i9] = ji8.B(i10, i3, i4);
                            break;
                        }
                        i4 = i(i4, ji8.C(i4), iH, i2);
                        break;
                    }
                    LinkedHashSet linkedHashSet = new LinkedHashSet(1 << (this.d & 31), 1.0f);
                    int i12 = isEmpty() ? -1 : 0;
                    while (i12 >= 0) {
                        linkedHashSet.add(f()[i12]);
                        i12++;
                        if (i12 >= this.e) {
                            i12 = -1;
                        }
                    }
                    this.a = linkedHashSet;
                    this.b = null;
                    this.c = null;
                    this.d += 32;
                    return linkedHashSet.add(obj);
                }
                iK = i11;
                c = c2;
            }
        } else if (i3 > i4) {
            i4 = i(i4, ji8.C(i4), iH, i2);
        } else {
            Object obj3 = this.a;
            Objects.requireNonNull(obj3);
            ji8.L(obj3, i5, i3);
        }
        int length = g().length;
        if (i3 > length && (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.b = Arrays.copyOf(g(), iMin);
            this.c = Arrays.copyOf(f(), iMin);
        }
        g()[i2] = ji8.B(iH, 0, i4);
        f()[i2] = obj;
        this.e = i3;
        this.d += 32;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        if (e()) {
            return;
        }
        this.d += 32;
        Set setD = d();
        if (setD != null) {
            this.d = ms8.s(size(), 3);
            setD.clear();
            this.a = null;
            this.e = 0;
            return;
        }
        Arrays.fill(f(), 0, this.e, (Object) null);
        Object obj = this.a;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(g(), 0, this.e, 0);
        this.e = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (e()) {
            return false;
        }
        Set setD = d();
        if (setD != null) {
            return setD.contains(obj);
        }
        int iH = cy0.H(obj);
        int i = (1 << (this.d & 31)) - 1;
        Object obj2 = this.a;
        Objects.requireNonNull(obj2);
        int iK = ji8.K(iH & i, obj2);
        if (iK == 0) {
            return false;
        }
        int i2 = ~i;
        int i3 = iH & i2;
        do {
            int i4 = iK - 1;
            int i5 = g()[i4];
            if ((i5 & i2) == i3 && Objects.equals(obj, f()[i4])) {
                return true;
            }
            iK = i5 & i;
        } while (iK != 0);
        return false;
    }

    public final Set d() {
        Object obj = this.a;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    public final boolean e() {
        return this.a == null;
    }

    public final Object[] f() {
        Object[] objArr = this.c;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final int[] g() {
        int[] iArr = this.b;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final int i(int i, int i2, int i3, int i4) {
        Object objG = ji8.g(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            ji8.L(objG, i3 & i5, i4 + 1);
        }
        Object obj = this.a;
        Objects.requireNonNull(obj);
        int[] iArrG = g();
        for (int i6 = 0; i6 <= i; i6++) {
            int iK = ji8.K(i6, obj);
            while (iK != 0) {
                int i7 = iK - 1;
                int i8 = iArrG[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int iK2 = ji8.K(i10, objG);
                ji8.L(objG, i10, iK);
                iArrG[i7] = ji8.B(i9, iK2, i5);
                iK = i8 & i;
            }
        }
        this.a = objG;
        this.d = ji8.B(this.d, 32 - Integer.numberOfLeadingZeros(i5), 31);
        return i5;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        Set setD = d();
        return setD != null ? setD.iterator() : new wm1(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i;
        int i2;
        if (!e()) {
            Set setD = d();
            if (setD != null) {
                return setD.remove(obj);
            }
            int i3 = (1 << (this.d & 31)) - 1;
            Object obj2 = this.a;
            Objects.requireNonNull(obj2);
            int iE = ji8.E(obj, null, i3, obj2, g(), f(), null);
            if (iE != -1) {
                Object obj3 = this.a;
                Objects.requireNonNull(obj3);
                int[] iArrG = g();
                Object[] objArrF = f();
                int size = size();
                int i4 = size - 1;
                if (iE < i4) {
                    Object obj4 = objArrF[i4];
                    objArrF[iE] = obj4;
                    objArrF[i4] = null;
                    iArrG[iE] = iArrG[i4];
                    iArrG[i4] = 0;
                    int iH = cy0.H(obj4) & i3;
                    int iK = ji8.K(iH, obj3);
                    if (iK == size) {
                        ji8.L(obj3, iH, iE + 1);
                    } else {
                        while (true) {
                            i = iK - 1;
                            i2 = iArrG[i];
                            int i5 = i2 & i3;
                            if (i5 == size) {
                                break;
                            }
                            iK = i5;
                        }
                        iArrG[i] = ji8.B(i2, iE + 1, i3);
                    }
                } else {
                    objArrF[iE] = null;
                    iArrG[iE] = 0;
                }
                this.e--;
                this.d += 32;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Set setD = d();
        return setD != null ? setD.size() : this.e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        if (e()) {
            if (objArr.length > 0) {
                objArr[0] = null;
            }
            return objArr;
        }
        Set setD = d();
        if (setD != null) {
            return setD.toArray(objArr);
        }
        Object[] objArrF = f();
        int i = this.e;
        sz8.i(0, i, objArrF.length);
        if (objArr.length < i) {
            if (objArr.length != 0) {
                objArr = Arrays.copyOf(objArr, 0);
            }
            objArr = Arrays.copyOf(objArr, i);
        } else if (objArr.length > i) {
            objArr[i] = null;
        }
        System.arraycopy(objArrF, 0, objArr, 0, i);
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray() {
        if (e()) {
            return new Object[0];
        }
        Set setD = d();
        return setD != null ? setD.toArray() : Arrays.copyOf(f(), this.e);
    }
}
