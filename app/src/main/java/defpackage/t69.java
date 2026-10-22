package defpackage;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class t69 implements Serializable, Iterable {
    public static final x69 b = new x69(l79.a);
    public static final hx0 c = new hx0(16);
    public int a;

    public static int e(int i, int i2, int i3) {
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

    public static x69 g(byte[] bArr, int i, int i2) {
        try {
            return o(bArr, i, i2);
        } catch (p79 e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public static /* synthetic */ boolean l(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = i + i3;
        e(i, i4, bArr.length);
        e(i2, i3 + i2, bArr2.length);
        while (i < i4) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static x69 o(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return b;
        }
        e(i, i + i2, bArr.length);
        c.getClass();
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new x69(bArr2);
    }

    public abstract byte c(int i);

    public abstract int d();

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof t69)) {
            return false;
        }
        t69 t69Var = (t69) obj;
        int iD = d();
        if (iD != t69Var.d()) {
            return false;
        }
        if (iD == 0) {
            return true;
        }
        int i = this.a;
        int i2 = t69Var.a;
        if (i == 0 || i2 == 0 || i == i2) {
            return k(t69Var);
        }
        return false;
    }

    public abstract w69 f(int i, int i2);

    public final int hashCode() {
        int iS = this.a;
        if (iS == 0) {
            int iD = d();
            iS = s(iD, iD);
            if (iS == 0) {
                iS = 1;
            }
            this.a = iS;
        }
        return iS;
    }

    public abstract void i(byte[] bArr, int i);

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new u69(this);
    }

    public abstract boolean k(t69 t69Var);

    public abstract void p(c79 c79Var);

    public abstract int s(int i, int i2);

    public abstract y69 t();

    public final String toString() {
        Locale locale = Locale.ROOT;
        return dj7.n(dj7.v("<ByteString@", Integer.toHexString(System.identityHashCode(this)), " size=", d(), " contents=\""), d() <= 50 ? xh8.H(w()) : xh8.H(f(0, 47).w()).concat("..."), "\">");
    }

    public final byte[] w() {
        int iD = d();
        if (iD == 0) {
            return l79.a;
        }
        byte[] bArr = new byte[iD];
        i(bArr, iD);
        return bArr;
    }
}
