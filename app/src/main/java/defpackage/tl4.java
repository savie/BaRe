package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class tl4 implements Closeable {
    private final Reader in;
    private int[] pathIndices;
    private String[] pathNames;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int[] stack;
    private int strictness = 2;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    int peeked = 0;
    private int stackSize = 1;

    static {
        sl4.a = new sl4();
    }

    public tl4(Reader reader) {
        int[] iArr = new int[32];
        this.stack = iArr;
        iArr[0] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.in = reader;
    }

    public final void A(String str) throws m55 {
        StringBuilder sbS = dj7.s(str);
        sbS.append(locationString$1());
        sbS.append("\nSee ");
        sbS.append("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("malformed-json"));
        throw new m55(sbS.toString());
    }

    public final IllegalStateException D(String str) {
        String str2 = peek() == 9 ? "adapter-not-null-safe" : "unexpected-json-structure";
        StringBuilder sbU = dj7.u("Expected ", str, " but was ");
        sbU.append(eq3.u(peek()));
        sbU.append(locationString$1());
        sbU.append("\nSee ");
        sbU.append("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat(str2));
        return new IllegalStateException(sbU.toString());
    }

    public final void G(String str) throws m55 {
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) > 127) {
                A("String contains non-ASCII characters: ".concat(str));
                throw null;
            }
        }
    }

    public final void a() throws m55 {
        if (this.strictness == 1) {
            return;
        }
        A("Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON");
        throw null;
    }

    public final boolean b(int i) throws IOException {
        int i2;
        int i3;
        int i4 = this.lineStart;
        int i5 = this.pos;
        this.lineStart = i4 - i5;
        int i6 = this.limit;
        char[] cArr = this.buffer;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.limit = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            int i8 = this.limit;
            int i9 = this.in.read(cArr, i8, cArr.length - i8);
            if (i9 == -1) {
                return false;
            }
            i2 = this.limit + i9;
            this.limit = i2;
            if (this.lineNumber == 0 && (i3 = this.lineStart) == 0 && i2 > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart = i3 + 1;
                i++;
            }
        } while (i2 < i);
        return true;
    }

    public void beginArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 3) {
            throw D("BEGIN_ARRAY");
        }
        q(1);
        this.pathIndices[this.stackSize - 1] = 0;
        this.peeked = 0;
    }

    public void beginObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 1) {
            throw D("BEGIN_OBJECT");
        }
        q(3);
        this.peeked = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.in.close();
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0184 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:120:0x0185  */
    /* JADX WARN: Code duplicated, block: B:123:0x0196  */
    /* JADX WARN: Code duplicated, block: B:126:0x019c  */
    /* JADX WARN: Code duplicated, block: B:130:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:131:0x01ad A[PHI: r1 r10
      0x01ad: PHI (r1v56 int) = (r1v55 int), (r1v72 int) binds: [B:122:0x0194, B:130:0x01a9] A[DONT_GENERATE, DONT_INLINE]
      0x01ad: PHI (r10v6 int) = (r10v5 int), (r10v7 int) binds: [B:122:0x0194, B:130:0x01a9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:133:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:135:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:176:0x0227  */
    /* JADX WARN: Code duplicated, block: B:177:0x0229  */
    /* JADX WARN: Code duplicated, block: B:190:0x024c A[DONT_INVERT, PHI: r8
      0x024c: PHI (r8v20 char) = (r8v19 char), (r8v21 char) binds: [B:175:0x0225, B:181:0x0232] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:191:0x024e  */
    /* JADX WARN: Code duplicated, block: B:204:0x026a  */
    /* JADX WARN: Code duplicated, block: B:206:0x026d  */
    /* JADX WARN: Code duplicated, block: B:209:0x0272 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:213:0x027e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:214:0x027f  */
    /* JADX WARN: Code duplicated, block: B:216:0x0289  */
    /* JADX WARN: Code duplicated, block: B:218:0x0291  */
    /* JADX WARN: Code duplicated, block: B:280:0x0199 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:281:0x0199 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:282:0x01a4 A[SYNTHETIC] */
    public final int doPeek() throws IOException {
        int iJ;
        int i;
        String str;
        String str2;
        int i2;
        int i3;
        char c;
        int i4;
        int i5;
        boolean z;
        int i6;
        char c2;
        char c3;
        int i7;
        char c4;
        int[] iArr = this.stack;
        boolean z2 = true;
        int i8 = this.stackSize - 1;
        int i9 = iArr[i8];
        char[] cArr = this.buffer;
        if (i9 == 1) {
            iArr[i8] = 2;
        } else if (i9 == 2) {
            int iJ2 = j(true);
            if (iJ2 != 44) {
                if (iJ2 != 59) {
                    if (iJ2 == 93) {
                        this.peeked = 4;
                        return 4;
                    }
                    A("Unterminated array");
                    throw null;
                }
                a();
            }
        } else {
            if (i9 == 3 || i9 == 5) {
                iArr[i8] = 4;
                if (i9 == 5 && (iJ = j(true)) != 44) {
                    if (iJ != 59) {
                        if (iJ == 125) {
                            this.peeked = 2;
                            return 2;
                        }
                        A("Unterminated object");
                        throw null;
                    }
                    a();
                }
                int iJ3 = j(true);
                if (iJ3 == 34) {
                    this.peeked = 13;
                    return 13;
                }
                if (iJ3 == 39) {
                    a();
                    this.peeked = 12;
                    return 12;
                }
                if (iJ3 == 125) {
                    if (i9 != 5) {
                        this.peeked = 2;
                        return 2;
                    }
                    A("Expected name");
                    throw null;
                }
                a();
                this.pos--;
                if (h((char) iJ3)) {
                    this.peeked = 14;
                    return 14;
                }
                A("Expected name");
                throw null;
            }
            if (i9 == 4) {
                iArr[i8] = 5;
                int iJ4 = j(true);
                if (iJ4 != 58) {
                    if (iJ4 != 61) {
                        A("Expected ':'");
                        throw null;
                    }
                    a();
                    if (this.pos < this.limit || b(1)) {
                        int i10 = this.pos;
                        if (cArr[i10] == '>') {
                            this.pos = i10 + 1;
                        }
                    }
                }
            } else if (i9 == 6) {
                if (this.strictness == 1) {
                    j(true);
                    int i11 = this.pos;
                    this.pos = i11 - 1;
                    if (i11 + 4 <= this.limit || b(5)) {
                        int i12 = this.pos;
                        if (cArr[i12] == ')' && cArr[i12 + 1] == ']' && cArr[i12 + 2] == '}' && cArr[i12 + 3] == '\'' && cArr[i12 + 4] == '\n') {
                            this.pos = i12 + 5;
                        }
                    }
                }
                this.stack[this.stackSize - 1] = 7;
            } else if (i9 == 7) {
                if (j(false) == -1) {
                    this.peeked = 17;
                    return 17;
                }
                a();
                this.pos--;
            } else if (i9 == 8) {
                l0.e("JsonReader is closed");
                return 0;
            }
        }
        int iJ5 = j(true);
        if (iJ5 == 34) {
            this.peeked = 9;
            return 9;
        }
        if (iJ5 == 39) {
            a();
            this.peeked = 8;
            return 8;
        }
        if (iJ5 == 44 || iJ5 == 59) {
            i = 1;
        } else {
            if (iJ5 == 91) {
                this.peeked = 3;
                return 3;
            }
            if (iJ5 != 93) {
                if (iJ5 == 123) {
                    this.peeked = 1;
                    return 1;
                }
                int i13 = this.pos - 1;
                this.pos = i13;
                char c5 = cArr[i13];
                if (c5 == 't' || c5 == 'T') {
                    str = "true";
                    str2 = "TRUE";
                    i2 = 5;
                } else {
                    if (c5 != 'f' && c5 != 'F') {
                        if (c5 != 'n' && c5 != 'N') {
                            i3 = 0;
                            break;
                        }
                        str = "null";
                        str2 = "NULL";
                        i2 = 7;
                        if (i3 != 0) {
                            return i3;
                        }
                        i4 = this.pos;
                        i5 = this.limit;
                        z = true;
                        i6 = 0;
                        long j = 0;
                        boolean z3 = false;
                        c2 = 0;
                        while (true) {
                            if (i4 + i6 != i5) {
                                c3 = cArr[i4 + i6];
                                if (c3 != '+') {
                                    if (c3 != 'E' || c3 == 'e') {
                                        if (c2 != 2 || c2 == 4) {
                                            c2 = 5;
                                            i6++;
                                            z2 = true;
                                        }
                                    } else if (c3 == '-') {
                                        if (c2 == 0) {
                                            z3 = true;
                                            c2 = 1;
                                        } else {
                                            if (c2 != 5) {
                                            }
                                            c2 = 6;
                                        }
                                        i6++;
                                        z2 = true;
                                    } else if (c3 != '.') {
                                        if (c3 >= '0' && c3 <= '9') {
                                            if (c2 == z2 || c2 == 0) {
                                                j = -(c3 - '0');
                                                c2 = 2;
                                            } else if (c2 != 2) {
                                                long j2 = j;
                                                if (c2 == 3) {
                                                    j = j2;
                                                    c2 = 4;
                                                } else if (c2 == 5 || c2 == 6) {
                                                    j = j2;
                                                    c2 = 7;
                                                } else {
                                                    j = j2;
                                                }
                                            } else if (j != 0) {
                                                long j3 = j;
                                                long j4 = (10 * j) - ((long) (c3 - '0'));
                                                z &= j3 > -922337203685477580L || (j3 == -922337203685477580L && j4 < j3);
                                                j = j4;
                                            }
                                            i6++;
                                            z2 = true;
                                        } else if (!h(c3)) {
                                            c4 = 2;
                                            if (c2 != 2) {
                                                if (c2 != c4 || c2 == 4 || c2 == 7) {
                                                    this.peekedNumberLength = i6;
                                                    i7 = 16;
                                                    this.peeked = 16;
                                                }
                                            } else if (z || ((j == Long.MIN_VALUE && !z3) || (j == 0 && z3))) {
                                                c4 = 2;
                                                if (c2 != c4) {
                                                }
                                                this.peekedNumberLength = i6;
                                                i7 = 16;
                                                this.peeked = 16;
                                            } else {
                                                long j5 = j;
                                                if (!z3) {
                                                    j5 = -j5;
                                                }
                                                this.peekedLong = j5;
                                                this.pos += i6;
                                                i7 = 15;
                                                this.peeked = 15;
                                            }
                                        }
                                    } else if (c2 == 2) {
                                        c2 = 3;
                                        i6++;
                                        z2 = true;
                                    }
                                    if (i7 != 0) {
                                        return i7;
                                    }
                                    if (h(cArr[this.pos])) {
                                        A("Expected value");
                                        throw null;
                                    }
                                    a();
                                    this.peeked = 10;
                                    return 10;
                                }
                                if (c2 != 5) {
                                }
                                c2 = 6;
                                i6++;
                                z2 = true;
                            } else if (i6 != cArr.length) {
                                if (!b(i6 + 1)) {
                                    i4 = this.pos;
                                    i5 = this.limit;
                                    c3 = cArr[i4 + i6];
                                    if (c3 != '+') {
                                        if (c3 != 'E') {
                                            if (c2 != 2) {
                                            }
                                            c2 = 5;
                                            i6++;
                                            z2 = true;
                                        } else {
                                            if (c2 != 2) {
                                            }
                                            c2 = 5;
                                            i6++;
                                            z2 = true;
                                        }
                                        if (i7 != 0) {
                                            return i7;
                                        }
                                        if (h(cArr[this.pos])) {
                                            A("Expected value");
                                            throw null;
                                        }
                                        a();
                                        this.peeked = 10;
                                        return 10;
                                    }
                                    if (c2 != 5) {
                                    }
                                    c2 = 6;
                                    i6++;
                                    z2 = true;
                                }
                                c4 = 2;
                                if (c2 != 2) {
                                    if (c2 != c4) {
                                    }
                                    this.peekedNumberLength = i6;
                                    i7 = 16;
                                    this.peeked = 16;
                                } else {
                                    if (z) {
                                    }
                                    c4 = 2;
                                    if (c2 != c4) {
                                    }
                                    this.peekedNumberLength = i6;
                                    i7 = 16;
                                    this.peeked = 16;
                                }
                                if (i7 != 0) {
                                    return i7;
                                }
                                if (h(cArr[this.pos])) {
                                    A("Expected value");
                                    throw null;
                                }
                                a();
                                this.peeked = 10;
                                return 10;
                            }
                            i7 = 0;
                            if (i7 != 0) {
                                return i7;
                            }
                            if (h(cArr[this.pos])) {
                                A("Expected value");
                                throw null;
                            }
                            a();
                            this.peeked = 10;
                            return 10;
                        }
                    }
                    str = "false";
                    str2 = "FALSE";
                    i2 = 6;
                }
                boolean z4 = this.strictness != 3;
                int length = str.length();
                int i14 = 0;
                while (true) {
                    int i15 = this.pos;
                    int i16 = this.limit;
                    if (i14 >= length) {
                        if ((i15 + length >= i16 && !b(length + 1)) || !h(cArr[this.pos + length])) {
                            this.pos += length;
                            this.peeked = i2;
                            i3 = i2;
                            break;
                        }
                        break;
                    }
                    if ((i15 + i14 < i16 || b(i14 + 1)) && ((c = cArr[this.pos + i14]) == str.charAt(i14) || (z4 && c == str2.charAt(i14)))) {
                        i14++;
                    }
                    i3 = 0;
                    break;
                }
                if (i3 != 0) {
                    return i3;
                }
                i4 = this.pos;
                i5 = this.limit;
                z = true;
                i6 = 0;
                long j6 = 0;
                boolean z5 = false;
                c2 = 0;
                while (true) {
                    if (i4 + i6 != i5) {
                        c3 = cArr[i4 + i6];
                        if (c3 != '+') {
                            if (c3 != 'E') {
                                if (c2 != 2) {
                                }
                                c2 = 5;
                                i6++;
                                z2 = true;
                            } else {
                                if (c2 != 2) {
                                }
                                c2 = 5;
                                i6++;
                                z2 = true;
                            }
                            if (i7 != 0) {
                                return i7;
                            }
                            if (h(cArr[this.pos])) {
                                A("Expected value");
                                throw null;
                            }
                            a();
                            this.peeked = 10;
                            return 10;
                        }
                        if (c2 != 5) {
                        }
                        c2 = 6;
                        i6++;
                        z2 = true;
                    } else if (i6 != cArr.length) {
                        if (!b(i6 + 1)) {
                            i4 = this.pos;
                            i5 = this.limit;
                            c3 = cArr[i4 + i6];
                            if (c3 != '+') {
                                if (c3 != 'E') {
                                    if (c2 != 2) {
                                    }
                                    c2 = 5;
                                    i6++;
                                    z2 = true;
                                } else {
                                    if (c2 != 2) {
                                    }
                                    c2 = 5;
                                    i6++;
                                    z2 = true;
                                }
                                if (i7 != 0) {
                                    return i7;
                                }
                                if (h(cArr[this.pos])) {
                                    A("Expected value");
                                    throw null;
                                }
                                a();
                                this.peeked = 10;
                                return 10;
                            }
                            if (c2 != 5) {
                            }
                            c2 = 6;
                            i6++;
                            z2 = true;
                        }
                        c4 = 2;
                        if (c2 != 2) {
                            if (c2 != c4) {
                            }
                            this.peekedNumberLength = i6;
                            i7 = 16;
                            this.peeked = 16;
                        } else {
                            if (z) {
                            }
                            c4 = 2;
                            if (c2 != c4) {
                            }
                            this.peekedNumberLength = i6;
                            i7 = 16;
                            this.peeked = 16;
                        }
                        if (i7 != 0) {
                            return i7;
                        }
                        if (h(cArr[this.pos])) {
                            A("Expected value");
                            throw null;
                        }
                        a();
                        this.peeked = 10;
                        return 10;
                    }
                    i7 = 0;
                    if (i7 != 0) {
                        return i7;
                    }
                    if (h(cArr[this.pos])) {
                        A("Expected value");
                        throw null;
                    }
                    a();
                    this.peeked = 10;
                    return 10;
                }
            }
            i = 1;
            if (i9 == 1) {
                this.peeked = 4;
                return 4;
            }
        }
        if (i9 != i && i9 != 2) {
            A("Unexpected value");
            throw null;
        }
        a();
        this.pos -= i;
        this.peeked = 7;
        return 7;
    }

    public void endArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 4) {
            throw D("END_ARRAY");
        }
        int i = this.stackSize;
        this.stackSize = i - 1;
        int[] iArr = this.pathIndices;
        int i2 = i - 2;
        iArr[i2] = iArr[i2] + 1;
        this.peeked = 0;
    }

    public void endObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 2) {
            throw D("END_OBJECT");
        }
        int i = this.stackSize;
        int i2 = i - 1;
        this.stackSize = i2;
        this.pathNames[i2] = null;
        int[] iArr = this.pathIndices;
        int i3 = i - 2;
        iArr[i3] = iArr[i3] + 1;
        this.peeked = 0;
    }

    public final String g(boolean z) {
        StringBuilder sb = new StringBuilder("$");
        int i = 0;
        while (true) {
            int i2 = this.stackSize;
            if (i >= i2) {
                return sb.toString();
            }
            int i3 = this.stack[i];
            switch (i3) {
                case 1:
                case 2:
                    int i4 = this.pathIndices[i];
                    if (z && i4 > 0 && i == i2 - 1) {
                        i4--;
                    }
                    sb.append('[');
                    sb.append(i4);
                    sb.append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    sb.append('.');
                    String str = this.pathNames[i];
                    if (str != null) {
                        sb.append(str);
                    }
                    break;
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    e6.e(fz5.j(i3, "Unknown scope value: "));
                    return null;
            }
            i++;
        }
    }

    public String getPath() {
        return g(false);
    }

    public String getPreviousPath() {
        return g(true);
    }

    public final int getStrictness() {
        return this.strictness;
    }

    public final boolean h(char c) throws m55 {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        a();
        return false;
    }

    public boolean hasNext() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        return (iDoPeek == 2 || iDoPeek == 4 || iDoPeek == 17) ? false : true;
    }

    public final boolean isLenient() {
        return this.strictness == 1;
    }

    public final int j(boolean z) throws IOException {
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            if (i == i2) {
                this.pos = i;
                if (!b(1)) {
                    if (z) {
                        throw new EOFException("End of input".concat(locationString$1()));
                    }
                    return -1;
                }
                i = this.pos;
                i2 = this.limit;
            }
            int i3 = i + 1;
            char[] cArr = this.buffer;
            char c = cArr[i];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = i3;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.pos = i3;
                    if (i3 == i2) {
                        this.pos = i;
                        boolean zB = b(2);
                        this.pos++;
                        if (!zB) {
                        }
                        return c;
                    }
                    a();
                    int i4 = this.pos;
                    char c2 = cArr[i4];
                    if (c2 == '*') {
                        this.pos = i4 + 1;
                        while (true) {
                            if (this.pos + 2 > this.limit && !b(2)) {
                                A("Unterminated comment");
                                throw null;
                            }
                            int i5 = this.pos;
                            if (cArr[i5] != '\n') {
                                int i6 = 0;
                                while (true) {
                                    int i7 = this.pos;
                                    if (i6 >= 2) {
                                        i = i7 + 2;
                                        i2 = this.limit;
                                        break;
                                    }
                                    if (cArr[i7 + i6] != "*/".charAt(i6)) {
                                        break;
                                    }
                                    i6++;
                                }
                            } else {
                                this.lineNumber++;
                                this.lineStart = i5 + 1;
                            }
                            this.pos++;
                        }
                    } else {
                        if (c2 != '/') {
                            return c;
                        }
                        this.pos = i4 + 1;
                        v();
                        i = this.pos;
                        i2 = this.limit;
                    }
                } else {
                    if (c != '#') {
                        this.pos = i3;
                        return c;
                    }
                    this.pos = i3;
                    a();
                    v();
                    i = this.pos;
                    i2 = this.limit;
                }
            }
            i = i3;
        }
    }

    final String locationString$1() {
        StringBuilder sbN = xs1.n(" at line ", this.lineNumber + 1, " column ", " path ", (this.pos - this.lineStart) + 1);
        sbN.append(getPath());
        return sbN.toString();
    }

    public final String m(char c) throws m55 {
        int i;
        char[] cArr;
        StringBuilder sb = null;
        do {
            int i2 = this.pos;
            int i3 = this.limit;
            while (true) {
                int i4 = i3;
                i = i2;
                while (true) {
                    cArr = this.buffer;
                    if (i2 < i4) {
                        int i5 = i2 + 1;
                        char c2 = cArr[i2];
                        if (this.strictness == 3 && c2 < ' ') {
                            A("Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode");
                            throw null;
                        }
                        if (c2 == c) {
                            this.pos = i5;
                            int i6 = (i5 - i) - 1;
                            if (sb == null) {
                                return new String(cArr, i, i6);
                            }
                            sb.append(cArr, i, i6);
                            return sb.toString();
                        }
                        if (c2 == '\\') {
                            this.pos = i5;
                            int i7 = i5 - i;
                            int i8 = i7 - 1;
                            if (sb == null) {
                                sb = new StringBuilder(Math.max(i7 * 2, 16));
                            }
                            sb.append(cArr, i, i8);
                            sb.append(r());
                            i2 = this.pos;
                            i3 = this.limit;
                        } else {
                            if (c2 == '\n') {
                                this.lineNumber++;
                                this.lineStart = i5;
                            }
                            i2 = i5;
                        }
                    }
                }
            }
            if (sb == null) {
                sb = new StringBuilder(Math.max((i2 - i) * 2, 16));
            }
            sb.append(cArr, i, i2 - i);
            this.pos = i2;
        } while (b(1));
        A("Unterminated string");
        throw null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0042. Please report as an issue. */
    public final String n() throws m55 {
        String string;
        StringBuilder sb = null;
        int i = 0;
        while (true) {
            int i2 = 0;
            while (true) {
                int i3 = this.pos + i2;
                int i4 = this.limit;
                char[] cArr = this.buffer;
                if (i3 < i4) {
                    char c = cArr[i3];
                    if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                        if (c != '#') {
                            if (c != ',') {
                                if (c != '/' && c != '=') {
                                    if (c != '{' && c != '}' && c != ':') {
                                        if (c != ';') {
                                            switch (c) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i2++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        a();
                    }
                    i = i2;
                } else if (i2 >= cArr.length) {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max(i2, 16));
                    }
                    sb.append(cArr, this.pos, i2);
                    this.pos += i2;
                    if (!b(1)) {
                    }
                } else if (!b(i2 + 1)) {
                    i = i2;
                }
                int i5 = this.pos;
                if (sb == null) {
                    string = new String(cArr, i5, i);
                } else {
                    sb.append(cArr, i5, i);
                    string = sb.toString();
                }
                this.pos += i;
                return string;
            }
        }
    }

    public boolean nextBoolean() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iDoPeek != 6) {
            throw D("a boolean");
        }
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return false;
    }

    public double nextDouble() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (iDoPeek == 8 || iDoPeek == 9) {
            this.peekedString = m(iDoPeek == 8 ? '\'' : '\"');
        } else if (iDoPeek == 10) {
            this.peekedString = n();
        } else if (iDoPeek != 11) {
            throw D("a double");
        }
        this.peeked = 11;
        double d = Double.parseDouble(this.peekedString);
        if (this.strictness != 1 && (Double.isNaN(d) || Double.isInfinite(d))) {
            A("JSON forbids NaN and infinities: " + d);
            throw null;
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return d;
    }

    public int nextInt() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            long j = this.peekedLong;
            int i = (int) j;
            if (j == i) {
                this.peeked = 0;
                int[] iArr = this.pathIndices;
                int i2 = this.stackSize - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
            throw new NumberFormatException("Expected an int but was " + this.peekedLong + locationString$1());
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek != 8 && iDoPeek != 9 && iDoPeek != 10) {
                throw D("an int");
            }
            if (iDoPeek == 10) {
                this.peekedString = n();
            } else {
                this.peekedString = m(iDoPeek == 8 ? '\'' : '\"');
            }
            G(this.peekedString);
            try {
                int i3 = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i4 = this.stackSize - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double d = Double.parseDouble(this.peekedString);
        int i5 = (int) d;
        if (i5 != d) {
            y5.f(this.peekedString, locationString$1(), "Expected an int but was ");
            return 0;
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i6 = this.stackSize - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    public long nextLong() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i = this.stackSize - 1;
            iArr[i] = iArr[i] + 1;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek != 8 && iDoPeek != 9 && iDoPeek != 10) {
                throw D("a long");
            }
            if (iDoPeek == 10) {
                this.peekedString = n();
            } else {
                this.peekedString = m(iDoPeek == 8 ? '\'' : '\"');
            }
            G(this.peekedString);
            try {
                long j = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i2 = this.stackSize - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return j;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double d = Double.parseDouble(this.peekedString);
        long j2 = (long) d;
        if (j2 != d) {
            y5.f(this.peekedString, locationString$1(), "Expected a long but was ");
            return 0L;
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i3 = this.stackSize - 1;
        iArr3[i3] = iArr3[i3] + 1;
        return j2;
    }

    public String nextName() throws IOException {
        String strM;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 14) {
            strM = n();
        } else if (iDoPeek == 12) {
            strM = m('\'');
        } else {
            if (iDoPeek != 13) {
                throw D("a name");
            }
            strM = m('\"');
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = strM;
        return strM;
    }

    public void nextNull() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 7) {
            throw D("null");
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
    }

    public String nextString() {
        String str;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 10) {
            str = n();
        } else if (iDoPeek == 8) {
            str = m('\'');
        } else if (iDoPeek == 9) {
            str = m('\"');
        } else if (iDoPeek == 11) {
            str = this.peekedString;
            this.peekedString = null;
        } else if (iDoPeek == 15) {
            str = Long.toString(this.peekedLong);
        } else {
            if (iDoPeek != 16) {
                throw D("a string");
            }
            str = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        return str;
    }

    public int peek() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        switch (iDoPeek) {
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
                return 5;
            case 15:
            case Argon2.V10 /* 16 */:
                return 7;
            case 17:
                return 10;
            default:
                d6.n();
                return 0;
        }
    }

    public final void q(int i) throws m55 {
        int i2 = this.stackSize;
        if (i2 - 1 >= 255) {
            throw new m55("Nesting limit 255 reached".concat(locationString$1()));
        }
        int[] iArr = this.stack;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.stack = Arrays.copyOf(iArr, i3);
            this.pathIndices = Arrays.copyOf(this.pathIndices, i3);
            this.pathNames = (String[]) Arrays.copyOf(this.pathNames, i3);
        }
        int[] iArr2 = this.stack;
        int i4 = this.stackSize;
        this.stackSize = i4 + 1;
        iArr2[i4] = i;
    }

    public final char r() throws m55 {
        int i;
        if (this.pos == this.limit && !b(1)) {
            A("Unterminated escape sequence");
            throw null;
        }
        int i2 = this.pos;
        int i3 = i2 + 1;
        this.pos = i3;
        char[] cArr = this.buffer;
        char c = cArr[i2];
        if (c != '\n') {
            if (c != '\"') {
                if (c != '\'') {
                    if (c != '/' && c != '\\') {
                        if (c == 'b') {
                            return '\b';
                        }
                        if (c == 'f') {
                            return '\f';
                        }
                        if (c == 'n') {
                            return '\n';
                        }
                        if (c == 'r') {
                            return '\r';
                        }
                        if (c == 't') {
                            return '\t';
                        }
                        if (c != 'u') {
                            A("Invalid escape sequence");
                            throw null;
                        }
                        if (i2 + 5 > this.limit && !b(4)) {
                            A("Unterminated escape sequence");
                            throw null;
                        }
                        int i4 = this.pos;
                        int i5 = i4 + 4;
                        int i6 = 0;
                        while (i4 < i5) {
                            char c2 = cArr[i4];
                            int i7 = i6 << 4;
                            if (c2 >= '0' && c2 <= '9') {
                                i = c2 - '0';
                            } else if (c2 >= 'a' && c2 <= 'f') {
                                i = c2 - 'W';
                            } else {
                                if (c2 < 'A' || c2 > 'F') {
                                    A("Malformed Unicode escape \\u".concat(new String(cArr, this.pos, 4)));
                                    throw null;
                                }
                                i = c2 - '7';
                            }
                            i6 = i + i7;
                            i4++;
                        }
                        this.pos += 4;
                        return (char) i6;
                    }
                }
            }
            return c;
        }
        if (this.strictness == 3) {
            A("Cannot escape a newline character in strict mode");
            throw null;
        }
        this.lineNumber++;
        this.lineStart = i3;
        if (this.strictness == 3) {
            A("Invalid escaped character \"'\" in strict mode");
            throw null;
        }
        return c;
    }

    public final void setStrictness(int i) {
        if (i == 0) {
            throw null;
        }
        this.strictness = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void skipValue() throws IOException {
        int i = 0;
        do {
            int iDoPeek = this.peeked;
            if (iDoPeek == 0) {
                iDoPeek = doPeek();
            }
            switch (iDoPeek) {
                case 1:
                    q(3);
                    i++;
                    this.peeked = 0;
                    break;
                case 2:
                    if (i == 0) {
                        this.pathNames[this.stackSize - 1] = null;
                    }
                    this.stackSize--;
                    i--;
                    this.peeked = 0;
                    break;
                case 3:
                    q(1);
                    i++;
                    this.peeked = 0;
                    break;
                case 4:
                    this.stackSize--;
                    i--;
                    this.peeked = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                case 15:
                default:
                    this.peeked = 0;
                    break;
                case 8:
                    u('\'');
                    this.peeked = 0;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    u('\"');
                    this.peeked = 0;
                    break;
                case 10:
                    z();
                    this.peeked = 0;
                    break;
                case 12:
                    u('\'');
                    if (i == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                    }
                    this.peeked = 0;
                    break;
                case 13:
                    u('\"');
                    if (i == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                    }
                    this.peeked = 0;
                    break;
                case 14:
                    z();
                    if (i == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                    }
                    this.peeked = 0;
                    break;
                case Argon2.V10 /* 16 */:
                    this.pos += this.peekedNumberLength;
                    this.peeked = 0;
                    break;
                case 17:
                    break;
            }
            return;
        } while (i > 0);
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
    }

    public String toString() {
        return getClass().getSimpleName().concat(locationString$1());
    }

    public final void u(char c) throws m55 {
        do {
            int i = this.pos;
            int i2 = this.limit;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = this.buffer[i];
                if (c2 == c) {
                    this.pos = i3;
                    return;
                }
                if (c2 == '\\') {
                    this.pos = i3;
                    r();
                    i = this.pos;
                    i2 = this.limit;
                } else {
                    if (c2 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i3;
                    }
                    i = i3;
                }
            }
            this.pos = i;
        } while (b(1));
        A("Unterminated string");
        throw null;
    }

    public final void v() {
        char c;
        do {
            if (this.pos >= this.limit && !b(1)) {
                return;
            }
            int i = this.pos;
            int i2 = i + 1;
            this.pos = i2;
            c = this.buffer[i];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = i2;
                return;
            }
        } while (c != '\r');
    }

    public final void z() throws m55 {
        do {
            int i = 0;
            while (true) {
                int i2 = this.pos + i;
                if (i2 < this.limit) {
                    char c = this.buffer[i2];
                    if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                        if (c != '#') {
                            if (c != ',') {
                                if (c != '/' && c != '=') {
                                    if (c != '{' && c != '}' && c != ':') {
                                        if (c != ';') {
                                            switch (c) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i++;
                                                    break;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                        a();
                    }
                    this.pos += i;
                    return;
                }
                this.pos = i2;
            }
        } while (b(1));
    }
}
