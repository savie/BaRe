package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class x50 extends ly8 {
    public static Set A0(Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return sv2.a;
        }
        if (length == 1) {
            return sz8.Y(objArr[0]);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(x65.q0(objArr.length));
        w0(objArr, linkedHashSet);
        return linkedHashSet;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0010 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x0012 A[RETURN] */
    public static boolean d0(char[] cArr, char c) {
        int length = cArr.length;
        int i = 0;
        while (i < length) {
            if (c == cArr[i]) {
                if (i >= 0) {
                    return true;
                }
                return false;
            }
            i++;
        }
        i = -1;
        if (i >= 0) {
            return true;
        }
        return false;
    }

    public static boolean e0(Object[] objArr, Object obj) {
        objArr.getClass();
        return r0(objArr, obj) >= 0;
    }

    public static void f0(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        iArr.getClass();
        iArr2.getClass();
        System.arraycopy(iArr, i2, iArr2, i, i3 - i2);
    }

    public static void g0(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        objArr.getClass();
        objArr2.getClass();
        System.arraycopy(objArr, i2, objArr2, i, i3 - i2);
    }

    public static void h0(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        bArr.getClass();
        bArr2.getClass();
        System.arraycopy(bArr, i2, bArr2, i, i3 - i2);
    }

    public static /* synthetic */ void i0(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = objArr.length;
        }
        g0(0, i, i2, objArr, objArr2);
    }

    public static /* synthetic */ void j0(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        h0(bArr, i, i2, bArr2, i3);
    }

    public static byte[] k0(byte[] bArr, int i, int i2) {
        bArr.getClass();
        ly8.n(i2, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i, i2);
        bArrCopyOfRange.getClass();
        return bArrCopyOfRange;
    }

    public static Object[] l0(Object[] objArr, int i, int i2) {
        objArr.getClass();
        ly8.n(i2, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i, i2);
        objArrCopyOfRange.getClass();
        return objArrCopyOfRange;
    }

    public static void m0(Object[] objArr, int i, int i2) {
        objArr.getClass();
        Arrays.fill(objArr, i, i2, (Object) null);
    }

    public static void n0(byte[] bArr) {
        int length = bArr.length;
        bArr.getClass();
        Arrays.fill(bArr, 0, length, (byte) 0);
    }

    public static void o0(char[] cArr) {
        int length = cArr.length;
        cArr.getClass();
        Arrays.fill(cArr, 0, length, (char) 0);
    }

    public static List p0(Object[] objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Object q0(int i, Object[] objArr) {
        objArr.getClass();
        if (i < 0 || i >= objArr.length) {
            return null;
        }
        return objArr[i];
    }

    public static int r0(Object[] objArr, Object obj) {
        objArr.getClass();
        int i = 0;
        if (obj == null) {
            int length = objArr.length;
            while (i < length) {
                if (objArr[i] == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int length2 = objArr.length;
        while (i < length2) {
            if (obj.equals(objArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static String s0(int i, String str, Object[] objArr) {
        if ((i & 1) != 0) {
            str = ", ";
        }
        String str2 = (i & 2) != 0 ? "" : "[";
        String str3 = (i & 4) == 0 ? "]" : "";
        objArr.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str2);
        int i2 = 0;
        for (Object obj : objArr) {
            i2++;
            if (i2 > 1) {
                sb.append((CharSequence) str);
            }
            wx3.a(sb, obj, null);
        }
        sb.append((CharSequence) str3);
        return sb.toString();
    }

    public static String t0(byte[] bArr, String str, mt3 mt3Var, int i) {
        String str2 = (i & 2) != 0 ? "" : "[";
        String str3 = (i & 4) == 0 ? "]" : "";
        if ((i & 32) != 0) {
            mt3Var = null;
        }
        bArr.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str2);
        int i2 = 0;
        for (byte b : bArr) {
            i2++;
            if (i2 > 1) {
                sb.append((CharSequence) str);
            }
            if (mt3Var != null) {
                sb.append((CharSequence) mt3Var.invoke(Byte.valueOf(b)));
            } else {
                sb.append((CharSequence) String.valueOf((int) b));
            }
        }
        sb.append((CharSequence) str3);
        return sb.toString();
    }

    public static byte[] u0(byte[] bArr, byte[] bArr2) {
        bArr.getClass();
        int length = bArr.length;
        int length2 = bArr2.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, length + length2);
        System.arraycopy(bArr2, 0, bArrCopyOf, length, length2);
        return bArrCopyOf;
    }

    public static char v0(char[] cArr) {
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        c6.f("Array has more than one element.");
        return (char) 0;
    }

    public static final void w0(Object[] objArr, LinkedHashSet linkedHashSet) {
        for (Object obj : objArr) {
            linkedHashSet.add(obj);
        }
    }

    public static List x0(byte[] bArr) {
        bArr.getClass();
        int length = bArr.length;
        if (length == 0) {
            return ov2.a;
        }
        if (length == 1) {
            return nc8.I(Byte.valueOf(bArr[0]));
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte b : bArr) {
            arrayList.add(Byte.valueOf(b));
        }
        return arrayList;
    }

    public static List y0(long[] jArr) {
        jArr.getClass();
        int length = jArr.length;
        if (length == 0) {
            return ov2.a;
        }
        if (length == 1) {
            return nc8.I(Long.valueOf(jArr[0]));
        }
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    public static List z0(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        if (length != 0) {
            return length != 1 ? new ArrayList(new p40(objArr, false)) : nc8.I(objArr[0]);
        }
        return ov2.a;
    }
}
