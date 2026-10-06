package defpackage;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class dh9 implements Iterable, Serializable {
    public static final fh9 b = new fh9(nj9.b);
    public int a = 0;

    static {
        int i = pg9.a;
    }

    public static int l(int i, int i2, int i3) {
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

    public static fh9 o(byte[] bArr, int i, int i2) {
        try {
            l(i, i + i2, bArr.length);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new fh9(bArr2);
        } catch (uj9 e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public static /* bridge */ /* synthetic */ boolean p(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = i + i3;
        l(i, i4, bArr.length);
        l(i2, i3 + i2, bArr2.length);
        while (i < i4) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public abstract byte c(int i);

    public abstract byte d(int i);

    public abstract int e(int i, int i2);

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof dh9)) {
            return false;
        }
        dh9 dh9Var = (dh9) obj;
        int iF = f();
        if (iF != dh9Var.f()) {
            return false;
        }
        if (iF == 0) {
            return true;
        }
        int i = this.a;
        int i2 = dh9Var.a;
        if (i == 0 || i2 == 0 || i == i2) {
            return k(dh9Var);
        }
        return false;
    }

    public abstract int f();

    public abstract dh9 g(int i, int i2);

    public final int hashCode() {
        int iE = this.a;
        if (iE == 0) {
            int iF = f();
            iE = e(iF, iF);
            if (iE == 0) {
                iE = 1;
            }
            this.a = iE;
        }
        return iE;
    }

    public abstract void i(nh9 nh9Var);

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new dy0(this);
    }

    public abstract boolean k(dh9 dh9Var);

    public final String toString() {
        Locale locale = Locale.ROOT;
        return dj7.n(dj7.v("<ByteString@", Integer.toHexString(System.identityHashCode(this)), " size=", f(), " contents=\""), f() <= 50 ? cy0.L(this) : cy0.L(g(0, 47)).concat("..."), "\">");
    }
}
