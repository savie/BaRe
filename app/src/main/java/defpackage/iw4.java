package defpackage;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iw4 extends AbstractMap implements Serializable {
    public static final xg p = new xg(8);
    public final boolean b;
    public hw4 c;
    public final hw4 f;
    public ew4 k;
    public gw4 n;
    public int d = 0;
    public int e = 0;
    public final Comparator a = p;

    public iw4(boolean z) {
        this.b = z;
        this.f = new hw4(z);
    }

    public final hw4 a(Object obj, boolean z) {
        int iCompareTo;
        hw4 hw4Var;
        hw4 hw4Var2 = this.c;
        xg xgVar = p;
        Comparator comparator = this.a;
        if (hw4Var2 != null) {
            Comparable comparable = comparator == xgVar ? (Comparable) obj : null;
            while (true) {
                Object obj2 = hw4Var2.f;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return hw4Var2;
                }
                hw4 hw4Var3 = iCompareTo < 0 ? hw4Var2.b : hw4Var2.c;
                if (hw4Var3 == null) {
                    break;
                }
                hw4Var2 = hw4Var3;
            }
        } else {
            iCompareTo = 0;
        }
        hw4 hw4Var4 = hw4Var2;
        if (!z) {
            return null;
        }
        hw4 hw4Var5 = this.f;
        if (hw4Var4 != null) {
            hw4Var = new hw4(this.b, hw4Var4, obj, hw4Var5, hw4Var5.e);
            if (iCompareTo < 0) {
                hw4Var4.b = hw4Var;
            } else {
                hw4Var4.c = hw4Var;
            }
            b(hw4Var4, true);
        } else {
            if (comparator == xgVar && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            hw4Var = new hw4(this.b, hw4Var4, obj, hw4Var5, hw4Var5.e);
            this.c = hw4Var;
        }
        this.d++;
        this.e++;
        return hw4Var;
    }

    public final void b(hw4 hw4Var, boolean z) {
        while (hw4Var != null) {
            hw4 hw4Var2 = hw4Var.b;
            hw4 hw4Var3 = hw4Var.c;
            int i = hw4Var2 != null ? hw4Var2.p : 0;
            int i2 = hw4Var3 != null ? hw4Var3.p : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                hw4 hw4Var4 = hw4Var3.b;
                hw4 hw4Var5 = hw4Var3.c;
                int i4 = (hw4Var4 != null ? hw4Var4.p : 0) - (hw4Var5 != null ? hw4Var5.p : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    f(hw4Var);
                } else {
                    g(hw4Var3);
                    f(hw4Var);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                hw4 hw4Var6 = hw4Var2.b;
                hw4 hw4Var7 = hw4Var2.c;
                int i5 = (hw4Var6 != null ? hw4Var6.p : 0) - (hw4Var7 != null ? hw4Var7.p : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    g(hw4Var);
                } else {
                    f(hw4Var2);
                    g(hw4Var);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                hw4Var.p = i + 1;
                if (z) {
                    return;
                }
            } else {
                hw4Var.p = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            hw4Var = hw4Var.a;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.c = null;
        this.d = 0;
        this.e++;
        hw4 hw4Var = this.f;
        hw4Var.e = hw4Var;
        hw4Var.d = hw4Var;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        hw4 hw4VarA = null;
        if (obj != null) {
            try {
                hw4VarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return hw4VarA != null;
    }

    public final void d(hw4 hw4Var, boolean z) {
        hw4 hw4Var2;
        hw4 hw4Var3;
        int i;
        if (z) {
            hw4 hw4Var4 = hw4Var.e;
            hw4Var4.d = hw4Var.d;
            hw4Var.d.e = hw4Var4;
        }
        hw4 hw4Var5 = hw4Var.b;
        hw4 hw4Var6 = hw4Var.c;
        hw4 hw4Var7 = hw4Var.a;
        int i2 = 0;
        if (hw4Var5 == null || hw4Var6 == null) {
            if (hw4Var5 != null) {
                e(hw4Var, hw4Var5);
                hw4Var.b = null;
            } else if (hw4Var6 != null) {
                e(hw4Var, hw4Var6);
                hw4Var.c = null;
            } else {
                e(hw4Var, null);
            }
            b(hw4Var7, false);
            this.d--;
            this.e++;
            return;
        }
        if (hw4Var5.p > hw4Var6.p) {
            hw4 hw4Var8 = hw4Var5.c;
            while (true) {
                hw4 hw4Var9 = hw4Var8;
                hw4Var3 = hw4Var5;
                hw4Var5 = hw4Var9;
                if (hw4Var5 == null) {
                    break;
                } else {
                    hw4Var8 = hw4Var5.c;
                }
            }
        } else {
            hw4 hw4Var10 = hw4Var6.b;
            while (true) {
                hw4Var2 = hw4Var6;
                hw4Var6 = hw4Var10;
                if (hw4Var6 == null) {
                    break;
                } else {
                    hw4Var10 = hw4Var6.b;
                }
            }
            hw4Var3 = hw4Var2;
        }
        d(hw4Var3, false);
        hw4 hw4Var11 = hw4Var.b;
        if (hw4Var11 != null) {
            i = hw4Var11.p;
            hw4Var3.b = hw4Var11;
            hw4Var11.a = hw4Var3;
            hw4Var.b = null;
        } else {
            i = 0;
        }
        hw4 hw4Var12 = hw4Var.c;
        if (hw4Var12 != null) {
            i2 = hw4Var12.p;
            hw4Var3.c = hw4Var12;
            hw4Var12.a = hw4Var3;
            hw4Var.c = null;
        }
        hw4Var3.p = Math.max(i, i2) + 1;
        e(hw4Var, hw4Var3);
    }

    public final void e(hw4 hw4Var, hw4 hw4Var2) {
        hw4 hw4Var3 = hw4Var.a;
        hw4Var.a = null;
        if (hw4Var2 != null) {
            hw4Var2.a = hw4Var3;
        }
        if (hw4Var3 == null) {
            this.c = hw4Var2;
        } else if (hw4Var3.b == hw4Var) {
            hw4Var3.b = hw4Var2;
        } else {
            hw4Var3.c = hw4Var2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        ew4 ew4Var = this.k;
        if (ew4Var != null) {
            return ew4Var;
        }
        ew4 ew4Var2 = new ew4(this);
        this.k = ew4Var2;
        return ew4Var2;
    }

    public final void f(hw4 hw4Var) {
        hw4 hw4Var2 = hw4Var.b;
        hw4 hw4Var3 = hw4Var.c;
        hw4 hw4Var4 = hw4Var3.b;
        hw4 hw4Var5 = hw4Var3.c;
        hw4Var.c = hw4Var4;
        if (hw4Var4 != null) {
            hw4Var4.a = hw4Var;
        }
        e(hw4Var, hw4Var3);
        hw4Var3.b = hw4Var;
        hw4Var.a = hw4Var3;
        int iMax = Math.max(hw4Var2 != null ? hw4Var2.p : 0, hw4Var4 != null ? hw4Var4.p : 0) + 1;
        hw4Var.p = iMax;
        hw4Var3.p = Math.max(iMax, hw4Var5 != null ? hw4Var5.p : 0) + 1;
    }

    public final void g(hw4 hw4Var) {
        hw4 hw4Var2 = hw4Var.b;
        hw4 hw4Var3 = hw4Var.c;
        hw4 hw4Var4 = hw4Var2.b;
        hw4 hw4Var5 = hw4Var2.c;
        hw4Var.b = hw4Var5;
        if (hw4Var5 != null) {
            hw4Var5.a = hw4Var;
        }
        e(hw4Var, hw4Var2);
        hw4Var2.c = hw4Var;
        hw4Var.a = hw4Var2;
        int iMax = Math.max(hw4Var3 != null ? hw4Var3.p : 0, hw4Var5 != null ? hw4Var5.p : 0) + 1;
        hw4Var.p = iMax;
        hw4Var2.p = Math.max(iMax, hw4Var4 != null ? hw4Var4.p : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        hw4 hw4VarA;
        if (obj != null) {
            try {
                hw4VarA = a(obj, false);
            } catch (ClassCastException unused) {
                hw4VarA = null;
            }
        } else {
            hw4VarA = null;
        }
        if (hw4VarA != null) {
            return hw4VarA.n;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        gw4 gw4Var = this.n;
        if (gw4Var != null) {
            return gw4Var;
        }
        gw4 gw4Var2 = new gw4(this);
        this.n = gw4Var2;
        return gw4Var2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            f6.n("key == null");
            return null;
        }
        if (obj2 == null && !this.b) {
            f6.n("value == null");
            return null;
        }
        hw4 hw4VarA = a(obj, true);
        Object obj3 = hw4VarA.n;
        hw4VarA.n = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        hw4 hw4VarA;
        if (obj != null) {
            try {
                hw4VarA = a(obj, false);
            } catch (ClassCastException unused) {
                hw4VarA = null;
            }
        } else {
            hw4VarA = null;
        }
        if (hw4VarA != null) {
            d(hw4VarA, true);
        }
        if (hw4VarA != null) {
            return hw4VarA.n;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d;
    }
}
