package defpackage;

import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ow0 {
    public byte[] a;
    public final vw2 b;
    public int c;
    public int d;

    static {
        o15.b(ow0.class);
    }

    public ow0(byte[] bArr, boolean z, vw2 vw2Var) {
        this.a = bArr;
        this.b = vw2Var;
        this.c = 0;
        this.d = z ? bArr.length : 0;
    }

    public static int d(int i) {
        int i2 = 1;
        while (i2 < i) {
            i2 <<= 1;
            if (i2 <= 0) {
                c6.f(xs1.h(i, "Cannot get next power of 2; ", " is too large"));
                return 0;
            }
        }
        return i2;
    }

    public final int a() {
        return this.d - this.c;
    }

    public final void b(int i) {
        int length = this.a.length;
        int i2 = this.d;
        if (length - i2 < i) {
            byte[] bArr = new byte[d(i2 + i)];
            byte[] bArr2 = this.a;
            System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
            this.a = bArr;
        }
    }

    public final byte[] c() {
        int iA = a();
        if (iA <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[iA];
        System.arraycopy(this.a, this.c, bArr, 0, iA);
        return bArr;
    }

    public void e(zu6 zu6Var) {
        int iA = zu6Var.a();
        b(iA);
        System.arraycopy(zu6Var.a, zu6Var.c, this.a, this.d, iA);
        this.d += iA;
    }

    public ow0 f(byte b) {
        b(1);
        byte[] bArr = this.a;
        int i = this.d;
        this.d = i + 1;
        bArr[i] = b;
        return this;
    }

    public final void g(long j) {
        this.b.i(this, j);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void h(String str, Charset charset) {
        String strName = charset.name();
        strName.getClass();
        byte b = -1;
        switch (strName.hashCode()) {
            case -1781783509:
                if (strName.equals("UTF-16")) {
                    b = 0;
                }
                break;
            case 81070450:
                if (strName.equals("UTF-8")) {
                    b = 1;
                }
                break;
            case 1398001070:
                if (strName.equals("UTF-16BE")) {
                    b = 2;
                }
                break;
            case 1398001380:
                if (strName.equals("UTF-16LE")) {
                    b = 3;
                }
                break;
        }
        byte[] bArr = vw2.a;
        switch (b) {
            case 0:
                zu6 zu6Var = (zu6) this;
                this.b.m(zu6Var, str);
                zu6Var.i(bArr, 2);
                return;
            case 1:
                byte[] bytes = str.getBytes(charset);
                i(bytes, bytes.length);
                f((byte) 0);
                return;
            case 2:
                zu6 zu6Var2 = (zu6) this;
                vw2.c.m(zu6Var2, str);
                zu6Var2.i(bArr, 2);
                return;
            case 3:
                zu6 zu6Var3 = (zu6) this;
                vw2.b.m(zu6Var3, str);
                zu6Var3.i(bArr, 2);
                return;
            default:
                throw new UnsupportedCharsetException(charset.name());
        }
    }

    public ow0 i(byte[] bArr, int i) {
        b(i);
        System.arraycopy(bArr, 0, this.a, this.d, i);
        this.d += i;
        return this;
    }

    public final void j(String str, Charset charset) {
        String strName = charset.name();
        strName.getClass();
        switch (strName) {
            case "UTF-16":
                this.b.m(this, str);
                return;
            case "UTF-8":
                byte[] bytes = str.getBytes(charset);
                i(bytes, bytes.length);
                return;
            case "UTF-16BE":
                vw2.c.m(this, str);
                return;
            case "UTF-16LE":
                vw2.b.m(this, str);
                return;
            default:
                throw new UnsupportedCharsetException(charset.name());
        }
    }

    public final void k(int i) {
        this.b.j(this, i);
    }

    public final void l(long j) {
        this.b.k(this, j);
    }

    public final void m(long j) {
        this.b.l(this, j);
    }

    public final byte n() throws iw0 {
        if (a() < 1) {
            throw new iw0("Underflow");
        }
        byte[] bArr = this.a;
        int i = this.c;
        this.c = i + 1;
        return bArr[i];
    }

    public final void o(byte[] bArr, int i) throws iw0 {
        if (a() < i) {
            throw new iw0("Underflow");
        }
        System.arraycopy(this.a, this.c, bArr, 0, i);
        this.c += i;
    }

    public final byte[] p(int i) throws iw0 {
        byte[] bArr = new byte[i];
        o(bArr, i);
        return bArr;
    }

    public final String q(Charset charset, int i) throws iw0 {
        String strName = charset.name();
        strName.getClass();
        switch (strName) {
            case "UTF-16":
                return this.b.g(this, i);
            case "UTF-8":
                byte[] bArr = new byte[i];
                o(bArr, i);
                return new String(bArr, charset);
            case "UTF-16BE":
                return vw2.h(this, i, h51.b);
            case "UTF-16LE":
                return vw2.h(this, i, h51.c);
            default:
                throw new UnsupportedCharsetException(charset.name());
        }
    }

    public final void r() {
        this.b.d(this);
    }

    public final int s() {
        return (int) this.b.e(this);
    }

    public final void t(int i) throws iw0 {
        if (a() < i) {
            throw new iw0("Underflow");
        }
        this.c += i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Buffer [rpos=");
        sb.append(this.c);
        sb.append(", wpos=");
        sb.append(this.d);
        sb.append(", size=");
        return xs1.m(sb, this.a.length, "]");
    }

    public ow0() {
        this(new byte[d(256)], false, vw2.b);
    }
}
