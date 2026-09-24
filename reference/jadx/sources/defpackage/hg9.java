package defpackage;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class hg9 implements Iterable, Serializable {
    public static final hg9 c = new hg9(vh9.b);
    public int a = 0;
    public final byte[] b;

    static {
        int i = nf9.a;
    }

    public hg9(byte[] bArr) {
        bArr.getClass();
        this.b = bArr;
    }

    public static int f(int i, int i2, int i3) {
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

    public static hg9 g(byte[] bArr, int i, int i2) {
        f(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new hg9(bArr2);
    }

    public byte c(int i) {
        return this.b[i];
    }

    public byte d(int i) {
        return this.b[i];
    }

    public int e() {
        return this.b.length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof hg9) && e() == ((hg9) obj).e()) {
            if (e() == 0) {
                return true;
            }
            if (!(obj instanceof hg9)) {
                return obj.equals(this);
            }
            hg9 hg9Var = (hg9) obj;
            int i = this.a;
            int i2 = hg9Var.a;
            if (i == 0 || i2 == 0 || i == i2) {
                int iE = e();
                if (iE > hg9Var.e()) {
                    l0.c(iE, e());
                    return false;
                }
                if (iE > hg9Var.e()) {
                    c6.f(dj7.i("Ran off end of other: 0, ", iE, hg9Var.e(), ", "));
                    return false;
                }
                byte[] bArr = hg9Var.b;
                int i3 = 0;
                int i4 = 0;
                while (i3 < iE) {
                    if (this.b[i3] == bArr[i4]) {
                        i3++;
                        i4++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.a;
        if (i != 0) {
            return i;
        }
        int iE = e();
        int i2 = iE;
        for (int i3 = 0; i3 < iE; i3++) {
            i2 = (i2 * 31) + this.b[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.a = i2;
        return i2;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new dy0(this);
    }

    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iE = e();
        if (e() <= 50) {
            strConcat = jm1.c0(this);
        } else {
            int iF = f(0, 47, e());
            strConcat = jm1.c0(iF == 0 ? c : new vf9(this.b, iF)).concat("...");
        }
        return dj7.n(dj7.v("<ByteString@", hexString, " size=", iE, " contents=\""), strConcat, "\">");
    }
}
