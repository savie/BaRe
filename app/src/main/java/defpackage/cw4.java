package defpackage;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cw4 extends AbstractMap implements Serializable {
    public static final cl7 p = new cl7(8);
    public e50 k;
    public zv4 n;
    public int d = 0;
    public int e = 0;
    public final Comparator a = p;
    public final bw4 c = new bw4();
    public bw4[] b = new bw4[16];
    public int f = 12;

    public final bw4 a(Object obj, boolean z) {
        int iCompareTo;
        bw4 bw4Var;
        bw4 bw4Var2;
        bw4 bw4Var3;
        bw4 bw4Var4;
        bw4 bw4Var5;
        bw4 bw4Var6;
        bw4[] bw4VarArr = this.b;
        int iHashCode = obj.hashCode();
        int i = iHashCode ^ ((iHashCode >>> 20) ^ (iHashCode >>> 12));
        int i2 = ((i >>> 7) ^ i) ^ (i >>> 4);
        int i3 = 1;
        int length = i2 & (bw4VarArr.length - 1);
        bw4 bw4Var7 = bw4VarArr[length];
        cl7 cl7Var = p;
        bw4 bw4Var8 = null;
        Comparator comparator = this.a;
        if (bw4Var7 != null) {
            Comparable comparable = comparator == cl7Var ? (Comparable) obj : null;
            while (true) {
                Object obj2 = bw4Var7.f;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return bw4Var7;
                }
                bw4 bw4Var9 = iCompareTo < 0 ? bw4Var7.b : bw4Var7.c;
                if (bw4Var9 == null) {
                    break;
                }
                bw4Var7 = bw4Var9;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z) {
            return null;
        }
        bw4 bw4Var10 = this.c;
        if (bw4Var7 != null) {
            bw4 bw4Var11 = bw4Var7;
            bw4Var = new bw4(bw4Var11, obj, i2, bw4Var10, bw4Var10.e);
            if (iCompareTo < 0) {
                bw4Var11.b = bw4Var;
            } else {
                bw4Var11.c = bw4Var;
            }
            b(bw4Var11, true);
        } else {
            if (comparator == cl7Var && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            bw4Var = new bw4(bw4Var7, obj, i2, bw4Var10, bw4Var10.e);
            bw4VarArr[length] = bw4Var;
        }
        int i4 = this.d;
        this.d = i4 + 1;
        if (i4 > this.f) {
            bw4[] bw4VarArr2 = this.b;
            int length2 = bw4VarArr2.length;
            int i5 = length2 * 2;
            bw4[] bw4VarArr3 = new bw4[i5];
            ru3 ru3Var = new ru3(i3);
            ru3 ru3Var2 = new ru3(i3);
            int i6 = 0;
            while (i6 < length2) {
                bw4 bw4Var12 = bw4VarArr2[i6];
                if (bw4Var12 == null) {
                    i3 = i3;
                    bw4Var3 = bw4Var8;
                } else {
                    bw4 bw4Var13 = bw4Var8;
                    for (bw4 bw4Var14 = bw4Var12; bw4Var14 != null; bw4Var14 = bw4Var14.b) {
                        bw4Var14.a = bw4Var13;
                        bw4Var13 = bw4Var14;
                    }
                    int i7 = 0;
                    int i8 = 0;
                    while (true) {
                        if (bw4Var13 != null) {
                            bw4 bw4Var15 = bw4Var13.a;
                            bw4Var13.a = bw4Var8;
                            bw4 bw4Var16 = bw4Var13.c;
                            while (true) {
                                bw4 bw4Var17 = bw4Var16;
                                bw4Var2 = bw4Var15;
                                bw4Var15 = bw4Var17;
                                if (bw4Var15 == null) {
                                    break;
                                }
                                bw4Var15.a = bw4Var2;
                                bw4Var16 = bw4Var15.b;
                            }
                        } else {
                            bw4 bw4Var18 = bw4Var13;
                            bw4Var13 = bw4Var8;
                            bw4Var2 = bw4Var18;
                        }
                        if (bw4Var13 == null) {
                            break;
                        }
                        if ((bw4Var13.k & length2) == 0) {
                            i7++;
                        } else {
                            i8++;
                        }
                        bw4Var13 = bw4Var2;
                        i3 = i3;
                        bw4Var8 = null;
                    }
                    ru3Var.b = ((Integer.highestOneBit(i7) * 2) - 1) - i7;
                    ru3Var.d = 0;
                    ru3Var.c = 0;
                    bw4 bw4Var19 = null;
                    ru3Var.e = null;
                    ru3Var2.b = ((Integer.highestOneBit(i8) * 2) - 1) - i8;
                    ru3Var2.d = 0;
                    ru3Var2.c = 0;
                    ru3Var2.e = null;
                    bw4 bw4Var20 = null;
                    while (bw4Var12 != null) {
                        bw4Var12.a = bw4Var20;
                        bw4 bw4Var21 = bw4Var12;
                        bw4Var12 = bw4Var12.b;
                        bw4Var20 = bw4Var21;
                    }
                    while (true) {
                        if (bw4Var20 != null) {
                            bw4 bw4Var22 = bw4Var20.a;
                            bw4Var20.a = bw4Var19;
                            bw4 bw4Var23 = bw4Var20.c;
                            while (true) {
                                bw4Var6 = bw4Var22;
                                bw4Var22 = bw4Var23;
                                if (bw4Var22 == null) {
                                    break;
                                }
                                bw4Var22.a = bw4Var6;
                                bw4Var23 = bw4Var22.b;
                            }
                            bw4 bw4Var24 = bw4Var20;
                            bw4Var20 = bw4Var6;
                            bw4Var19 = bw4Var24;
                        }
                        if (bw4Var19 == null) {
                            break;
                        }
                        if ((bw4Var19.k & length2) == 0) {
                            ru3Var.a(bw4Var19);
                        } else {
                            ru3Var2.a(bw4Var19);
                        }
                        bw4Var19 = null;
                    }
                    if (i7 > 0) {
                        bw4Var4 = (bw4) ru3Var.e;
                        if (bw4Var4.a != null) {
                            g84.c();
                            return null;
                        }
                        bw4Var3 = null;
                    } else {
                        bw4Var3 = null;
                        bw4Var4 = null;
                    }
                    bw4VarArr3[i6] = bw4Var4;
                    int i9 = i6 + length2;
                    if (i8 > 0) {
                        bw4Var5 = (bw4) ru3Var2.e;
                        if (bw4Var5.a != null) {
                            g84.c();
                            return bw4Var3;
                        }
                    } else {
                        bw4Var5 = bw4Var3;
                    }
                    bw4VarArr3[i9] = bw4Var5;
                }
                i6++;
                i3 = i3;
                bw4Var8 = bw4Var3;
            }
            this.b = bw4VarArr3;
            this.f = (i5 / 4) + (i5 / 2);
        }
        this.e++;
        return bw4Var;
    }

    public final void b(bw4 bw4Var, boolean z) {
        while (bw4Var != null) {
            bw4 bw4Var2 = bw4Var.b;
            bw4 bw4Var3 = bw4Var.c;
            int i = bw4Var2 != null ? bw4Var2.p : 0;
            int i2 = bw4Var3 != null ? bw4Var3.p : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                bw4 bw4Var4 = bw4Var3.b;
                bw4 bw4Var5 = bw4Var3.c;
                int i4 = (bw4Var4 != null ? bw4Var4.p : 0) - (bw4Var5 != null ? bw4Var5.p : 0);
                if (i4 != -1 && (i4 != 0 || z)) {
                    g(bw4Var3);
                }
                f(bw4Var);
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                bw4 bw4Var6 = bw4Var2.b;
                bw4 bw4Var7 = bw4Var2.c;
                int i5 = (bw4Var6 != null ? bw4Var6.p : 0) - (bw4Var7 != null ? bw4Var7.p : 0);
                if (i5 != 1 && (i5 != 0 || z)) {
                    f(bw4Var2);
                }
                g(bw4Var);
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                bw4Var.p = i + 1;
                if (z) {
                    return;
                }
            } else {
                bw4Var.p = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            bw4Var = bw4Var.a;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Arrays.fill(this.b, (Object) null);
        this.d = 0;
        this.e++;
        bw4 bw4Var = this.c;
        bw4 bw4Var2 = bw4Var.d;
        while (bw4Var2 != bw4Var) {
            bw4 bw4Var3 = bw4Var2.d;
            bw4Var2.e = null;
            bw4Var2.d = null;
            bw4Var2 = bw4Var3;
        }
        bw4Var.e = bw4Var;
        bw4Var.d = bw4Var;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        bw4 bw4VarA = null;
        if (obj != null) {
            try {
                bw4VarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return bw4VarA != null;
    }

    public final void d(bw4 bw4Var, boolean z) {
        bw4 bw4Var2;
        bw4 bw4Var3;
        int i;
        if (z) {
            bw4 bw4Var4 = bw4Var.e;
            bw4Var4.d = bw4Var.d;
            bw4Var.d.e = bw4Var4;
            bw4Var.e = null;
            bw4Var.d = null;
        }
        bw4 bw4Var5 = bw4Var.b;
        bw4 bw4Var6 = bw4Var.c;
        bw4 bw4Var7 = bw4Var.a;
        int i2 = 0;
        if (bw4Var5 == null || bw4Var6 == null) {
            if (bw4Var5 != null) {
                e(bw4Var, bw4Var5);
                bw4Var.b = null;
            } else if (bw4Var6 != null) {
                e(bw4Var, bw4Var6);
                bw4Var.c = null;
            } else {
                e(bw4Var, null);
            }
            b(bw4Var7, false);
            this.d--;
            this.e++;
            return;
        }
        if (bw4Var5.p > bw4Var6.p) {
            bw4 bw4Var8 = bw4Var5.c;
            while (true) {
                bw4 bw4Var9 = bw4Var8;
                bw4Var3 = bw4Var5;
                bw4Var5 = bw4Var9;
                if (bw4Var5 == null) {
                    break;
                } else {
                    bw4Var8 = bw4Var5.c;
                }
            }
        } else {
            bw4 bw4Var10 = bw4Var6.b;
            while (true) {
                bw4Var2 = bw4Var6;
                bw4Var6 = bw4Var10;
                if (bw4Var6 == null) {
                    break;
                } else {
                    bw4Var10 = bw4Var6.b;
                }
            }
            bw4Var3 = bw4Var2;
        }
        d(bw4Var3, false);
        bw4 bw4Var11 = bw4Var.b;
        if (bw4Var11 != null) {
            i = bw4Var11.p;
            bw4Var3.b = bw4Var11;
            bw4Var11.a = bw4Var3;
            bw4Var.b = null;
        } else {
            i = 0;
        }
        bw4 bw4Var12 = bw4Var.c;
        if (bw4Var12 != null) {
            i2 = bw4Var12.p;
            bw4Var3.c = bw4Var12;
            bw4Var12.a = bw4Var3;
            bw4Var.c = null;
        }
        bw4Var3.p = Math.max(i, i2) + 1;
        e(bw4Var, bw4Var3);
    }

    public final void e(bw4 bw4Var, bw4 bw4Var2) {
        bw4 bw4Var3 = bw4Var.a;
        bw4Var.a = null;
        if (bw4Var2 != null) {
            bw4Var2.a = bw4Var3;
        }
        if (bw4Var3 == null) {
            int i = bw4Var.k;
            bw4[] bw4VarArr = this.b;
            bw4VarArr[i & (bw4VarArr.length - 1)] = bw4Var2;
        } else if (bw4Var3.b == bw4Var) {
            bw4Var3.b = bw4Var2;
        } else {
            bw4Var3.c = bw4Var2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        e50 e50Var = this.k;
        if (e50Var != null) {
            return e50Var;
        }
        e50 e50Var2 = new e50(1, this);
        this.k = e50Var2;
        return e50Var2;
    }

    public final void f(bw4 bw4Var) {
        bw4 bw4Var2 = bw4Var.b;
        bw4 bw4Var3 = bw4Var.c;
        bw4 bw4Var4 = bw4Var3.b;
        bw4 bw4Var5 = bw4Var3.c;
        bw4Var.c = bw4Var4;
        if (bw4Var4 != null) {
            bw4Var4.a = bw4Var;
        }
        e(bw4Var, bw4Var3);
        bw4Var3.b = bw4Var;
        bw4Var.a = bw4Var3;
        int iMax = Math.max(bw4Var2 != null ? bw4Var2.p : 0, bw4Var4 != null ? bw4Var4.p : 0) + 1;
        bw4Var.p = iMax;
        bw4Var3.p = Math.max(iMax, bw4Var5 != null ? bw4Var5.p : 0) + 1;
    }

    public final void g(bw4 bw4Var) {
        bw4 bw4Var2 = bw4Var.b;
        bw4 bw4Var3 = bw4Var.c;
        bw4 bw4Var4 = bw4Var2.b;
        bw4 bw4Var5 = bw4Var2.c;
        bw4Var.b = bw4Var5;
        if (bw4Var5 != null) {
            bw4Var5.a = bw4Var;
        }
        e(bw4Var, bw4Var2);
        bw4Var2.c = bw4Var;
        bw4Var.a = bw4Var2;
        int iMax = Math.max(bw4Var3 != null ? bw4Var3.p : 0, bw4Var5 != null ? bw4Var5.p : 0) + 1;
        bw4Var.p = iMax;
        bw4Var2.p = Math.max(iMax, bw4Var4 != null ? bw4Var4.p : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        bw4 bw4VarA;
        if (obj != null) {
            try {
                bw4VarA = a(obj, false);
            } catch (ClassCastException unused) {
                bw4VarA = null;
            }
        } else {
            bw4VarA = null;
        }
        if (bw4VarA != null) {
            return bw4VarA.n;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        zv4 zv4Var = this.n;
        if (zv4Var != null) {
            return zv4Var;
        }
        zv4 zv4Var2 = new zv4(this);
        this.n = zv4Var2;
        return zv4Var2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            f6.n("key == null");
            return null;
        }
        bw4 bw4VarA = a(obj, true);
        Object obj3 = bw4VarA.n;
        bw4VarA.n = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        bw4 bw4VarA;
        if (obj != null) {
            try {
                bw4VarA = a(obj, false);
            } catch (ClassCastException unused) {
                bw4VarA = null;
            }
        } else {
            bw4VarA = null;
        }
        if (bw4VarA != null) {
            d(bw4VarA, true);
        }
        if (bw4VarA != null) {
            return bw4VarA.n;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d;
    }
}
