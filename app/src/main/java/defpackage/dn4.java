package defpackage;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dn4 implements Closeable, Flushable {
    public static final String[] p = new String[128];
    public int[] b;
    public boolean e;
    public final nw0 k;
    public String n;
    public String[] c = new String[32];
    public int[] d = new int[32];
    public int f = -1;
    public int a = 1;

    static {
        for (int i = 0; i <= 31; i++) {
            p[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = p;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public dn4(nw0 nw0Var) {
        int[] iArr = new int[32];
        this.b = iArr;
        this.k = nw0Var;
        iArr[0] = 6;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002b  */
    public static void u(nw0 nw0Var, String str) {
        String str2;
        nw0Var.J(34);
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < 128) {
                str2 = p[cCharAt];
                if (str2 != null) {
                    if (i < i2) {
                        nw0Var.Y(i, i2, str);
                    }
                    nw0Var.Z(str2);
                    i = i2 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i < i2) {
                    nw0Var.Y(i, i2, str);
                }
                nw0Var.Z(str2);
                i = i2 + 1;
            }
        }
        if (i < length) {
            nw0Var.Y(i, length, str);
        }
        nw0Var.J(34);
    }

    public final void A() {
        if (this.n != null) {
            int iR = r();
            nw0 nw0Var = this.k;
            if (iR == 5) {
                nw0Var.J(44);
            } else if (iR != 3) {
                l0.e("Nesting problem.");
                return;
            }
            this.b[this.a - 1] = 4;
            u(nw0Var, this.n);
            this.n = null;
        }
    }

    public final void a() {
        int iR = r();
        int i = 2;
        if (iR != 1) {
            nw0 nw0Var = this.k;
            if (iR == 2) {
                nw0Var.J(44);
            } else if (iR == 4) {
                nw0Var.Z(":");
                i = 5;
            } else if (iR == 9) {
                l0.e("Sink from valueSink() was not closed");
                return;
            } else {
                if (iR != 6) {
                    if (iR != 7) {
                        l0.e("Nesting problem.");
                        return;
                    } else {
                        l0.e("JSON must have only one top-level value.");
                        return;
                    }
                }
                i = 7;
            }
        }
        this.b[this.a - 1] = i;
    }

    public final dn4 b() {
        if (this.e) {
            l0.e("Array cannot be used as a map key in JSON at path ".concat(j()));
            return null;
        }
        A();
        q(1, 2, '[');
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i = this.a;
        if (i > 1 || (i == 1 && this.b[i - 1] != 7)) {
            y5.m("Incomplete document");
        } else {
            this.a = 0;
        }
    }

    @Override // java.io.Flushable
    public final void flush() {
        if (this.a != 0) {
            return;
        }
        l0.e("JsonWriter is closed.");
    }

    public final dn4 g() {
        if (this.e) {
            l0.e("Object cannot be used as a map key in JSON at path ".concat(j()));
            return null;
        }
        A();
        q(3, 5, '{');
        return this;
    }

    public final void h(int i, int i2, char c) {
        int iR = r();
        if (iR != i2 && iR != i) {
            l0.e("Nesting problem.");
            return;
        }
        if (this.n != null) {
            m0.g(this.n, "Dangling name: ");
            return;
        }
        int i3 = this.a;
        int i4 = ~this.f;
        if (i3 == i4) {
            this.f = i4;
            return;
        }
        int i5 = i3 - 1;
        this.a = i5;
        this.c[i5] = null;
        int[] iArr = this.d;
        int i6 = i3 - 2;
        iArr[i6] = iArr[i6] + 1;
        this.k.J(c);
    }

    public final String j() {
        return rs9.k(this.a, this.b, this.c, this.d);
    }

    public final dn4 m(String str) {
        if (str == null) {
            f6.n("name == null");
            return null;
        }
        if (this.a == 0) {
            l0.e("JsonWriter is closed.");
            return null;
        }
        int iR = r();
        if ((iR != 3 && iR != 5) || this.n != null || this.e) {
            l0.e("Nesting problem.");
            return null;
        }
        this.n = str;
        this.c[this.a - 1] = str;
        return this;
    }

    public final dn4 n() {
        if (this.e) {
            l0.e("null cannot be used as a map key in JSON at path ".concat(j()));
            return null;
        }
        if (this.n != null) {
            this.n = null;
            return this;
        }
        a();
        this.k.Z("null");
        int[] iArr = this.d;
        int i = this.a - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    public final void q(int i, int i2, char c) {
        int i3;
        int i4 = this.a;
        int i5 = this.f;
        if (i4 == i5 && ((i3 = this.b[i4 - 1]) == i || i3 == i2)) {
            this.f = ~i5;
            return;
        }
        a();
        int i6 = this.a;
        int[] iArr = this.b;
        if (i6 == iArr.length) {
            if (i6 == 256) {
                throw new lj4("Nesting too deep at " + j() + ": circular reference?");
            }
            this.b = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.c;
            this.c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.d;
            this.d = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.b;
        int i7 = this.a;
        this.a = i7 + 1;
        iArr3[i7] = i;
        this.d[i7] = 0;
        this.k.J(c);
    }

    public final int r() {
        int i = this.a;
        if (i != 0) {
            return this.b[i - 1];
        }
        l0.e("JsonWriter is closed.");
        return 0;
    }

    public final dn4 v(long j) {
        if (this.e) {
            this.e = false;
            m(Long.toString(j));
            return this;
        }
        A();
        a();
        this.k.Z(Long.toString(j));
        int[] iArr = this.d;
        int i = this.a - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    public final dn4 z(String str) {
        if (str == null) {
            n();
            return this;
        }
        if (this.e) {
            this.e = false;
            m(str);
            return this;
        }
        A();
        a();
        u(this.k, str);
        int[] iArr = this.d;
        int i = this.a - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }
}
