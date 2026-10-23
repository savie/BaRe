package defpackage;

import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ha4 {
    public final Object[] a;

    /* JADX WARN: Illegal instructions before constructor call */
    public ha4(Object[] objArr, Comparator comparator) {
        if (!(objArr.length % 2 == 0)) {
            c6.f("You must provide an even number of key/value pair arguments.");
            throw null;
        }
        if (objArr.length != 0) {
            Object[] objArr2 = new Object[objArr.length];
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
            d(objArr2, 0, objArr.length, objArr, comparator);
            int i = 0;
            Object obj = null;
            for (int i2 = 0; i2 < objArr.length; i2 += 2) {
                Object obj2 = objArr[i2];
                Object obj3 = objArr[i2 + 1];
                if (obj2 != null) {
                    if (obj != null && comparator.compare(obj2, obj) == 0) {
                        i -= 2;
                    }
                    if (obj3 == null) {
                        obj = null;
                    } else {
                        int i3 = i + 1;
                        objArr[i] = obj2;
                        i += 2;
                        objArr[i3] = obj3;
                        obj = obj2;
                    }
                }
            }
            if (objArr.length != i) {
                Object[] objArr3 = new Object[i];
                System.arraycopy(objArr, 0, objArr3, 0, i);
                objArr = objArr3;
            }
        }
        this(objArr);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0042  */
    public static void d(Object[] objArr, int i, int i2, Object[] objArr2, Comparator comparator) {
        int iCompare;
        if (i2 - i <= 2) {
            return;
        }
        int i3 = ((i2 + i) / 4) * 2;
        d(objArr2, i, i3, objArr, comparator);
        d(objArr2, i3, i2, objArr, comparator);
        int i4 = i;
        int i5 = i3;
        while (i < i2) {
            if (i4 >= i3 - 1) {
                objArr2[i] = objArr[i5];
                objArr2[i + 1] = objArr[i5 + 1];
                i5 += 2;
            } else {
                if (i5 < i2 - 1) {
                    Object obj = objArr[i4];
                    Object obj2 = objArr[i5];
                    if (obj == null) {
                        iCompare = obj2 == null ? 0 : -1;
                    } else {
                        iCompare = obj2 == null ? 1 : comparator.compare(obj, obj2);
                    }
                    if (iCompare > 0) {
                        objArr2[i] = objArr[i5];
                        objArr2[i + 1] = objArr[i5 + 1];
                        i5 += 2;
                    }
                }
                objArr2[i] = objArr[i4];
                objArr2[i + 1] = objArr[i4 + 1];
                i4 += 2;
            }
            i += 2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ha4) {
            return Arrays.equals(this.a, ((ha4) obj).a);
        }
        return false;
    }

    public final void forEach(on8 on8Var) {
        int i = 0;
        while (true) {
            Object[] objArr = this.a;
            if (i >= objArr.length) {
                return;
            }
            on8Var.accept(objArr[i], objArr[i + 1]);
            i += 2;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(this.a) ^ 1000003;
    }

    public final boolean isEmpty() {
        return this.a.length == 0;
    }

    public final int size() {
        return this.a.length / 2;
    }

    public final String toString() {
        String string;
        StringBuilder sb = new StringBuilder("{");
        int i = 0;
        while (true) {
            Object[] objArr = this.a;
            if (i >= objArr.length) {
                break;
            }
            Object obj = objArr[i + 1];
            if (obj instanceof String) {
                string = "\"" + ((String) obj) + '\"';
            } else {
                string = obj.toString();
            }
            sb.append(objArr[i]);
            sb.append("=");
            sb.append(string);
            sb.append(", ");
            i += 2;
        }
        if (sb.length() > 1) {
            sb.setLength(sb.length() - 2);
        }
        sb.append("}");
        return sb.toString();
    }

    public ha4(Object[] objArr) {
        this.a = objArr;
    }
}
