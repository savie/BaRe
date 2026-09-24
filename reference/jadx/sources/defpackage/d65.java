package defpackage;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d65 implements Map, Serializable, bo4 {
    public static final d65 y;
    public Object[] a;
    public Object[] b;
    public int[] c;
    public int[] d;
    public int e;
    public int f;
    public int k;
    public int n;
    public int p;
    public f65 q;
    public g65 r;
    public e65 t;
    public boolean x;

    static {
        d65 d65Var = new d65(0);
        d65Var.x = true;
        y = d65Var;
    }

    public d65(int i) {
        if (i < 0) {
            c6.f("capacity must be non-negative.");
            throw null;
        }
        Object[] objArr = new Object[i];
        int[] iArr = new int[i];
        int iHighestOneBit = Integer.highestOneBit((i < 1 ? 1 : i) * 3);
        this.a = objArr;
        this.b = null;
        this.c = iArr;
        this.d = new int[iHighestOneBit];
        this.e = 2;
        this.f = 0;
        this.k = Integer.numberOfLeadingZeros(iHighestOneBit) + 1;
    }

    public final int a(Object obj) {
        d();
        while (true) {
            int iJ = j(obj);
            int i = this.e * 2;
            int length = this.d.length / 2;
            if (i > length) {
                i = length;
            }
            int i2 = 0;
            while (true) {
                int[] iArr = this.d;
                int i3 = iArr[iJ];
                if (i3 <= 0) {
                    int i4 = this.f;
                    Object[] objArr = this.a;
                    if (i4 >= objArr.length) {
                        g(1);
                        break;
                    }
                    int i5 = i4 + 1;
                    this.f = i5;
                    objArr[i4] = obj;
                    this.c[i4] = iJ;
                    iArr[iJ] = i5;
                    this.p++;
                    this.n++;
                    if (i2 > this.e) {
                        this.e = i2;
                    }
                    return i4;
                }
                if (pe4.d(this.a[i3 - 1], obj)) {
                    return -i3;
                }
                i2++;
                if (i2 > i) {
                    k(this.d.length * 2);
                    break;
                }
                iJ = iJ == 0 ? this.d.length - 1 : iJ - 1;
            }
        }
    }

    public final d65 b() {
        d();
        this.x = true;
        if (this.p > 0) {
            return this;
        }
        d65 d65Var = y;
        d65Var.getClass();
        return d65Var;
    }

    @Override // java.util.Map
    public final void clear() {
        d();
        int i = this.f - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.c;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.d[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        g67.B(this.a, 0, this.f);
        Object[] objArr = this.b;
        if (objArr != null) {
            g67.B(objArr, 0, this.f);
        }
        this.p = 0;
        this.f = 0;
        this.n++;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return h(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return i(obj) >= 0;
    }

    public final void d() {
        if (this.x) {
            x5.e();
        }
    }

    public final void e(boolean z) {
        int i;
        Object[] objArr = this.b;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.f;
            if (i2 >= i) {
                break;
            }
            int[] iArr = this.c;
            int i4 = iArr[i2];
            if (i4 >= 0) {
                Object[] objArr2 = this.a;
                objArr2[i3] = objArr2[i2];
                if (objArr != null) {
                    objArr[i3] = objArr[i2];
                }
                if (z) {
                    iArr[i3] = i4;
                    this.d[i4] = i3 + 1;
                }
                i3++;
            }
            i2++;
        }
        g67.B(this.a, i3, i);
        if (objArr != null) {
            g67.B(objArr, i3, this.f);
        }
        this.f = i3;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        e65 e65Var = this.t;
        if (e65Var != null) {
            return e65Var;
        }
        e65 e65Var2 = new e65(this);
        this.t = e65Var2;
        return e65Var2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        return this.p == map.size() && f(map.entrySet());
    }

    public final boolean f(Collection collection) {
        boolean zD;
        collection.getClass();
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    Map.Entry entry = (Map.Entry) obj;
                    int iH = h(entry.getKey());
                    if (iH < 0) {
                        zD = false;
                    } else {
                        Object[] objArr = this.b;
                        objArr.getClass();
                        zD = pe4.d(objArr[iH], entry.getValue());
                    }
                    if (!zD) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final void g(int i) {
        Object[] objArr = this.a;
        int length = objArr.length;
        int i2 = this.f;
        int i3 = length - i2;
        int i4 = i2 - this.p;
        if (i3 < i && i3 + i4 >= i && i4 >= objArr.length / 4) {
            e(true);
            return;
        }
        int i5 = i2 + i;
        if (i5 < 0) {
            throw new OutOfMemoryError();
        }
        if (i5 > objArr.length) {
            int length2 = objArr.length;
            int i6 = length2 + (length2 >> 1);
            if (i6 - i5 < 0) {
                i6 = i5;
            }
            if (i6 - 2147483639 > 0) {
                i6 = i5 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            this.a = Arrays.copyOf(objArr, i6);
            Object[] objArr2 = this.b;
            this.b = objArr2 != null ? Arrays.copyOf(objArr2, i6) : null;
            this.c = Arrays.copyOf(this.c, i6);
            int iHighestOneBit = Integer.highestOneBit((i6 >= 1 ? i6 : 1) * 3);
            if (iHighestOneBit > this.d.length) {
                k(iHighestOneBit);
            }
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int iH = h(obj);
        if (iH < 0) {
            return null;
        }
        Object[] objArr = this.b;
        objArr.getClass();
        return objArr[iH];
    }

    public final int h(Object obj) {
        int iJ = j(obj);
        int i = this.e;
        while (true) {
            int i2 = this.d[iJ];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (pe4.d(this.a[i3], obj)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            iJ = iJ == 0 ? this.d.length - 1 : iJ - 1;
        }
    }

    @Override // java.util.Map
    public final int hashCode() {
        y55 y55Var = new y55(this);
        int i = 0;
        while (y55Var.hasNext()) {
            int i2 = y55Var.a;
            d65 d65Var = (d65) y55Var.d;
            if (i2 >= d65Var.f) {
                m0.d();
                return 0;
            }
            y55Var.a = i2 + 1;
            y55Var.b = i2;
            Object obj = d65Var.a[i2];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = d65Var.b;
            objArr.getClass();
            Object obj2 = objArr[y55Var.b];
            int iHashCode2 = obj2 != null ? obj2.hashCode() : 0;
            y55Var.f();
            i += iHashCode ^ iHashCode2;
        }
        return i;
    }

    public final int i(Object obj) {
        int i = this.f;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.c[i] >= 0) {
                Object[] objArr = this.b;
                objArr.getClass();
                if (pe4.d(objArr[i], obj)) {
                    return i;
                }
            }
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.p == 0;
    }

    public final int j(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.k;
    }

    public final void k(int i) {
        int[] iArr;
        this.n++;
        int i2 = 0;
        if (this.f > this.p) {
            e(false);
        }
        this.d = new int[i];
        this.k = Integer.numberOfLeadingZeros(i) + 1;
        while (i2 < this.f) {
            int i3 = i2 + 1;
            int iJ = j(this.a[i2]);
            int i4 = this.e;
            while (true) {
                iArr = this.d;
                if (iArr[iJ] == 0) {
                    break;
                }
                i4--;
                if (i4 < 0) {
                    l0.e("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
                    return;
                }
                iJ = iJ == 0 ? iArr.length - 1 : iJ - 1;
            }
            iArr[iJ] = i3;
            this.c[i2] = iJ;
            i2 = i3;
        }
    }

    @Override // java.util.Map
    public final Set keySet() {
        f65 f65Var = this.q;
        if (f65Var != null) {
            return f65Var;
        }
        f65 f65Var2 = new f65(this);
        this.q = f65Var2;
        return f65Var2;
    }

    public final void l(int i) {
        Object[] objArr = this.a;
        objArr.getClass();
        objArr[i] = null;
        Object[] objArr2 = this.b;
        if (objArr2 != null) {
            objArr2[i] = null;
        }
        int length = this.c[i];
        int i2 = this.e * 2;
        int length2 = this.d.length / 2;
        if (i2 > length2) {
            i2 = length2;
        }
        int i3 = i2;
        int i4 = 0;
        int i5 = length;
        do {
            length = length == 0 ? this.d.length - 1 : length - 1;
            i4++;
            int i6 = this.e;
            int[] iArr = this.d;
            if (i4 > i6) {
                iArr[i5] = 0;
            } else {
                int i7 = iArr[length];
                if (i7 == 0) {
                    iArr[i5] = 0;
                } else {
                    if (i7 < 0) {
                        iArr[i5] = -1;
                    } else {
                        int i8 = i7 - 1;
                        int iJ = j(this.a[i8]) - length;
                        int[] iArr2 = this.d;
                        if ((iJ & (iArr2.length - 1)) >= i4) {
                            iArr2[i5] = i7;
                            this.c[i8] = i5;
                        }
                        i3--;
                    }
                    i5 = length;
                    i4 = 0;
                    i3--;
                }
            }
            this.c[i] = -1;
            this.p--;
            this.n++;
        } while (i3 >= 0);
        this.d[i5] = -1;
        this.c[i] = -1;
        this.p--;
        this.n++;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        d();
        int iA = a(obj);
        Object[] objArr = this.b;
        if (objArr == null) {
            int length = this.a.length;
            if (length < 0) {
                c6.f("capacity must be non-negative.");
                return null;
            }
            objArr = new Object[length];
            this.b = objArr;
        }
        if (iA >= 0) {
            objArr[iA] = obj2;
            return null;
        }
        int i = (-iA) - 1;
        Object obj3 = objArr[i];
        objArr[i] = obj2;
        return obj3;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        map.getClass();
        d();
        Set<Map.Entry> setEntrySet = map.entrySet();
        if (setEntrySet.isEmpty()) {
            return;
        }
        g(setEntrySet.size());
        for (Map.Entry entry : setEntrySet) {
            int iA = a(entry.getKey());
            Object[] objArr = this.b;
            if (objArr == null) {
                int length = this.a.length;
                if (length < 0) {
                    c6.f("capacity must be non-negative.");
                    return;
                } else {
                    objArr = new Object[length];
                    this.b = objArr;
                }
            }
            if (iA >= 0) {
                objArr[iA] = entry.getValue();
            } else {
                int i = (-iA) - 1;
                if (!pe4.d(entry.getValue(), objArr[i])) {
                    objArr[i] = entry.getValue();
                }
            }
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        d();
        int iH = h(obj);
        if (iH < 0) {
            return null;
        }
        Object[] objArr = this.b;
        objArr.getClass();
        Object obj2 = objArr[iH];
        l(iH);
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.p;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.p * 3) + 2);
        sb.append("{");
        y55 y55Var = new y55(this);
        int i = 0;
        while (y55Var.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            int i2 = y55Var.a;
            d65 d65Var = (d65) y55Var.d;
            if (i2 >= d65Var.f) {
                m0.d();
                return null;
            }
            y55Var.a = i2 + 1;
            y55Var.b = i2;
            Object obj = d65Var.a[i2];
            if (obj == d65Var) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = d65Var.b;
            objArr.getClass();
            Object obj2 = objArr[y55Var.b];
            if (obj2 == d65Var) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            y55Var.f();
            i++;
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        g65 g65Var = this.r;
        if (g65Var != null) {
            return g65Var;
        }
        g65 g65Var2 = new g65(this);
        this.r = g65Var2;
        return g65Var2;
    }

    public d65() {
        this(8);
    }
}
