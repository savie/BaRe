package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bn4 implements Closeable {
    public static final hy0 r;
    public static final hy0 t;
    public static final hy0 x;
    public int a;
    public int[] b;
    public String[] c;
    public int[] d;
    public final zw0 e;
    public final nw0 f;
    public int k;
    public long n;
    public int p;
    public String q;

    static {
        hy0 hy0Var = hy0.d;
        r = ge.v("'\\");
        t = ge.v("\"\\");
        x = ge.v("{}[]:, \n\t\r\f/\\;#=");
        ge.v("\n\r");
        ge.v("*/");
    }

    public bn4(bn4 bn4Var) {
        this.a = bn4Var.a;
        this.b = (int[]) bn4Var.b.clone();
        this.c = (String[]) bn4Var.c.clone();
        this.d = (int[]) bn4Var.d.clone();
        this.k = 0;
        tf6 tf6VarPeek = bn4Var.e.peek();
        this.e = tf6VarPeek;
        this.f = tf6VarPeek.b;
        this.k = bn4Var.k;
        this.n = bn4Var.n;
        this.p = bn4Var.p;
        this.q = bn4Var.q;
        try {
            tf6VarPeek.j0(bn4Var.f.b);
        } catch (IOException unused) {
            d6.n();
            throw null;
        }
    }

    public final int A() {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH == 16) {
            long j = this.n;
            int i = (int) j;
            if (j == i) {
                this.k = 0;
                int[] iArr = this.d;
                int i2 = this.a - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
            throw new lj4("Expected an int but was " + this.n + " at path " + r());
        }
        if (iH == 17) {
            long j2 = this.p;
            nw0 nw0Var = this.f;
            nw0Var.getClass();
            this.q = nw0Var.u(j2, f51.a);
        } else if (iH == 9 || iH == 8) {
            String strO = iH == 9 ? O(t) : O(r);
            this.q = strO;
            try {
                int i3 = Integer.parseInt(strO);
                this.k = 0;
                int[] iArr2 = this.d;
                int i4 = this.a - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException unused) {
            }
        } else if (iH != 11) {
            q.c(eq3.s(W()), r(), "Expected an int but was ");
            return 0;
        }
        this.k = 11;
        try {
            double d = Double.parseDouble(this.q);
            int i5 = (int) d;
            if (i5 != d) {
                q.c(this.q, r(), "Expected an int but was ");
                return 0;
            }
            this.q = null;
            this.k = 0;
            int[] iArr3 = this.d;
            int i6 = this.a - 1;
            iArr3[i6] = iArr3[i6] + 1;
            return i5;
        } catch (NumberFormatException unused2) {
            q.c(this.q, r(), "Expected an int but was ");
            return 0;
        }
    }

    public final String D() throws EOFException, tj4 {
        String strO;
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH == 14) {
            strO = U();
        } else if (iH == 13) {
            strO = O(t);
        } else if (iH == 12) {
            strO = O(r);
        } else {
            if (iH != 15) {
                q.c(eq3.s(W()), r(), "Expected a name but was ");
                return null;
            }
            strO = this.q;
            this.q = null;
        }
        this.k = 0;
        this.c[this.a - 1] = strO;
        return strO;
    }

    public final int G(boolean z) throws EOFException, tj4 {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            zw0 zw0Var = this.e;
            if (!zw0Var.request(i2)) {
                if (z) {
                    throw new EOFException("End of input");
                }
                return -1;
            }
            long j = i;
            nw0 nw0Var = this.f;
            byte bH = nw0Var.h(j);
            if (bH != 10 && bH != 32 && bH != 13 && bH != 9) {
                nw0Var.skip(j);
                if (bH == 47) {
                    if (zw0Var.request(2L)) {
                        g();
                        throw null;
                    }
                } else if (bH == 35) {
                    g();
                    throw null;
                }
                return bH;
            }
            i = i2;
        }
    }

    public final void J() throws EOFException, tj4 {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH != 7) {
            q.c(eq3.s(W()), r(), "Expected null but was ");
            return;
        }
        this.k = 0;
        int[] iArr = this.d;
        int i = this.a - 1;
        iArr[i] = iArr[i] + 1;
    }

    public final String O(hy0 hy0Var) throws EOFException, tj4 {
        StringBuilder sb = null;
        while (true) {
            long jT = this.e.T(hy0Var);
            if (jT == -1) {
                l0("Unterminated string");
                throw null;
            }
            nw0 nw0Var = this.f;
            if (nw0Var.h(jT) != 92) {
                if (sb == null) {
                    String strU = nw0Var.u(jT, f51.a);
                    nw0Var.readByte();
                    return strU;
                }
                sb.append(nw0Var.u(jT, f51.a));
                nw0Var.readByte();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(nw0Var.u(jT, f51.a));
            nw0Var.readByte();
            sb.append(Z());
        }
    }

    public final String S() throws EOFException, tj4 {
        String strU;
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH == 10) {
            strU = U();
        } else if (iH == 9) {
            strU = O(t);
        } else if (iH == 8) {
            strU = O(r);
        } else if (iH == 11) {
            strU = this.q;
            this.q = null;
        } else if (iH == 16) {
            strU = Long.toString(this.n);
        } else {
            if (iH != 17) {
                q.c(eq3.s(W()), r(), "Expected a string but was ");
                return null;
            }
            long j = this.p;
            nw0 nw0Var = this.f;
            nw0Var.getClass();
            strU = nw0Var.u(j, f51.a);
        }
        this.k = 0;
        int[] iArr = this.d;
        int i = this.a - 1;
        iArr[i] = iArr[i] + 1;
        return strU;
    }

    public final String U() {
        long jT = this.e.T(x);
        nw0 nw0Var = this.f;
        if (jT == -1) {
            return nw0Var.v();
        }
        nw0Var.getClass();
        return nw0Var.u(jT, f51.a);
    }

    public final int W() throws EOFException, tj4 {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        switch (iH) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case XmlPullParser.COMMENT /* 9 */:
            case 10:
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return 6;
            case 12:
            case 13:
            case 14:
            case 15:
                return 5;
            case Argon2.V10 /* 16 */:
            case 17:
                return 7;
            case 18:
                return 10;
            default:
                d6.n();
                return 0;
        }
    }

    public final void Y(int i) {
        int i2 = this.a;
        int[] iArr = this.b;
        if (i2 == iArr.length) {
            if (i2 == 256) {
                throw new lj4("Nesting too deep at ".concat(r()));
            }
            this.b = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.c;
            this.c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.d;
            this.d = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.b;
        int i3 = this.a;
        this.a = i3 + 1;
        iArr3[i3] = i;
    }

    public final char Z() throws EOFException, tj4 {
        int i;
        zw0 zw0Var = this.e;
        if (!zw0Var.request(1L)) {
            l0("Unterminated escape sequence");
            throw null;
        }
        nw0 nw0Var = this.f;
        byte b = nw0Var.readByte();
        if (b == 10 || b == 34 || b == 39 || b == 47 || b == 92) {
            return (char) b;
        }
        if (b == 98) {
            return '\b';
        }
        if (b == 102) {
            return '\f';
        }
        if (b == 110) {
            return '\n';
        }
        if (b == 114) {
            return '\r';
        }
        if (b == 116) {
            return '\t';
        }
        if (b != 117) {
            l0("Invalid escape sequence: \\" + ((char) b));
            throw null;
        }
        if (!zw0Var.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path ".concat(r()));
        }
        char c = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            byte bH = nw0Var.h(i2);
            char c2 = (char) (c << 4);
            if (bH >= 48 && bH <= 57) {
                i = bH - 48;
            } else if (bH >= 97 && bH <= 102) {
                i = bH - 87;
            } else {
                if (bH < 65 || bH > 70) {
                    l0("\\u".concat(nw0Var.u(4L, f51.a)));
                    throw null;
                }
                i = bH - 55;
            }
            c = (char) (i + c2);
        }
        nw0Var.skip(4L);
        return c;
    }

    public final void a() throws EOFException, tj4 {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH != 3) {
            q.c(eq3.s(W()), r(), "Expected BEGIN_ARRAY but was ");
            return;
        }
        Y(1);
        this.d[this.a - 1] = 0;
        this.k = 0;
    }

    public final void b() throws EOFException, tj4 {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH != 1) {
            q.c(eq3.s(W()), r(), "Expected BEGIN_OBJECT but was ");
        } else {
            Y(3);
            this.k = 0;
        }
    }

    public final int b0(l39 l39Var) throws EOFException, tj4 {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH < 12 || iH > 15) {
            return -1;
        }
        if (iH == 15) {
            return n(this.q, l39Var);
        }
        int iY = this.e.y((nu5) l39Var.c);
        if (iY != -1) {
            this.k = 0;
            this.c[this.a - 1] = ((String[]) l39Var.b)[iY];
            return iY;
        }
        String str = this.c[this.a - 1];
        String strD = D();
        int iN = n(strD, l39Var);
        if (iN == -1) {
            this.k = 15;
            this.q = strD;
            this.c[this.a - 1] = str;
        }
        return iN;
    }

    public final int c0(l39 l39Var) throws EOFException, tj4 {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH < 8 || iH > 11) {
            return -1;
        }
        if (iH == 11) {
            return q(this.q, l39Var);
        }
        int iY = this.e.y((nu5) l39Var.c);
        if (iY != -1) {
            this.k = 0;
            int[] iArr = this.d;
            int i = this.a - 1;
            iArr[i] = iArr[i] + 1;
            return iY;
        }
        String strS = S();
        int iQ = q(strS, l39Var);
        if (iQ == -1) {
            this.k = 11;
            this.q = strS;
            int[] iArr2 = this.d;
            int i2 = this.a - 1;
            iArr2[i2] = iArr2[i2] - 1;
        }
        return iQ;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.k = 0;
        this.b[0] = 8;
        this.a = 1;
        this.f.a();
        this.e.close();
    }

    public final void g() throws tj4 {
        l0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    public final void g0() throws EOFException, tj4 {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH == 14) {
            long jT = this.e.T(x);
            nw0 nw0Var = this.f;
            if (jT == -1) {
                jT = nw0Var.b;
            }
            nw0Var.skip(jT);
        } else if (iH == 13) {
            h0(t);
        } else if (iH == 12) {
            h0(r);
        } else if (iH != 15) {
            q.c(eq3.s(W()), r(), "Expected a name but was ");
            return;
        }
        this.k = 0;
        this.c[this.a - 1] = "null";
    }

    /* JADX WARN: Code duplicated, block: B:150:0x01c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:151:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:164:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:166:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:169:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:174:0x01fe A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:175:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:177:0x020b  */
    /* JADX WARN: Code duplicated, block: B:179:0x020f  */
    /* JADX WARN: Code duplicated, block: B:233:0x0164 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:234:0x01a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x0123 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:90:0x0124  */
    /* JADX WARN: Code duplicated, block: B:94:0x0136  */
    /* JADX WARN: Code duplicated, block: B:96:0x013f  */
    public final int h() throws EOFException, tj4 {
        int i;
        String str;
        String str2;
        long j;
        char cH;
        int i2;
        int i3;
        int i4;
        int i5;
        byte bH;
        int i6;
        int[] iArr = this.b;
        int i7 = this.a - 1;
        int i8 = iArr[i7];
        int i9 = 0;
        nw0 nw0Var = this.f;
        if (i8 == 1) {
            iArr[i7] = 2;
        } else if (i8 == 2) {
            int iG = G(true);
            nw0Var.readByte();
            if (iG != 44) {
                if (iG == 59) {
                    g();
                    throw null;
                }
                if (iG == 93) {
                    this.k = 4;
                    return 4;
                }
                l0("Unterminated array");
                throw null;
            }
        } else {
            if (i8 == 3 || i8 == 5) {
                iArr[i7] = 4;
                if (i8 == 5) {
                    int iG2 = G(true);
                    nw0Var.readByte();
                    if (iG2 != 44) {
                        if (iG2 == 59) {
                            g();
                            throw null;
                        }
                        if (iG2 == 125) {
                            this.k = 2;
                            return 2;
                        }
                        l0("Unterminated object");
                        throw null;
                    }
                }
                int iG3 = G(true);
                if (iG3 == 34) {
                    nw0Var.readByte();
                    this.k = 13;
                    return 13;
                }
                if (iG3 == 39) {
                    nw0Var.readByte();
                    g();
                    throw null;
                }
                if (iG3 != 125) {
                    g();
                    throw null;
                }
                if (i8 == 5) {
                    l0("Expected name");
                    throw null;
                }
                nw0Var.readByte();
                this.k = 2;
                return 2;
            }
            if (i8 == 4) {
                iArr[i7] = 5;
                int iG4 = G(true);
                nw0Var.readByte();
                if (iG4 != 58) {
                    if (iG4 == 61) {
                        g();
                        throw null;
                    }
                    l0("Expected ':'");
                    throw null;
                }
            } else if (i8 == 6) {
                iArr[i7] = 7;
            } else {
                if (i8 == 7) {
                    if (G(false) == -1) {
                        this.k = 18;
                        return 18;
                    }
                    g();
                    throw null;
                }
                if (i8 == 9) {
                    throw null;
                }
                if (i8 == 8) {
                    l0.e("JsonReader is closed");
                    return 0;
                }
            }
        }
        int iG5 = G(true);
        if (iG5 == 34) {
            nw0Var.readByte();
            this.k = 9;
            return 9;
        }
        if (iG5 == 39) {
            g();
            throw null;
        }
        if (iG5 != 44 && iG5 != 59) {
            if (iG5 == 91) {
                nw0Var.readByte();
                this.k = 3;
                return 3;
            }
            if (iG5 != 93) {
                if (iG5 == 123) {
                    nw0Var.readByte();
                    this.k = 1;
                    return 1;
                }
                byte bH2 = nw0Var.h(0L);
                zw0 zw0Var = this.e;
                if (bH2 == 116 || bH2 == 84) {
                    i = 5;
                    str2 = "true";
                    str = "TRUE";
                } else {
                    if (bH2 != 102 && bH2 != 70) {
                        if (bH2 == 110 || bH2 == 78) {
                            i = 7;
                            str2 = "null";
                            str = "NULL";
                        } else {
                            j = 0;
                            i = 0;
                            i9 = 0;
                        }
                        if (i != 0) {
                            return i;
                        }
                        int i10 = 1;
                        i2 = i9;
                        i3 = i2;
                        int i11 = i3;
                        long j2 = j;
                        while (true) {
                            i4 = i3 + 1;
                            if (zw0Var.request(i4)) {
                                bH = nw0Var.h(i3);
                                if (bH != 43) {
                                    if (bH != 69 || bH == 101) {
                                        i6 = 6;
                                        if (i2 != 2 || i2 == 4) {
                                            i2 = 5;
                                            i3 = i4;
                                        } else {
                                            i5 = i9;
                                        }
                                    } else if (bH == 45) {
                                        i6 = 6;
                                        if (i2 == 0) {
                                            i2 = 1;
                                            i11 = 1;
                                        } else {
                                            if (i2 != 5) {
                                                i5 = i9;
                                            }
                                            i2 = i6;
                                        }
                                        i3 = i4;
                                    } else if (bH != 46) {
                                        if (bH >= 48 && bH <= 57) {
                                            if (i2 == 1 || i2 == 0) {
                                                i6 = 6;
                                                j2 = -(bH - 48);
                                                i2 = 2;
                                            } else {
                                                if (i2 == 2) {
                                                    if (j2 != j) {
                                                        long j3 = (10 * j2) - ((long) (bH - 48));
                                                        i10 &= (j2 > -922337203685477580L || (j2 == -922337203685477580L && j3 < j2)) ? 1 : i9;
                                                        j2 = j3;
                                                    }
                                                } else if (i2 == 3) {
                                                    i2 = 4;
                                                } else {
                                                    i6 = 6;
                                                    if (i2 == 5 || i2 == 6) {
                                                        i2 = 7;
                                                    }
                                                }
                                                i6 = 6;
                                                i3 = i4;
                                            }
                                            i3 = i4;
                                        } else if (!v(bH)) {
                                        }
                                        i5 = i9;
                                    } else {
                                        i6 = 6;
                                        if (i2 == 2) {
                                            i2 = 3;
                                            i3 = i4;
                                        } else {
                                            i5 = i9;
                                        }
                                    }
                                    if (i5 != 0) {
                                        return i5;
                                    }
                                    if (v(nw0Var.h(j))) {
                                        g();
                                        throw null;
                                    }
                                    l0("Expected value");
                                    throw null;
                                }
                                i6 = 6;
                                if (i2 != 5) {
                                    i5 = i9;
                                    if (i5 != 0) {
                                        return i5;
                                    }
                                    if (v(nw0Var.h(j))) {
                                        g();
                                        throw null;
                                    }
                                    l0("Expected value");
                                    throw null;
                                }
                                i2 = i6;
                                i3 = i4;
                            }
                            if (i2 != 2 && i10 != 0 && ((j2 != Long.MIN_VALUE || i11 != 0) && (j2 != j || i11 == 0))) {
                                if (i11 == 0) {
                                    j2 = -j2;
                                }
                                this.n = j2;
                                nw0Var.skip(i3);
                                i5 = 16;
                                this.k = 16;
                            } else if (i2 != 2 || i2 == 4 || i2 == 7) {
                                this.p = i3;
                                i5 = 17;
                                this.k = 17;
                            } else {
                                i5 = i9;
                            }
                            if (i5 != 0) {
                                return i5;
                            }
                            if (v(nw0Var.h(j))) {
                                g();
                                throw null;
                            }
                            l0("Expected value");
                            throw null;
                        }
                    }
                    i = 6;
                    str2 = "false";
                    str = "FALSE";
                }
                int length = str2.length();
                j = 0;
                int i12 = 1;
                while (true) {
                    if (i12 >= length) {
                        if (!zw0Var.request(length + 1) || !v(nw0Var.h(length))) {
                            nw0Var.skip(length);
                            this.k = i;
                            break;
                        }
                    } else {
                        int i13 = i12 + 1;
                        if (zw0Var.request(i13) && ((cH = nw0Var.h(i12)) == str2.charAt(i12) || cH == str.charAt(i12))) {
                            i12 = i13;
                        }
                    }
                    i = i9;
                    break;
                }
                if (i != 0) {
                    return i;
                }
                int i14 = 1;
                i2 = i9;
                i3 = i2;
                int i15 = i3;
                long j4 = j;
                while (true) {
                    i4 = i3 + 1;
                    if (zw0Var.request(i4)) {
                        bH = nw0Var.h(i3);
                        if (bH != 43) {
                            if (bH != 69) {
                                i6 = 6;
                                if (i2 != 2) {
                                }
                                i2 = 5;
                                i3 = i4;
                            } else {
                                i6 = 6;
                                if (i2 != 2) {
                                }
                                i2 = 5;
                                i3 = i4;
                            }
                            if (i5 != 0) {
                                return i5;
                            }
                            if (v(nw0Var.h(j))) {
                                g();
                                throw null;
                            }
                            l0("Expected value");
                            throw null;
                        }
                        i6 = 6;
                        if (i2 != 5) {
                            i5 = i9;
                            if (i5 != 0) {
                                return i5;
                            }
                            if (v(nw0Var.h(j))) {
                                g();
                                throw null;
                            }
                            l0("Expected value");
                            throw null;
                        }
                        i2 = i6;
                        i3 = i4;
                    }
                    if (i2 != 2) {
                        if (i2 != 2) {
                        }
                        this.p = i3;
                        i5 = 17;
                        this.k = 17;
                    } else {
                        if (i2 != 2) {
                        }
                        this.p = i3;
                        i5 = 17;
                        this.k = 17;
                    }
                    if (i5 != 0) {
                        return i5;
                    }
                    if (v(nw0Var.h(j))) {
                        g();
                        throw null;
                    }
                    l0("Expected value");
                    throw null;
                }
            }
            if (i8 == 1) {
                nw0Var.readByte();
                this.k = 4;
                return 4;
            }
        }
        if (i8 == 1 || i8 == 2) {
            g();
            throw null;
        }
        l0("Unexpected value");
        throw null;
    }

    public final void h0(hy0 hy0Var) throws EOFException, tj4 {
        while (true) {
            long jT = this.e.T(hy0Var);
            if (jT == -1) {
                l0("Unterminated string");
                throw null;
            }
            nw0 nw0Var = this.f;
            if (nw0Var.h(jT) != 92) {
                nw0Var.skip(jT + 1);
                return;
            } else {
                nw0Var.skip(jT + 1);
                Z();
            }
        }
    }

    public final void j() throws EOFException, tj4 {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH != 4) {
            q.c(eq3.s(W()), r(), "Expected END_ARRAY but was ");
            return;
        }
        int i = this.a;
        this.a = i - 1;
        int[] iArr = this.d;
        int i2 = i - 2;
        iArr[i2] = iArr[i2] + 1;
        this.k = 0;
    }

    public final void k0() throws EOFException, tj4 {
        int i = 0;
        do {
            int iH = this.k;
            if (iH == 0) {
                iH = h();
            }
            if (iH == 3) {
                Y(1);
            } else {
                if (iH == 1) {
                    Y(3);
                } else if (iH == 4) {
                    i--;
                    if (i < 0) {
                        q.c(eq3.s(W()), r(), "Expected a value but was ");
                        return;
                    }
                    this.a--;
                } else if (iH == 2) {
                    i--;
                    if (i < 0) {
                        q.c(eq3.s(W()), r(), "Expected a value but was ");
                        return;
                    }
                    this.a--;
                } else {
                    nw0 nw0Var = this.f;
                    if (iH == 14 || iH == 10) {
                        long jT = this.e.T(x);
                        if (jT == -1) {
                            jT = nw0Var.b;
                        }
                        nw0Var.skip(jT);
                    } else if (iH == 9 || iH == 13) {
                        h0(t);
                    } else if (iH == 8 || iH == 12) {
                        h0(r);
                    } else if (iH == 17) {
                        nw0Var.skip(this.p);
                    } else if (iH == 18) {
                        q.c(eq3.s(W()), r(), "Expected a value but was ");
                        return;
                    }
                }
                this.k = 0;
            }
            i++;
            this.k = 0;
        } while (i != 0);
        int[] iArr = this.d;
        int i2 = this.a - 1;
        iArr[i2] = iArr[i2] + 1;
        this.c[i2] = "null";
    }

    public final void l0(String str) throws tj4 {
        StringBuilder sbN = fz5.n(str, " at path ");
        sbN.append(r());
        throw new tj4(sbN.toString());
    }

    public final void m() throws EOFException, tj4 {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH != 2) {
            q.c(eq3.s(W()), r(), "Expected END_OBJECT but was ");
            return;
        }
        int i = this.a;
        int i2 = i - 1;
        this.a = i2;
        this.c[i2] = null;
        int[] iArr = this.d;
        int i3 = i - 2;
        iArr[i3] = iArr[i3] + 1;
        this.k = 0;
    }

    public final int n(String str, l39 l39Var) {
        int length = ((String[]) l39Var.b).length;
        for (int i = 0; i < length; i++) {
            if (str.equals(((String[]) l39Var.b)[i])) {
                this.k = 0;
                this.c[this.a - 1] = str;
                return i;
            }
        }
        return -1;
    }

    public final int q(String str, l39 l39Var) {
        int length = ((String[]) l39Var.b).length;
        for (int i = 0; i < length; i++) {
            if (str.equals(((String[]) l39Var.b)[i])) {
                this.k = 0;
                int[] iArr = this.d;
                int i2 = this.a - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
        }
        return -1;
    }

    public final String r() {
        return rs9.k(this.a, this.b, this.c, this.d);
    }

    public final String toString() {
        return "JsonReader(" + this.e + ")";
    }

    public final boolean u() throws EOFException, tj4 {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        return (iH == 2 || iH == 4 || iH == 18) ? false : true;
    }

    public final boolean v(int i) throws tj4 {
        if (i == 9 || i == 10 || i == 12 || i == 13 || i == 32) {
            return false;
        }
        if (i != 35) {
            if (i == 44) {
                return false;
            }
            if (i != 47 && i != 61) {
                if (i == 123 || i == 125 || i == 58) {
                    return false;
                }
                if (i != 59) {
                    switch (i) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        g();
        throw null;
    }

    public final double z() throws EOFException, tj4 {
        int iH = this.k;
        if (iH == 0) {
            iH = h();
        }
        if (iH == 16) {
            this.k = 0;
            int[] iArr = this.d;
            int i = this.a - 1;
            iArr[i] = iArr[i] + 1;
            return this.n;
        }
        if (iH == 17) {
            long j = this.p;
            nw0 nw0Var = this.f;
            nw0Var.getClass();
            this.q = nw0Var.u(j, f51.a);
        } else if (iH == 9) {
            this.q = O(t);
        } else if (iH == 8) {
            this.q = O(r);
        } else if (iH == 10) {
            this.q = U();
        } else if (iH != 11) {
            q.c(eq3.s(W()), r(), "Expected a double but was ");
            return 0.0d;
        }
        this.k = 11;
        try {
            double d = Double.parseDouble(this.q);
            if (Double.isNaN(d) || Double.isInfinite(d)) {
                throw new tj4("JSON forbids NaN and infinities: " + d + " at path " + r());
            }
            this.q = null;
            this.k = 0;
            int[] iArr2 = this.d;
            int i2 = this.a - 1;
            iArr2[i2] = iArr2[i2] + 1;
            return d;
        } catch (NumberFormatException unused) {
            q.c(this.q, r(), "Expected a double but was ");
            return 0.0d;
        }
    }

    public bn4(nw0 nw0Var) {
        this.b = new int[32];
        this.c = new String[32];
        this.d = new int[32];
        this.k = 0;
        this.e = nw0Var;
        this.f = nw0Var;
        Y(6);
    }
}
