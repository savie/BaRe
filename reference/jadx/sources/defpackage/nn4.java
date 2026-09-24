package defpackage;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class nn4 implements Closeable, Flushable {
    public static final Pattern t = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");
    public static final String[] x = new String[128];
    public static final String[] y;
    public final Writer a;
    public int[] b;
    public int c;
    public xq3 d;
    public String e;
    public String f;
    public boolean k;
    public int n;
    public boolean p;
    public String q;
    public boolean r;

    static {
        for (int i = 0; i <= 31; i++) {
            x[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = x;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        y = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public nn4(Writer writer) {
        int[] iArr = new int[32];
        this.b = iArr;
        this.c = 0;
        if (iArr.length == 0) {
            this.b = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.b;
        int i = this.c;
        this.c = i + 1;
        iArr2[i] = 6;
        this.n = 2;
        this.r = true;
        Objects.requireNonNull(writer, "out == null");
        this.a = writer;
        v(xq3.d);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    public final void A(String str) throws IOException {
        String str2;
        String[] strArr = this.p ? y : x;
        Writer writer = this.a;
        writer.write(34);
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i < i2) {
                        writer.write(str, i, i2 - i);
                    }
                    writer.write(str2);
                    i = i2 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i < i2) {
                    writer.write(str, i, i2 - i);
                }
                writer.write(str2);
                i = i2 + 1;
            }
        }
        if (i < length) {
            writer.write(str, i, length - i);
        }
        writer.write(34);
    }

    public void D(double d) throws IOException {
        W();
        if (this.n != 1 && (Double.isNaN(d) || Double.isInfinite(d))) {
            d6.g("Numeric values must be finite, but was ", d);
        } else {
            a();
            this.a.append((CharSequence) Double.toString(d));
        }
    }

    public void G(long j) throws IOException {
        W();
        a();
        this.a.write(Long.toString(j));
    }

    public void J(Boolean bool) throws IOException {
        if (bool == null) {
            r();
            return;
        }
        W();
        a();
        this.a.write(bool.booleanValue() ? "true" : "false");
    }

    public void O(Number number) throws IOException {
        if (number == null) {
            r();
            return;
        }
        W();
        String string = number.toString();
        Class<?> cls = number.getClass();
        if (cls != Integer.class && cls != Long.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class) {
            if (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN")) {
                if (this.n != 1) {
                    c6.f("Numeric values must be finite, but was ".concat(string));
                    return;
                }
            } else if (cls != Float.class && cls != Double.class && !t.matcher(string).matches()) {
                y5.i("String created by ", cls, " is not a valid JSON number: ", string);
                return;
            }
        }
        a();
        this.a.append((CharSequence) string);
    }

    public void S(String str) throws IOException {
        if (str == null) {
            r();
            return;
        }
        W();
        a();
        A(str);
    }

    public void U(boolean z) throws IOException {
        W();
        a();
        this.a.write(z ? "true" : "false");
    }

    public final void W() throws IOException {
        if (this.q != null) {
            int iU = u();
            if (iU == 5) {
                this.a.write(this.f);
            } else if (iU != 3) {
                l0.e("Nesting problem.");
                return;
            }
            q();
            this.b[this.c - 1] = 4;
            A(this.q);
            this.q = null;
        }
    }

    public final void a() throws IOException {
        int iU = u();
        if (iU == 1) {
            this.b[this.c - 1] = 2;
            q();
            return;
        }
        Writer writer = this.a;
        if (iU == 2) {
            writer.append((CharSequence) this.f);
            q();
            return;
        }
        if (iU == 4) {
            writer.append((CharSequence) this.e);
            this.b[this.c - 1] = 5;
            return;
        }
        if (iU != 6) {
            if (iU != 7) {
                l0.e("Nesting problem.");
                return;
            } else if (this.n != 1) {
                l0.e("JSON must have only one top-level value.");
                return;
            }
        }
        this.b[this.c - 1] = 7;
    }

    public void b() throws IOException {
        W();
        a();
        int i = this.c;
        int[] iArr = this.b;
        if (i == iArr.length) {
            this.b = Arrays.copyOf(iArr, i * 2);
        }
        int[] iArr2 = this.b;
        int i2 = this.c;
        this.c = i2 + 1;
        iArr2[i2] = 1;
        this.a.write(91);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
        int i = this.c;
        if (i > 1 || (i == 1 && this.b[i - 1] != 7)) {
            y5.m("Incomplete document");
        } else {
            this.c = 0;
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.c != 0) {
            this.a.flush();
        } else {
            l0.e("JsonWriter is closed.");
        }
    }

    public void g() throws IOException {
        W();
        a();
        int i = this.c;
        int[] iArr = this.b;
        if (i == iArr.length) {
            this.b = Arrays.copyOf(iArr, i * 2);
        }
        int[] iArr2 = this.b;
        int i2 = this.c;
        this.c = i2 + 1;
        iArr2[i2] = 3;
        this.a.write(123);
    }

    public final void h(int i, int i2, char c) throws IOException {
        int iU = u();
        if (iU != i2 && iU != i) {
            l0.e("Nesting problem.");
            return;
        }
        if (this.q != null) {
            m0.g(this.q, "Dangling name: ");
            return;
        }
        this.c--;
        if (iU == i2) {
            q();
        }
        this.a.write(c);
    }

    public void j() throws IOException {
        h(1, 2, ']');
    }

    public void m() throws IOException {
        h(3, 5, '}');
    }

    public void n(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.q != null) {
            l0.e("Already wrote a name, expecting a value.");
            return;
        }
        int iU = u();
        if (iU == 3 || iU == 5) {
            this.q = str;
        } else {
            l0.e("Please begin an object before writing a name.");
        }
    }

    public final void q() throws IOException {
        if (this.k) {
            return;
        }
        String str = this.d.a;
        Writer writer = this.a;
        writer.write(str);
        int i = this.c;
        for (int i2 = 1; i2 < i; i2++) {
            writer.write(this.d.b);
        }
    }

    public nn4 r() throws IOException {
        if (this.q != null) {
            if (!this.r) {
                this.q = null;
                return this;
            }
            W();
        }
        a();
        this.a.write("null");
        return this;
    }

    public final int u() {
        int i = this.c;
        if (i != 0) {
            return this.b[i - 1];
        }
        l0.e("JsonWriter is closed.");
        return 0;
    }

    public final void v(xq3 xq3Var) {
        Objects.requireNonNull(xq3Var);
        this.d = xq3Var;
        this.f = ",";
        if (xq3Var.c) {
            this.e = ": ";
            if (xq3Var.a.isEmpty()) {
                this.f = ", ";
            }
        } else {
            this.e = ":";
        }
        this.k = this.d.a.isEmpty() && this.d.b.isEmpty();
    }

    public final void z(int i) {
        if (i == 0) {
            throw null;
        }
        this.n = i;
    }
}
