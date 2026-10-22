package defpackage;

import java.io.ByteArrayInputStream;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class wk9 implements Iterable, Serializable {
    public static final wk9 c = new wk9(kl9.a);
    public int a = 0;
    public final byte[] b;

    static {
        int i = qk9.a;
    }

    public wk9(byte[] bArr) {
        bArr.getClass();
        this.b = bArr;
    }

    public static int k(int i, int i2, int i3) {
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

    public static wk9 l(byte[] bArr, int i) {
        k(0, i, bArr.length);
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return new wk9(bArr2);
    }

    public byte c(int i) {
        return this.b[i];
    }

    public byte d(int i) {
        return this.b[i];
    }

    public int e() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof wk9) && f() == ((wk9) obj).f()) {
            if (f() == 0) {
                return true;
            }
            if (!(obj instanceof wk9)) {
                return obj.equals(this);
            }
            wk9 wk9Var = (wk9) obj;
            int i = this.a;
            int i2 = wk9Var.a;
            if (i == 0 || i2 == 0 || i == i2) {
                int iF = f();
                if (iF > wk9Var.f()) {
                    l0.c(iF, f());
                    return false;
                }
                if (iF > wk9Var.f()) {
                    c6.f(dj7.i("Ran off end of other: 0, ", iF, wk9Var.f(), ", "));
                    return false;
                }
                byte[] bArr = wk9Var.b;
                int iE = e() + iF;
                int iE2 = e();
                int iE3 = wk9Var.e();
                while (iE2 < iE) {
                    if (this.b[iE2] == bArr[iE3]) {
                        iE2++;
                        iE3++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public int f() {
        return this.b.length;
    }

    public void g(byte[] bArr, int i) {
        System.arraycopy(this.b, 0, bArr, 0, i);
    }

    public final int hashCode() {
        int i = this.a;
        if (i != 0) {
            return i;
        }
        int iF = f();
        int iE = e();
        byte[] bArr = kl9.a;
        int i2 = iF;
        for (int i3 = iE; i3 < iE + iF; i3++) {
            i2 = (i2 * 31) + this.b[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.a = i2;
        return i2;
    }

    public final ByteArrayInputStream i() {
        return new ByteArrayInputStream(this.b, e(), f());
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new rk9(this);
    }

    public final byte[] o() {
        int iF = f();
        if (iF == 0) {
            return kl9.a;
        }
        byte[] bArr = new byte[iF];
        g(bArr, iF);
        return bArr;
    }

    public final String toString() {
        wk9 uk9Var;
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iF = f();
        if (f() <= 50) {
            strConcat = k55.L(this);
        } else {
            int iK = k(0, 47, f());
            if (iK == 0) {
                uk9Var = c;
            } else {
                uk9Var = new uk9(this.b, e(), iK);
            }
            strConcat = k55.L(uk9Var).concat("...");
        }
        return dj7.n(dj7.v("<ByteString@", hexString, " size=", iF, " contents=\""), strConcat, "\">");
    }
}
