package defpackage;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class gy0 implements Iterable, Serializable {
    public static final gy0 c = new gy0(yd4.b);
    public static final fy0 d;
    public int a = 0;
    public final byte[] b;

    static {
        d = fb.a() ? new fo8(2) : new ma2(4);
    }

    public gy0(byte[] bArr) {
        bArr.getClass();
        this.b = bArr;
    }

    public static int d(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            a6.d(xs1.h(i, "Beginning index: ", " < 0"));
            return 0;
        }
        if (i2 < i) {
            a6.d(dj7.i("Beginning index larger than ending index: ", i, i2, ", "));
            return 0;
        }
        a6.d(dj7.i("End index: ", i2, i3, " >= "));
        return 0;
    }

    public static gy0 e(byte[] bArr, int i, int i2) {
        d(i, i + i2, bArr.length);
        return new gy0(d.a(bArr, i, i2));
    }

    public byte c(int i) {
        return this.b[i];
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof gy0) && size() == ((gy0) obj).size()) {
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof gy0)) {
                return obj.equals(this);
            }
            gy0 gy0Var = (gy0) obj;
            int i = this.a;
            int i2 = gy0Var.a;
            if (i == 0 || i2 == 0 || i == i2) {
                int size = size();
                if (size > gy0Var.size()) {
                    l0.c(size, size());
                    return false;
                }
                if (size > gy0Var.size()) {
                    StringBuilder sbR = dj7.r(size, "Ran off end of other: 0, ", ", ");
                    sbR.append(gy0Var.size());
                    throw new IllegalArgumentException(sbR.toString());
                }
                byte[] bArr = gy0Var.b;
                int iG = g() + size;
                int iG2 = g();
                int iG3 = gy0Var.g();
                while (iG2 < iG) {
                    if (this.b[iG2] == bArr[iG3]) {
                        iG2++;
                        iG3++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public void f(byte[] bArr, int i) {
        System.arraycopy(this.b, 0, bArr, 0, i);
    }

    public int g() {
        return 0;
    }

    public final int hashCode() {
        int i = this.a;
        if (i != 0) {
            return i;
        }
        int size = size();
        int iG = g();
        int i2 = size;
        for (int i3 = iG; i3 < iG + size; i3++) {
            i2 = (i2 * 31) + this.b[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.a = i2;
        return i2;
    }

    public byte i(int i) {
        return this.b[i];
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new dy0(this);
    }

    public int size() {
        return this.b.length;
    }

    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        if (size() <= 50) {
            strConcat = yc9.o(this);
        } else {
            int iD = d(0, 47, size());
            strConcat = yc9.o(iD == 0 ? c : new ey0(this.b, g(), iD)).concat("...");
        }
        return dj7.n(dj7.v("<ByteString@", hexString, " size=", size, " contents=\""), strConcat, "\">");
    }
}
