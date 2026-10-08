package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v08 {
    public static final char[] k = new char[0];
    public final /* synthetic */ int a = 1;
    public int b;
    public int c;
    public int d;
    public String e;
    public boolean f;
    public final Object g;
    public Object h;
    public Object i;
    public Object j;

    public v08(int i, v08 v08Var, f41 f41Var, Object obj) {
        this.b = i;
        this.g = v08Var;
        this.d = v08Var == null ? 0 : v08Var.d + 1;
        this.h = f41Var;
        this.c = -1;
        this.j = obj;
    }

    public static void a(int i, int i2) {
        throw new IllegalStateException(fz5.m("TextBuffer overrun: size reached (", ") exceeds maximum of 2147483647", ((long) i) + ((long) i2)));
    }

    public void b(int i, int i2, String str) {
        if (this.b >= 0) {
            i(i2);
        }
        this.e = null;
        this.j = null;
        char[] cArr = (char[]) this.i;
        int length = cArr.length;
        int i3 = this.d;
        int i4 = length - i3;
        if (i4 >= i2) {
            str.getChars(i, i + i2, cArr, i3);
            this.d += i2;
            return;
        }
        if (i4 > 0) {
            int i5 = i + i4;
            str.getChars(i, i5, cArr, i3);
            i2 -= i4;
            i = i5;
        }
        while (true) {
            f();
            int iMin = Math.min(((char[]) this.i).length, i2);
            int i6 = i + iMin;
            str.getChars(i, i6, (char[]) this.i, 0);
            this.d += iMin;
            i2 -= iMin;
            if (i2 <= 0) {
                return;
            } else {
                i = i6;
            }
        }
    }

    public void c(char[] cArr, int i, int i2) {
        if (this.b >= 0) {
            i(i2);
        }
        this.e = null;
        this.j = null;
        char[] cArr2 = (char[]) this.i;
        int length = cArr2.length;
        int i3 = this.d;
        int i4 = length - i3;
        if (i4 >= i2) {
            System.arraycopy(cArr, i, cArr2, i3, i2);
            this.d += i2;
            return;
        }
        if (i4 > 0) {
            System.arraycopy(cArr, i, cArr2, i3, i4);
            i += i4;
            i2 -= i4;
        }
        do {
            f();
            int iMin = Math.min(((char[]) this.i).length, i2);
            System.arraycopy(cArr, i, (char[]) this.i, 0, iMin);
            this.d += iMin;
            i += iMin;
            i2 -= iMin;
        } while (i2 > 0);
    }

    public char[] d() {
        int length;
        int i;
        char[] charArray = (char[]) this.j;
        if (charArray == null) {
            String str = this.e;
            if (str != null) {
                charArray = str.toCharArray();
            } else {
                int i2 = this.b;
                char[] cArr = k;
                if (i2 < 0) {
                    if (i2 >= 0) {
                        length = 0;
                    } else if (charArray != null) {
                        length = charArray.length;
                    } else {
                        length = str != null ? str.length() : this.c + this.d;
                    }
                    if (length < 1) {
                        if (length < 0) {
                            a(this.c, this.d);
                            throw null;
                        }
                        charArray = cArr;
                    } else {
                        charArray = new char[length];
                        ArrayList arrayList = (ArrayList) this.h;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            i = 0;
                            for (int i3 = 0; i3 < size; i3++) {
                                char[] cArr2 = (char[]) ((ArrayList) this.h).get(i3);
                                int length2 = cArr2.length;
                                System.arraycopy(cArr2, 0, charArray, i, length2);
                                i += length2;
                            }
                        } else {
                            i = 0;
                        }
                        System.arraycopy((char[]) this.i, 0, charArray, i, this.d);
                    }
                } else {
                    charArray = cArr;
                }
            }
            this.j = charArray;
        }
        return charArray;
    }

    public String e() {
        if (this.e == null) {
            char[] cArr = (char[]) this.j;
            if (cArr != null) {
                this.e = new String(cArr);
            } else {
                if (this.b >= 0) {
                    this.e = "";
                    return "";
                }
                int i = this.c;
                int i2 = this.d;
                if (i != 0) {
                    int i3 = i + i2;
                    if (i3 < 0) {
                        a(i, i2);
                        throw null;
                    }
                    StringBuilder sb = new StringBuilder(i3);
                    ArrayList arrayList = (ArrayList) this.h;
                    if (arrayList != null) {
                        int size = arrayList.size();
                        for (int i4 = 0; i4 < size; i4++) {
                            char[] cArr2 = (char[]) ((ArrayList) this.h).get(i4);
                            sb.append(cArr2, 0, cArr2.length);
                        }
                    }
                    sb.append((char[]) this.i, 0, this.d);
                    this.e = sb.toString();
                } else if (i2 == 0) {
                    this.e = "";
                } else {
                    this.e = new String((char[]) this.i, 0, i2);
                }
            }
        }
        return this.e;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002e A[PHI: r1
      0x002e: PHI (r1v10 int) = (r1v8 int), (r1v9 int) binds: [B:8:0x002c, B:11:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    public void f() {
        if (((ArrayList) this.h) == null) {
            this.h = new ArrayList();
        }
        char[] cArr = (char[]) this.i;
        this.f = true;
        ((ArrayList) this.h).add(cArr);
        int length = this.c + cArr.length;
        this.c = length;
        if (length < 0) {
            a(length - cArr.length, cArr.length);
            throw null;
        }
        this.d = 0;
        int length2 = cArr.length;
        int i = length2 + (length2 >> 1);
        int i2 = 500;
        if (i < 500) {
            i = i2;
        } else {
            i2 = 65536;
            if (i > 65536) {
                i = i2;
            }
        }
        this.i = new char[i];
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0031 A[PHI: r1
      0x0031: PHI (r1v9 int) = (r1v7 int), (r1v8 int) binds: [B:8:0x002f, B:11:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    public char[] g() {
        if (((ArrayList) this.h) == null) {
            this.h = new ArrayList();
        }
        this.f = true;
        ((ArrayList) this.h).add((char[]) this.i);
        int length = ((char[]) this.i).length;
        int i = this.c + length;
        this.c = i;
        if (i < 0) {
            a(i - length, length);
            throw null;
        }
        this.d = 0;
        int i2 = length + (length >> 1);
        int i3 = 500;
        if (i2 < 500) {
            i2 = i3;
        } else {
            i3 = 65536;
            if (i2 > 65536) {
                i2 = i3;
            }
        }
        char[] cArr = new char[i2];
        this.i = cArr;
        return cArr;
    }

    public String h() {
        int i = this.b;
        if (i == 0) {
            return "root";
        }
        if (i != 1) {
            return i != 2 ? "?" : "Object";
        }
        return "Array";
    }

    public void i(int i) {
        char[] cArr;
        this.b = -1;
        char[] cArr2 = (char[]) this.i;
        if (cArr2 == null || i > cArr2.length) {
            qw0 qw0Var = (qw0) this.g;
            if (qw0Var != null) {
                int i2 = qw0.d[2];
                if (i < i2) {
                    i = i2;
                }
                cArr = (char[]) qw0Var.b.getAndSet(2, null);
                if (cArr == null || cArr.length < i) {
                    cArr = new char[i];
                }
            } else {
                cArr = new char[Math.max(i, 500)];
            }
            this.i = cArr;
        }
        this.c = 0;
        this.d = 0;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0027  */
    /* JADX WARN: Code duplicated, block: B:28:0x0066  */
    public int j(String str) throws dk4 {
        boolean z;
        if (this.b != 2 || this.f) {
            return 4;
        }
        this.f = true;
        this.e = str;
        f41 f41Var = (f41) this.h;
        if (f41Var != null) {
            String str2 = (String) f41Var.b;
            if (str2 == null) {
                f41Var.b = str;
            } else {
                if (str.equals(str2)) {
                    z = true;
                } else {
                    String str3 = (String) f41Var.c;
                    if (str3 == null) {
                        f41Var.c = str;
                    } else if (str.equals(str3)) {
                        z = true;
                    } else {
                        if (((HashSet) f41Var.d) == null) {
                            HashSet hashSet = new HashSet(16);
                            f41Var.d = hashSet;
                            hashSet.add((String) f41Var.b);
                            ((HashSet) f41Var.d).add((String) f41Var.c);
                        }
                        z = !((HashSet) f41Var.d).add(str);
                    }
                }
                if (z) {
                    throw new dk4(eq3.k("Duplicate field '", str, "'"), (cv3) f41Var.a);
                }
            }
            z = false;
            if (z) {
                throw new dk4(eq3.k("Duplicate field '", str, "'"), (cv3) f41Var.a);
            }
        }
        return this.c < 0 ? 0 : 1;
    }

    public final String toString() {
        switch (this.a) {
            case 0:
                try {
                    return e();
                } catch (IOException unused) {
                    return "TextBuffer: Exception when reading contents";
                }
            default:
                StringBuilder sb = new StringBuilder(64);
                int i = this.b;
                if (i != 0) {
                    if (i != 1) {
                        sb.append('{');
                        String str = this.e;
                        if (str != null) {
                            sb.append('\"');
                            int[] iArr = a51.f;
                            int length = iArr.length;
                            int length2 = str.length();
                            for (int i2 = 0; i2 < length2; i2++) {
                                char cCharAt = str.charAt(i2);
                                if (cCharAt >= length || iArr[cCharAt] == 0) {
                                    sb.append(cCharAt);
                                } else {
                                    sb.append('\\');
                                    int i3 = iArr[cCharAt];
                                    if (i3 < 0) {
                                        sb.append("u00");
                                        char[] cArr = a51.a;
                                        sb.append(cArr[cCharAt >> 4]);
                                        sb.append(cArr[cCharAt & 15]);
                                    } else {
                                        sb.append((char) i3);
                                    }
                                }
                            }
                            sb.append('\"');
                        } else {
                            sb.append('?');
                        }
                        sb.append('}');
                    } else {
                        sb.append('[');
                        int i4 = this.c;
                        sb.append(i4 >= 0 ? i4 : 0);
                        sb.append(']');
                    }
                } else {
                    sb.append("/");
                }
                return sb.toString();
        }
    }

    public v08(int i, v08 v08Var, f41 f41Var) {
        this.b = i;
        this.g = v08Var;
        this.d = v08Var == null ? 0 : v08Var.d + 1;
        this.h = f41Var;
        this.c = -1;
    }

    public v08(qw0 qw0Var) {
        this.g = qw0Var;
    }
}
