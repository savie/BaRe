package defpackage;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class om4 extends tl4 {
    public static final nm4 e = new nm4();
    public static final Object f = new Object();
    public Object[] a;
    public int b;
    public String[] c;
    public int[] d;

    public final void J(int i) {
        if (peek() == i) {
            return;
        }
        f6.k("Expected ", eq3.u(i), " but was ", eq3.u(peek()), S());
    }

    public final String O(boolean z) {
        StringBuilder sb = new StringBuilder("$");
        int i = 0;
        while (true) {
            int i2 = this.b;
            if (i >= i2) {
                return sb.toString();
            }
            Object[] objArr = this.a;
            Object obj = objArr[i];
            if (obj instanceof xi4) {
                i++;
                if (i < i2 && (objArr[i] instanceof Iterator)) {
                    int i3 = this.d[i];
                    if (z && i3 > 0 && (i == i2 - 1 || i == i2 - 2)) {
                        i3--;
                    }
                    sb.append('[');
                    sb.append(i3);
                    sb.append(']');
                }
            } else if ((obj instanceof fl4) && (i = i + 1) < i2 && (objArr[i] instanceof Iterator)) {
                sb.append('.');
                String str = this.c[i];
                if (str != null) {
                    sb.append(str);
                }
            }
            i++;
        }
    }

    public final String S() {
        return " at path ".concat(O(false));
    }

    public final String U(boolean z) {
        J(5);
        Map.Entry entry = (Map.Entry) ((Iterator) W()).next();
        String str = (String) entry.getKey();
        this.c[this.b - 1] = z ? "<skipped>" : str;
        Z(entry.getValue());
        return str;
    }

    public final Object W() {
        return this.a[this.b - 1];
    }

    public final Object Y() {
        Object[] objArr = this.a;
        int i = this.b - 1;
        this.b = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    public final void Z(Object obj) {
        int i = this.b;
        Object[] objArr = this.a;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.a = Arrays.copyOf(objArr, i2);
            this.d = Arrays.copyOf(this.d, i2);
            this.c = (String[]) Arrays.copyOf(this.c, i2);
        }
        Object[] objArr2 = this.a;
        int i3 = this.b;
        this.b = i3 + 1;
        objArr2[i3] = obj;
    }

    @Override // defpackage.tl4
    public final void beginArray() {
        J(1);
        Z(((xi4) W()).a.iterator());
        this.d[this.b - 1] = 0;
    }

    @Override // defpackage.tl4
    public final void beginObject() {
        J(3);
        Z(((ew4) ((fl4) W()).a.entrySet()).iterator());
    }

    @Override // defpackage.tl4, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a = new Object[]{f};
        this.b = 1;
    }

    @Override // defpackage.tl4
    public final void endArray() {
        J(2);
        Y();
        Y();
        int i = this.b;
        if (i > 0) {
            int[] iArr = this.d;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // defpackage.tl4
    public final void endObject() {
        J(4);
        this.c[this.b - 1] = null;
        Y();
        Y();
        int i = this.b;
        if (i > 0) {
            int[] iArr = this.d;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // defpackage.tl4
    public final String getPath() {
        return O(false);
    }

    @Override // defpackage.tl4
    public final String getPreviousPath() {
        return O(true);
    }

    @Override // defpackage.tl4
    public final boolean hasNext() {
        int iPeek = peek();
        return (iPeek == 4 || iPeek == 2 || iPeek == 10) ? false : true;
    }

    @Override // defpackage.tl4
    public final boolean nextBoolean() {
        J(8);
        boolean zE = ((kl4) Y()).e();
        int i = this.b;
        if (i > 0) {
            int[] iArr = this.d;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return zE;
    }

    @Override // defpackage.tl4
    public final double nextDouble() throws m55 {
        int iPeek = peek();
        if (iPeek != 7 && iPeek != 6) {
            f6.k("Expected ", eq3.u(7), " but was ", eq3.u(iPeek), S());
            return 0.0d;
        }
        double dS = ((kl4) W()).s();
        if (!isLenient() && (Double.isNaN(dS) || Double.isInfinite(dS))) {
            throw new m55("JSON forbids NaN and infinities: " + dS);
        }
        Y();
        int i = this.b;
        if (i > 0) {
            int[] iArr = this.d;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return dS;
    }

    @Override // defpackage.tl4
    public final int nextInt() {
        int iPeek = peek();
        if (iPeek != 7 && iPeek != 6) {
            f6.k("Expected ", eq3.u(7), " but was ", eq3.u(iPeek), S());
            return 0;
        }
        int iF = ((kl4) W()).f();
        Y();
        int i = this.b;
        if (i > 0) {
            int[] iArr = this.d;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return iF;
    }

    @Override // defpackage.tl4
    public final long nextLong() {
        int iPeek = peek();
        if (iPeek != 7 && iPeek != 6) {
            f6.k("Expected ", eq3.u(7), " but was ", eq3.u(iPeek), S());
            return 0L;
        }
        long jL = ((kl4) W()).l();
        Y();
        int i = this.b;
        if (i > 0) {
            int[] iArr = this.d;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return jL;
    }

    @Override // defpackage.tl4
    public final String nextName() {
        return U(false);
    }

    @Override // defpackage.tl4
    public final void nextNull() {
        J(9);
        Y();
        int i = this.b;
        if (i > 0) {
            int[] iArr = this.d;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // defpackage.tl4
    public final String nextString() {
        int iPeek = peek();
        if (iPeek != 6 && iPeek != 7) {
            f6.k("Expected ", eq3.u(6), " but was ", eq3.u(iPeek), S());
            return null;
        }
        String strO = ((kl4) Y()).o();
        int i = this.b;
        if (i > 0) {
            int[] iArr = this.d;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return strO;
    }

    @Override // defpackage.tl4
    public final int peek() {
        if (this.b == 0) {
            return 10;
        }
        Object objW = W();
        if (objW instanceof Iterator) {
            boolean z = this.a[this.b - 2] instanceof fl4;
            Iterator it = (Iterator) objW;
            if (!it.hasNext()) {
                return z ? 4 : 2;
            }
            if (z) {
                return 5;
            }
            Z(it.next());
            return peek();
        }
        if (objW instanceof fl4) {
            return 3;
        }
        if (objW instanceof xi4) {
            return 1;
        }
        if (objW instanceof kl4) {
            Serializable serializable = ((kl4) objW).a;
            if (serializable instanceof String) {
                return 6;
            }
            if (serializable instanceof Boolean) {
                return 8;
            }
            if (serializable instanceof Number) {
                return 7;
            }
            d6.n();
            return 0;
        }
        if (objW instanceof el4) {
            return 9;
        }
        if (objW == f) {
            l0.e("JsonReader is closed");
            return 0;
        }
        throw new m55("Custom JsonElement subclass " + objW.getClass().getName() + " is not supported");
    }

    @Override // defpackage.tl4
    public final void skipValue() {
        int iA = dj7.A(peek());
        if (iA == 1) {
            endArray();
            return;
        }
        if (iA != 9) {
            if (iA == 3) {
                endObject();
                return;
            }
            if (iA == 4) {
                U(true);
                return;
            }
            Y();
            int i = this.b;
            if (i > 0) {
                int[] iArr = this.d;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
        }
    }

    @Override // defpackage.tl4
    public final String toString() {
        return om4.class.getSimpleName().concat(S());
    }
}
