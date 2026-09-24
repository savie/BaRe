package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class my5 implements s03 {
    public final bq1 a = new bq1();
    public final bq1 b = new bq1();
    public final ArrayList c;
    public final ArrayList d;
    public final ArrayList e;
    public final StringBuilder f;
    public final String k;
    public String n;
    public final cz4 p;
    public final boolean q;
    public final char[] r;
    public final int t;
    public final int x;
    public final int y;

    /* JADX WARN: Code duplicated, block: B:124:0x01b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x01ab  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2, types: [int] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    public my5(String str, vb8 vb8Var, vq3 vq3Var) throws sf5 {
        ?? r16;
        int i;
        String strSubstring;
        int i2;
        ?? r17;
        ?? r18;
        ArrayList arrayList = new ArrayList();
        this.c = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.d = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        this.e = arrayList3;
        this.f = new StringBuilder();
        this.p = vq3Var.a;
        int i3 = 0;
        if (str != null) {
            int length = str.length();
            this.t = length;
            char[] cArr = new char[length];
            this.r = cArr;
            str.getChars(0, length, cArr, 0);
        }
        char[] cArr2 = this.r;
        int i4 = this.y;
        char c = cArr2[i4];
        char c2 = '/';
        if (c == '/') {
            throw new sf5("Path '%s' in %s references document root", str, vb8Var);
        }
        ?? r12 = 1;
        if (c == '.') {
            if (cArr2.length > 1) {
                int i5 = i4 + 1;
                if (cArr2[i5] != '/') {
                    throw new sf5("Path '%s' in %s has an illegal syntax", str, vb8Var);
                }
                this.y = i5;
            }
            int i6 = this.y + 1;
            this.y = i6;
            this.x = i6;
        }
        while (true) {
            int i7 = this.y;
            if (i7 >= this.t) {
                boolean z = r12 == true ? 1 : 0;
                int i8 = i7 - 1;
                char[] cArr3 = this.r;
                if (i8 >= cArr3.length || cArr3[i8] == '/') {
                    this.y = i8;
                }
                StringBuilder sb = this.f;
                int size = arrayList3.size();
                int i9 = size - 1;
                for (int i10 = i3; i10 < size; i10++) {
                    String str2 = (String) arrayList2.get(i10);
                    String str3 = (String) arrayList3.get(i10);
                    int iIntValue = ((Integer) arrayList.get(i10)).intValue();
                    if (i10 > 0) {
                        sb.append('/');
                    }
                    if (this.q && i10 == i9) {
                        sb.append('@');
                        sb.append(str3);
                    } else {
                        if (str2 != null) {
                            sb.append(str2);
                            sb.append(':');
                        }
                        sb.append(str3);
                        sb.append('[');
                        sb.append(iIntValue);
                        sb.append(']');
                    }
                }
                this.k = sb.toString();
                return;
            }
            if (this.q) {
                throw new sf5("Path '%s' in %s references an invalid attribute", str, vb8Var);
            }
            cz4 cz4Var = this.p;
            char c3 = this.r[i7];
            if (c3 == c2) {
                throw new sf5("Invalid path expression '%s' in %s", str, vb8Var);
            }
            if (c3 == '@') {
                int i11 = i7 + 1;
                this.y = i11;
                while (true) {
                    int i12 = this.y;
                    if (i12 >= this.t) {
                        if (i12 <= i11) {
                            throw new sf5("Attribute reference in '%s' for %s is empty", str, vb8Var);
                        }
                        this.q = r12;
                        int i13 = i12 - i11;
                        String str4 = new String(this.r, i11, i13);
                        if (i13 > 0) {
                            cz4Var.getClass();
                            arrayList2.add(null);
                            arrayList3.add(str4);
                        }
                        r18 = r12 == true ? 1 : 0;
                        break;
                    }
                    char[] cArr4 = this.r;
                    this.y = i12 + 1;
                    char c4 = cArr4[i12];
                    if (!Character.isLetterOrDigit(c4) && c4 != '_' && c4 != '-' && c4 != ':') {
                        throw new sf5("Illegal character '%s' in attribute for '%s' in %s", Character.valueOf(c4), str, vb8Var);
                    }
                }
            } else {
                int i14 = 0;
                ?? r13 = r12;
                while (true) {
                    int i15 = this.y;
                    r16 = r13;
                    if (i15 >= this.t) {
                        break;
                    }
                    char[] cArr5 = this.r;
                    this.y = i15 + 1;
                    char c5 = cArr5[i15];
                    if (!Character.isLetterOrDigit(c5) && c5 != '_' && c5 != '-' && c5 != ':') {
                        if (c5 != '@') {
                            if (c5 != '[') {
                                if (c5 != '/') {
                                    throw new sf5("Illegal character '%s' in element for '%s' in %s", Character.valueOf(c5), str, vb8Var);
                                }
                                break;
                            }
                            if (this.r[this.y - 1] == '[') {
                                i2 = 0;
                                while (true) {
                                    int i16 = this.y;
                                    if (i16 >= this.t) {
                                        break;
                                    }
                                    char[] cArr6 = this.r;
                                    this.y = i16 + 1;
                                    char c6 = cArr6[i16];
                                    if (!Character.isDigit(c6)) {
                                        break;
                                    } else {
                                        i2 = ((i2 * 10) + c6) - 48;
                                    }
                                }
                            } else {
                                i2 = 0;
                            }
                            char[] cArr7 = this.r;
                            int i17 = this.y;
                            this.y = i17 + 1;
                            if (cArr7[i17 - 1] != ']') {
                                throw new sf5("Invalid index for path '%s' in %s", str, vb8Var);
                            }
                            arrayList.add(Integer.valueOf(i2));
                            break;
                        }
                        this.y--;
                        break;
                    }
                    i14++;
                    r13 = r16 == true ? 1 : 0;
                }
                String str5 = new String(this.r, i7, i14);
                r18 = r16;
                if (i14 > 0) {
                    int iIndexOf = str5.indexOf(58);
                    i = 0;
                    if (iIndexOf > 0) {
                        strSubstring = str5.substring(0, iIndexOf);
                        str5 = str5.substring(iIndexOf + 1);
                    } else {
                        strSubstring = null;
                    }
                    cz4Var.getClass();
                    arrayList2.add(strSubstring);
                    arrayList3.add(str5);
                    r17 = r16;
                }
                if (arrayList3.size() > arrayList.size()) {
                    arrayList.add(Integer.valueOf((int) r17));
                }
                i3 = i;
                r12 = r17;
                c2 = '/';
            }
            i = 0;
            r17 = r18;
            if (arrayList3.size() > arrayList.size()) {
                arrayList.add(Integer.valueOf((int) r17));
            }
            i3 = i;
            r12 = r17;
            c2 = '/';
        }
    }

    public static boolean e(String str) {
        return str == null || str.length() == 0;
    }

    @Override // defpackage.s03
    public final boolean Y() {
        return this.e.size() > 1;
    }

    @Override // defpackage.s03
    /* JADX INFO: renamed from: a */
    public final s03 mo74a() {
        return l0(1, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.s03
    public final String b(String str) {
        String str2 = this.k;
        if (e(str2)) {
            this.p.getClass();
            return str;
        }
        bq1 bq1Var = this.b;
        String str3 = (String) bq1Var.get(str);
        if (str3 != null) {
            return str3;
        }
        String strD = d(str2, str);
        if (strD != null) {
            bq1Var.put(str, strD);
        }
        return strD;
    }

    public final String c(String str, String str2) {
        this.p.getClass();
        return e(str) ? str2 : dj7.k(str, "/@", str2);
    }

    public final String d(String str, String str2) {
        this.p.getClass();
        if (e(str2)) {
            return str;
        }
        return e(str) ? str2 : u48.n(str, "/", str2, "[1]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.s03
    public final String getAttribute(String str) {
        String str2 = this.k;
        if (e(str2)) {
            this.p.getClass();
            return str;
        }
        bq1 bq1Var = this.a;
        String str3 = (String) bq1Var.get(str);
        if (str3 != null) {
            return str3;
        }
        String strC = c(str2, str);
        if (strC != null) {
            bq1Var.put(str, strC);
        }
        return strC;
    }

    @Override // defpackage.s03
    public final String getFirst() {
        return (String) this.e.get(0);
    }

    @Override // defpackage.s03
    public final int getIndex() {
        return ((Integer) this.c.get(0)).intValue();
    }

    @Override // defpackage.s03
    public final String getLast() {
        return (String) dj7.e(this.e, 1);
    }

    @Override // defpackage.s03
    public final String getPrefix() {
        return (String) this.d.get(0);
    }

    @Override // defpackage.s03
    public final boolean h() {
        return this.q;
    }

    @Override // defpackage.s03
    public final boolean isEmpty() {
        return e(this.k);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.e.iterator();
    }

    @Override // defpackage.s03
    public final s03 l0(int i, int i2) {
        int size = (this.e.size() - 1) - i2;
        return size >= i ? new ly5(this, i, size) : new ly5(this, i, i);
    }

    public final String toString() {
        int i = this.y;
        int i2 = this.x;
        int i3 = i - i2;
        if (this.n == null) {
            this.n = new String(this.r, i2, i3);
        }
        return this.n;
    }

    @Override // defpackage.s03
    public final String a() {
        return this.k;
    }
}
