package defpackage;

import java.util.Arrays;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class na4 extends ga4 implements Set {
    public static final /* synthetic */ int k = 0;
    public transient la4 f;

    public static na4 B(String str, String str2, String str3, String str4, String str5, String str6, Object... objArr) {
        if (!(objArr.length <= 2147483641)) {
            c6.f("the total number of elements must fit in an int");
            return null;
        }
        int length = objArr.length + 6;
        Object[] objArr2 = new Object[length];
        objArr2[0] = str;
        objArr2[1] = str2;
        objArr2[2] = str3;
        objArr2[3] = str4;
        objArr2[4] = str5;
        objArr2[5] = str6;
        System.arraycopy(objArr, 0, objArr2, 6, objArr.length);
        return y(length, objArr2);
    }

    public static int x(int i) {
        int iMax = Math.max(i, 2);
        if (iMax < 751619276) {
            int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
            while (((double) iHighestOneBit) * 0.7d < iMax) {
                iHighestOneBit <<= 1;
            }
            return iHighestOneBit;
        }
        if (iMax < 1073741824) {
            return 1073741824;
        }
        c6.f("collection too large");
        return 0;
    }

    public static na4 y(int i, Object... objArr) {
        if (i == 0) {
            return ui6.y;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new mh7(obj);
        }
        int iX = x(i);
        Object[] objArr2 = new Object[iX];
        int i2 = iX - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            if (obj2 == null) {
                f6.n(fz5.j(i5, "at index "));
                return null;
            }
            int iHashCode = obj2.hashCode();
            int iG = cy0.G(iHashCode);
            while (true) {
                int i6 = iG & i2;
                Object obj3 = objArr2[i6];
                if (obj3 == null) {
                    objArr[i4] = obj2;
                    objArr2[i6] = obj2;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iG++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new mh7(obj4);
        }
        if (x(i4) < iX / 2) {
            return y(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new ui6(i3, i2, i4, objArr, objArr2);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof na4) && (this instanceof ui6) && (((na4) obj) instanceof ui6) && hashCode() != obj.hashCode()) {
            return false;
        }
        return ly8.s(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return ly8.A(this);
    }
}
