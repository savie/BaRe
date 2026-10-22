package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.io.EOFException;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cn4 extends ul4 {
    public static final hy0 t;
    public static final hy0 x;
    public static final hy0 y;
    public final tf6 f;
    public final nw0 k;
    public int n;
    public long p;
    public int q;
    public String r;

    static {
        hy0 hy0Var = hy0.d;
        t = ge.v("'\\");
        x = ge.v("\"\\");
        y = ge.v("{}[]:, \n\t\r\f/\\;#=");
        ge.v("\n\r");
        ge.v("*/");
    }

    public cn4(tf6 tf6Var) {
        this.b = new int[32];
        this.c = new String[32];
        this.d = new int[32];
        this.n = 0;
        this.f = tf6Var;
        this.k = tf6Var.b;
        z(6);
    }

    @Override // defpackage.ul4
    public final int A(ib ibVar) throws l, EOFException {
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        if (iS < 12 || iS > 15) {
            return -1;
        }
        if (iS == 15) {
            return U(this.r, ibVar);
        }
        int iY = this.f.y((nu5) ibVar.c);
        if (iY != -1) {
            this.n = 0;
            this.c[this.a - 1] = ((String[]) ibVar.b)[iY];
            return iY;
        }
        String str = this.c[this.a - 1];
        String strY = Y();
        int iU = U(strY, ibVar);
        if (iU == -1) {
            this.n = 15;
            this.r = strY;
            this.c[this.a - 1] = str;
        }
        return iU;
    }

    @Override // defpackage.ul4
    public final void D() throws l, EOFException {
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        if (iS == 14) {
            long jT = this.f.T(y);
            nw0 nw0Var = this.k;
            if (jT == -1) {
                jT = nw0Var.b;
            }
            nw0Var.skip(jT);
        } else if (iS == 13) {
            h0(x);
        } else if (iS == 12) {
            h0(t);
        } else if (iS != 15) {
            x5.i(eq3.t(v()), j(), "Expected a name but was ");
            return;
        }
        this.n = 0;
        this.c[this.a - 1] = "null";
    }

    @Override // defpackage.ul4
    public final void G() throws l, EOFException {
        int i = 0;
        do {
            int iS = this.n;
            if (iS == 0) {
                iS = S();
            }
            if (iS == 3) {
                z(1);
            } else {
                if (iS == 1) {
                    z(3);
                } else if (iS == 4) {
                    i--;
                    if (i < 0) {
                        x5.i(eq3.t(v()), j(), "Expected a value but was ");
                        return;
                    }
                    this.a--;
                } else if (iS == 2) {
                    i--;
                    if (i < 0) {
                        x5.i(eq3.t(v()), j(), "Expected a value but was ");
                        return;
                    }
                    this.a--;
                } else {
                    nw0 nw0Var = this.k;
                    if (iS == 14 || iS == 10) {
                        long jT = this.f.T(y);
                        if (jT == -1) {
                            jT = nw0Var.b;
                        }
                        nw0Var.skip(jT);
                    } else if (iS == 9 || iS == 13) {
                        h0(x);
                    } else if (iS == 8 || iS == 12) {
                        h0(t);
                    } else if (iS == 17) {
                        nw0Var.skip(this.q);
                    } else if (iS == 18) {
                        x5.i(eq3.t(v()), j(), "Expected a value but was ");
                        return;
                    }
                }
                this.n = 0;
            }
            i++;
            this.n = 0;
        } while (i != 0);
        int[] iArr = this.d;
        int i2 = this.a - 1;
        iArr[i2] = iArr[i2] + 1;
        this.c[i2] = "null";
    }

    public final void O() throws l {
        J("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:148:0x01c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:149:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:162:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:164:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:167:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:172:0x01fa A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:173:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:175:0x0207  */
    /* JADX WARN: Code duplicated, block: B:177:0x020d  */
    /* JADX WARN: Code duplicated, block: B:230:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:231:0x01a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x011f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:88:0x0120  */
    /* JADX WARN: Code duplicated, block: B:92:0x0132  */
    /* JADX WARN: Code duplicated, block: B:94:0x013b  */
    public final int S() throws l, EOFException {
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
        nw0 nw0Var = this.k;
        if (i8 == 1) {
            iArr[i7] = 2;
        } else if (i8 == 2) {
            int iZ = Z(true);
            nw0Var.readByte();
            if (iZ != 44) {
                if (iZ == 59) {
                    O();
                    throw null;
                }
                if (iZ == 93) {
                    this.n = 4;
                    return 4;
                }
                J("Unterminated array");
                throw null;
            }
        } else {
            if (i8 == 3 || i8 == 5) {
                iArr[i7] = 4;
                if (i8 == 5) {
                    int iZ2 = Z(true);
                    nw0Var.readByte();
                    if (iZ2 != 44) {
                        if (iZ2 == 59) {
                            O();
                            throw null;
                        }
                        if (iZ2 == 125) {
                            this.n = 2;
                            return 2;
                        }
                        J("Unterminated object");
                        throw null;
                    }
                }
                int iZ3 = Z(true);
                if (iZ3 == 34) {
                    nw0Var.readByte();
                    this.n = 13;
                    return 13;
                }
                if (iZ3 == 39) {
                    nw0Var.readByte();
                    O();
                    throw null;
                }
                if (iZ3 != 125) {
                    O();
                    throw null;
                }
                if (i8 == 5) {
                    J("Expected name");
                    throw null;
                }
                nw0Var.readByte();
                this.n = 2;
                return 2;
            }
            if (i8 == 4) {
                iArr[i7] = 5;
                int iZ4 = Z(true);
                nw0Var.readByte();
                if (iZ4 != 58) {
                    if (iZ4 != 61) {
                        J("Expected ':'");
                        throw null;
                    }
                    O();
                    throw null;
                }
            } else if (i8 == 6) {
                iArr[i7] = 7;
            } else {
                if (i8 == 7) {
                    if (Z(false) == -1) {
                        this.n = 18;
                        return 18;
                    }
                    O();
                    throw null;
                }
                if (i8 == 8) {
                    l0.e("JsonReader is closed");
                    return 0;
                }
            }
        }
        int iZ5 = Z(true);
        if (iZ5 == 34) {
            nw0Var.readByte();
            this.n = 9;
            return 9;
        }
        if (iZ5 == 39) {
            O();
            throw null;
        }
        if (iZ5 != 44 && iZ5 != 59) {
            if (iZ5 == 91) {
                nw0Var.readByte();
                this.n = 3;
                return 3;
            }
            if (iZ5 != 93) {
                if (iZ5 == 123) {
                    nw0Var.readByte();
                    this.n = 1;
                    return 1;
                }
                byte bH2 = nw0Var.h(0L);
                tf6 tf6Var = this.f;
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
                            if (tf6Var.request(i4)) {
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
                                        } else if (!W(bH)) {
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
                                    if (W(nw0Var.h(j))) {
                                        O();
                                        throw null;
                                    }
                                    J("Expected value");
                                    throw null;
                                }
                                i6 = 6;
                                if (i2 != 5) {
                                    i5 = i9;
                                    if (i5 != 0) {
                                        return i5;
                                    }
                                    if (W(nw0Var.h(j))) {
                                        J("Expected value");
                                        throw null;
                                    }
                                    O();
                                    throw null;
                                }
                                i2 = i6;
                                i3 = i4;
                            }
                            if (i2 != 2 && i10 != 0 && ((j2 != Long.MIN_VALUE || i11 != 0) && (j2 != j || i11 == 0))) {
                                if (i11 == 0) {
                                    j2 = -j2;
                                }
                                this.p = j2;
                                nw0Var.skip(i3);
                                i5 = 16;
                                this.n = 16;
                            } else if (i2 != 2 || i2 == 4 || i2 == 7) {
                                this.q = i3;
                                i5 = 17;
                                this.n = 17;
                            } else {
                                i5 = i9;
                            }
                            if (i5 != 0) {
                                return i5;
                            }
                            if (W(nw0Var.h(j))) {
                                J("Expected value");
                                throw null;
                            }
                            O();
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
                        if (!tf6Var.request(length + 1) || !W(nw0Var.h(length))) {
                            nw0Var.skip(length);
                            this.n = i;
                            break;
                        }
                    } else {
                        int i13 = i12 + 1;
                        if (tf6Var.request(i13) && ((cH = nw0Var.h(i12)) == str2.charAt(i12) || cH == str.charAt(i12))) {
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
                    if (tf6Var.request(i4)) {
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
                            if (W(nw0Var.h(j))) {
                                J("Expected value");
                                throw null;
                            }
                            O();
                            throw null;
                        }
                        i6 = 6;
                        if (i2 != 5) {
                            i5 = i9;
                            if (i5 != 0) {
                                return i5;
                            }
                            if (W(nw0Var.h(j))) {
                                J("Expected value");
                                throw null;
                            }
                            O();
                            throw null;
                        }
                        i2 = i6;
                        i3 = i4;
                    }
                    if (i2 != 2) {
                        if (i2 != 2) {
                        }
                        this.q = i3;
                        i5 = 17;
                        this.n = 17;
                    } else {
                        if (i2 != 2) {
                        }
                        this.q = i3;
                        i5 = 17;
                        this.n = 17;
                    }
                    if (i5 != 0) {
                        return i5;
                    }
                    if (W(nw0Var.h(j))) {
                        J("Expected value");
                        throw null;
                    }
                    O();
                    throw null;
                }
            }
            if (i8 == 1) {
                nw0Var.readByte();
                this.n = 4;
                return 4;
            }
        }
        if (i8 == 1 || i8 == 2) {
            O();
            throw null;
        }
        J("Unexpected value");
        throw null;
    }

    public final int U(String str, ib ibVar) {
        int length = ((String[]) ibVar.b).length;
        for (int i = 0; i < length; i++) {
            if (str.equals(((String[]) ibVar.b)[i])) {
                this.n = 0;
                this.c[this.a - 1] = str;
                return i;
            }
        }
        return -1;
    }

    public final boolean W(int i) throws l {
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
        O();
        throw null;
    }

    public final String Y() throws l, EOFException {
        String strB0;
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        if (iS == 14) {
            strB0 = c0();
        } else if (iS == 13) {
            strB0 = b0(x);
        } else if (iS == 12) {
            strB0 = b0(t);
        } else {
            if (iS != 15) {
                x5.i(eq3.t(v()), j(), "Expected a name but was ");
                return null;
            }
            strB0 = this.r;
        }
        this.n = 0;
        this.c[this.a - 1] = strB0;
        return strB0;
    }

    public final int Z(boolean z) throws l, EOFException {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            tf6 tf6Var = this.f;
            if (!tf6Var.request(i2)) {
                if (z) {
                    throw new EOFException("End of input");
                }
                return -1;
            }
            long j = i;
            nw0 nw0Var = this.k;
            byte bH = nw0Var.h(j);
            if (bH != 10 && bH != 32 && bH != 13 && bH != 9) {
                nw0Var.skip(j);
                if (bH == 47) {
                    if (tf6Var.request(2L)) {
                        O();
                        throw null;
                    }
                } else if (bH == 35) {
                    O();
                    throw null;
                }
                return bH;
            }
            i = i2;
        }
    }

    @Override // defpackage.ul4
    public final void a() throws l, EOFException {
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        if (iS != 3) {
            x5.i(eq3.t(v()), j(), "Expected BEGIN_ARRAY but was ");
            return;
        }
        z(1);
        this.d[this.a - 1] = 0;
        this.n = 0;
    }

    @Override // defpackage.ul4
    public final void b() throws l, EOFException {
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        if (iS != 1) {
            x5.i(eq3.t(v()), j(), "Expected BEGIN_OBJECT but was ");
        } else {
            z(3);
            this.n = 0;
        }
    }

    public final String b0(hy0 hy0Var) throws l, EOFException {
        StringBuilder sb = null;
        while (true) {
            long jT = this.f.T(hy0Var);
            if (jT == -1) {
                J("Unterminated string");
                throw null;
            }
            nw0 nw0Var = this.k;
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
            sb.append(g0());
        }
    }

    public final String c0() {
        long jT = this.f.T(y);
        nw0 nw0Var = this.k;
        if (jT == -1) {
            return nw0Var.v();
        }
        nw0Var.getClass();
        return nw0Var.u(jT, f51.a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.n = 0;
        this.b[0] = 8;
        this.a = 1;
        this.k.a();
        this.f.close();
    }

    @Override // defpackage.ul4
    public final void g() throws l, EOFException {
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        if (iS != 4) {
            x5.i(eq3.t(v()), j(), "Expected END_ARRAY but was ");
            return;
        }
        int i = this.a;
        this.a = i - 1;
        int[] iArr = this.d;
        int i2 = i - 2;
        iArr[i2] = iArr[i2] + 1;
        this.n = 0;
    }

    public final char g0() throws l, EOFException {
        int i;
        tf6 tf6Var = this.f;
        if (!tf6Var.request(1L)) {
            J("Unterminated escape sequence");
            throw null;
        }
        nw0 nw0Var = this.k;
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
            J("Invalid escape sequence: \\" + ((char) b));
            throw null;
        }
        if (!tf6Var.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path ".concat(j()));
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
                    J("\\u".concat(nw0Var.u(4L, f51.a)));
                    throw null;
                }
                i = bH - 55;
            }
            c = (char) (i + c2);
        }
        nw0Var.skip(4L);
        return c;
    }

    @Override // defpackage.ul4
    public final void h() throws l, EOFException {
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        if (iS != 2) {
            x5.i(eq3.t(v()), j(), "Expected END_OBJECT but was ");
            return;
        }
        int i = this.a;
        int i2 = i - 1;
        this.a = i2;
        this.c[i2] = null;
        int[] iArr = this.d;
        int i3 = i - 2;
        iArr[i3] = iArr[i3] + 1;
        this.n = 0;
    }

    public final void h0(hy0 hy0Var) throws l, EOFException {
        while (true) {
            long jT = this.f.T(hy0Var);
            if (jT == -1) {
                J("Unterminated string");
                throw null;
            }
            nw0 nw0Var = this.k;
            if (nw0Var.h(jT) != 92) {
                nw0Var.skip(jT + 1);
                return;
            } else {
                nw0Var.skip(jT + 1);
                g0();
            }
        }
    }

    @Override // defpackage.ul4
    public final boolean m() throws l, EOFException {
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        return (iS == 2 || iS == 4 || iS == 18) ? false : true;
    }

    @Override // defpackage.ul4
    public final boolean n() throws l, EOFException {
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        if (iS == 5) {
            this.n = 0;
            int[] iArr = this.d;
            int i = this.a - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iS != 6) {
            x5.i(eq3.t(v()), j(), "Expected a boolean but was ");
            return false;
        }
        this.n = 0;
        int[] iArr2 = this.d;
        int i2 = this.a - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return false;
    }

    @Override // defpackage.ul4
    public final double q() throws l, EOFException {
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        if (iS == 16) {
            this.n = 0;
            int[] iArr = this.d;
            int i = this.a - 1;
            iArr[i] = iArr[i] + 1;
            return this.p;
        }
        if (iS == 17) {
            long j = this.q;
            nw0 nw0Var = this.k;
            nw0Var.getClass();
            this.r = nw0Var.u(j, f51.a);
        } else if (iS == 9) {
            this.r = b0(x);
        } else if (iS == 8) {
            this.r = b0(t);
        } else if (iS == 10) {
            this.r = c0();
        } else if (iS != 11) {
            x5.i(eq3.t(v()), j(), "Expected a double but was ");
            return 0.0d;
        }
        this.n = 11;
        try {
            double d = Double.parseDouble(this.r);
            if (Double.isNaN(d) || Double.isInfinite(d)) {
                throw new l("JSON forbids NaN and infinities: " + d + " at path " + j());
            }
            this.r = null;
            this.n = 0;
            int[] iArr2 = this.d;
            int i2 = this.a - 1;
            iArr2[i2] = iArr2[i2] + 1;
            return d;
        } catch (NumberFormatException unused) {
            x5.i(this.r, j(), "Expected a double but was ");
            return 0.0d;
        }
    }

    @Override // defpackage.ul4
    public final int r() throws l, EOFException {
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        if (iS == 16) {
            long j = this.p;
            int i = (int) j;
            if (j == i) {
                this.n = 0;
                int[] iArr = this.d;
                int i2 = this.a - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
            throw new mj4("Expected an int but was " + this.p + " at path " + j());
        }
        if (iS == 17) {
            long j2 = this.q;
            nw0 nw0Var = this.k;
            nw0Var.getClass();
            this.r = nw0Var.u(j2, f51.a);
        } else if (iS == 9 || iS == 8) {
            String strB0 = iS == 9 ? b0(x) : b0(t);
            this.r = strB0;
            try {
                int i3 = Integer.parseInt(strB0);
                this.n = 0;
                int[] iArr2 = this.d;
                int i4 = this.a - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException unused) {
            }
        } else if (iS != 11) {
            x5.i(eq3.t(v()), j(), "Expected an int but was ");
            return 0;
        }
        this.n = 11;
        try {
            double d = Double.parseDouble(this.r);
            int i5 = (int) d;
            if (i5 != d) {
                x5.i(this.r, j(), "Expected an int but was ");
                return 0;
            }
            this.r = null;
            this.n = 0;
            int[] iArr3 = this.d;
            int i6 = this.a - 1;
            iArr3[i6] = iArr3[i6] + 1;
            return i5;
        } catch (NumberFormatException unused2) {
            x5.i(this.r, j(), "Expected an int but was ");
            return 0;
        }
    }

    public final String toString() {
        return "JsonReader(" + this.f + ")";
    }

    @Override // defpackage.ul4
    public final String u() throws l, EOFException {
        String strU;
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        if (iS == 10) {
            strU = c0();
        } else if (iS == 9) {
            strU = b0(x);
        } else if (iS == 8) {
            strU = b0(t);
        } else if (iS == 11) {
            strU = this.r;
            this.r = null;
        } else if (iS == 16) {
            strU = Long.toString(this.p);
        } else {
            if (iS != 17) {
                x5.i(eq3.t(v()), j(), "Expected a string but was ");
                return null;
            }
            long j = this.q;
            nw0 nw0Var = this.k;
            nw0Var.getClass();
            strU = nw0Var.u(j, f51.a);
        }
        this.n = 0;
        int[] iArr = this.d;
        int i = this.a - 1;
        iArr[i] = iArr[i] + 1;
        return strU;
    }

    @Override // defpackage.ul4
    public final int v() throws l, EOFException {
        int iS = this.n;
        if (iS == 0) {
            iS = S();
        }
        switch (iS) {
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
}
