package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pn8 implements q18 {
    public static final List a = Collections.singletonList("baggage");
    public static final pn8 b = new pn8();
    public static final yy5 c = new yy5();

    /* JADX WARN: Code duplicated, block: B:113:0x0195 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0175  */
    /* JADX WARN: Code duplicated, block: B:57:0x0177  */
    /* JADX WARN: Code duplicated, block: B:60:0x017c  */
    /* JADX WARN: Code duplicated, block: B:62:0x0185  */
    /* JADX WARN: Code duplicated, block: B:64:0x018c  */
    /* JADX WARN: Code duplicated, block: B:66:0x0190  */
    /* JADX WARN: Code duplicated, block: B:71:0x019b  */
    /* JADX WARN: Code duplicated, block: B:74:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:78:0x01ac  */
    public static String e(String str) {
        int codePoint;
        String str2;
        int i;
        int i2;
        int i3;
        char cCharAt;
        int i4;
        int i5;
        int length;
        int i6;
        char[] cArr;
        c.getClass();
        int length2 = str.length();
        int i7 = 0;
        while (i7 < length2) {
            char cCharAt2 = str.charAt(i7);
            boolean[] zArr = yy5.b;
            if (cCharAt2 >= zArr.length || !zArr[cCharAt2]) {
                int length3 = str.length();
                ThreadLocal threadLocal = xz7.a;
                char[] cArr2 = (char[]) threadLocal.get();
                if (cArr2 == null || cArr2.length < 1024) {
                    cArr2 = new char[1024];
                    threadLocal.set(cArr2);
                }
                int i8 = 0;
                int length4 = 0;
                while (true) {
                    char[] cArr3 = null;
                    if (i7 >= length3) {
                        int i9 = length3 - i8;
                        if (i9 > 0) {
                            int i10 = i9 + length4;
                            if (cArr2.length < i10) {
                                if (i10 < 0) {
                                    e6.e("Cannot increase internal buffer any further");
                                    return null;
                                }
                                char[] cArr4 = new char[i10];
                                if (length4 > 0) {
                                    System.arraycopy(cArr2, 0, cArr4, 0, length4);
                                }
                                cArr2 = cArr4;
                            }
                            str.getChars(i8, length3, cArr2, length4);
                            length4 = i10;
                        }
                        return new String(cArr2, 0, length4);
                    }
                    if (i7 >= length3) {
                        a6.d("Index exceeds specified range");
                        return null;
                    }
                    int i11 = i7 + 1;
                    char cCharAt3 = str.charAt(i7);
                    if (cCharAt3 >= 55296 && cCharAt3 <= 57343) {
                        if (cCharAt3 > 56319) {
                            codePoint = cCharAt3;
                            codePoint = cCharAt3;
                            z5.e("Unexpected low surrogate character '", cCharAt3, i7, str);
                            return null;
                        }
                        if (i11 == length3) {
                            codePoint = -cCharAt3;
                        } else {
                            char cCharAt4 = str.charAt(i11);
                            if (!Character.isLowSurrogate(cCharAt4)) {
                                z5.e("Expected low surrogate but got char '", cCharAt4, i11, str);
                                return null;
                            }
                            codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                        }
                    }
                    if (codePoint < 0) {
                        c6.f("Trailing high surrogate at end of input");
                        return null;
                    }
                    char[] cArr5 = yy5.a;
                    if (codePoint >= zArr.length || !zArr[codePoint]) {
                        str2 = null;
                        if (codePoint <= 127) {
                            cArr3 = new char[]{'%', cArr5[codePoint >>> 4], cArr5[codePoint & 15]};
                        } else {
                            i = 1;
                            if (codePoint <= 2047) {
                                cArr3 = new char[]{'%', cArr5[12 | (codePoint >>> 10)], cArr5[(codePoint >>> 6) & 15], '%', cArr5[((codePoint >>> 4) & 3) | 8], cArr5[codePoint & 15]};
                            } else if (codePoint <= 65535) {
                                cArr3 = new char[]{'%', 'E', cArr5[codePoint >>> 12], '%', cArr5[((codePoint >>> 10) & 3) | 8], cArr5[(codePoint >>> 6) & 15], '%', cArr5[((codePoint >>> 4) & 3) | 8], cArr5[codePoint & 15]};
                            } else {
                                if (codePoint > 1114111) {
                                    c6.f(fz5.j(codePoint, "Invalid unicode character value "));
                                    return null;
                                }
                                cArr3 = new char[]{'%', 'F', cArr5[(codePoint >>> 18) & 7], '%', cArr5[((codePoint >>> 16) & 3) | 8], cArr5[(codePoint >>> 12) & 15], '%', cArr5[((codePoint >>> 10) & 3) | 8], cArr5[(codePoint >>> 6) & 15], '%', cArr5[((codePoint >>> 4) & 3) | 8], cArr5[codePoint & 15]};
                            }
                        }
                        if (Character.isSupplementaryCodePoint(codePoint)) {
                            i2 = 2;
                        } else {
                            i2 = i;
                        }
                        i3 = i2 + i7;
                        if (cArr3 != null) {
                            i4 = i7 - i8;
                            i5 = length4 + i4;
                            length = cArr3.length + i5;
                            if (cArr2.length < length) {
                                i6 = (length3 - i7) + length + 32;
                                if (i6 >= 0) {
                                    e6.e("Cannot increase internal buffer any further");
                                    return str2;
                                }
                                cArr = new char[i6];
                                if (length4 > 0) {
                                    System.arraycopy(cArr2, 0, cArr, 0, length4);
                                }
                                cArr2 = cArr;
                            }
                            if (i4 > 0) {
                                str.getChars(i8, i7, cArr2, length4);
                                length4 = i5;
                            }
                            if (cArr3.length > 0) {
                                System.arraycopy(cArr3, 0, cArr2, length4, cArr3.length);
                                length4 += cArr3.length;
                            }
                            i8 = i3;
                        }
                        i7 = i3;
                        while (i7 < length3) {
                            cCharAt = str.charAt(i7);
                            if (cCharAt >= zArr.length || !zArr[cCharAt]) {
                                break;
                            }
                            i7++;
                        }
                    } else {
                        str2 = null;
                    }
                    i = 1;
                    if (Character.isSupplementaryCodePoint(codePoint)) {
                        i2 = 2;
                    } else {
                        i2 = i;
                    }
                    i3 = i2 + i7;
                    if (cArr3 != null) {
                        i4 = i7 - i8;
                        i5 = length4 + i4;
                        length = cArr3.length + i5;
                        if (cArr2.length < length) {
                            i6 = (length3 - i7) + length + 32;
                            if (i6 >= 0) {
                                e6.e("Cannot increase internal buffer any further");
                                return str2;
                            }
                            cArr = new char[i6];
                            if (length4 > 0) {
                                System.arraycopy(cArr2, 0, cArr, 0, length4);
                            }
                            cArr2 = cArr;
                        }
                        if (i4 > 0) {
                            str.getChars(i8, i7, cArr2, length4);
                            length4 = i5;
                        }
                        if (cArr3.length > 0) {
                            System.arraycopy(cArr3, 0, cArr2, length4, cArr3.length);
                            length4 += cArr3.length;
                        }
                        i8 = i3;
                    }
                    i7 = i3;
                    while (i7 < length3) {
                        cCharAt = str.charAt(i7);
                        if (cCharAt >= zArr.length) {
                            break;
                        }
                        break;
                        break;
                    }
                }
            }
            i7++;
        }
        return str;
    }

    public static void f(String str, s40 s40Var) {
        bl2 bl2Var = new bl2(str);
        bt2 bt2Var = (bt2) bl2Var.e;
        bt2 bt2Var2 = (bt2) bl2Var.f;
        String str2 = (String) bl2Var.d;
        int length = str2.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str2.charAt(i);
            if (!bl2Var.c) {
                int i2 = bl2Var.a;
                if (cCharAt == ',') {
                    int iA = dj7.A(i2);
                    if (iA == 1) {
                        bt2Var2.b(i, str2);
                    } else if (iA == 2) {
                        bl2Var.g = str2.substring(bl2Var.b, i).trim();
                    }
                    bl2.c(s40Var, bt2Var.g, bt2Var2.g, (String) bl2Var.g);
                    bl2Var.d(i + 1);
                } else if (cCharAt != ';') {
                    if (cCharAt != '=') {
                        int iA2 = dj7.A(i2);
                        if (iA2 == 0) {
                            bl2Var.c = !bt2Var.a(cCharAt, i);
                        } else if (iA2 == 1) {
                            bl2Var.c = !bt2Var2.a(cCharAt, i);
                        }
                    } else if (i2 == 1) {
                        if (bt2Var.b(i, str2)) {
                            bl2Var.a = 2;
                            bl2Var.b = i + 1;
                        } else {
                            bl2Var.c = true;
                        }
                    }
                } else if (i2 == 2) {
                    bl2Var.c = !bt2Var2.b(i, str2);
                    bl2Var.a = 3;
                    bl2Var.b = i + 1;
                }
            } else if (cCharAt == ',') {
                bl2Var.d(i + 1);
            }
        }
        int iA3 = dj7.A(bl2Var.a);
        if (iA3 != 1) {
            if (iA3 != 2) {
                return;
            }
            bl2.c(s40Var, bt2Var.g, bt2Var2.g, str2.substring(bl2Var.b).trim());
            return;
        }
        if (bl2Var.c) {
            return;
        }
        bt2Var2.b(str2.length(), str2);
        bl2.c(s40Var, bt2Var.g, bt2Var2.g, null);
    }

    @Override // defpackage.q18
    public final void a(t40 t40Var, HashMap map, r18 r18Var) {
        String string;
        zk0 zk0Var = (zk0) t40Var.b(x13.a);
        if (zk0Var == null) {
            zk0Var = fa4.b;
        }
        if (zk0Var.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        zk0Var.forEach(new on8(sb));
        if (sb.length() == 0) {
            string = "";
        } else {
            sb.setLength(sb.length() - 1);
            string = sb.toString();
        }
        if (string.isEmpty()) {
            return;
        }
        r18Var.set(map, "baggage", string);
    }

    @Override // defpackage.q18
    public final Collection b() {
        return a;
    }

    @Override // defpackage.q18
    public final t40 c(t40 t40Var, Object obj, p18 p18Var) {
        if (t40Var == null) {
            xs4.b.getClass();
            return t40.b;
        }
        String str = p18Var.get(obj, "baggage");
        if (str == null || str.isEmpty()) {
            return t40Var;
        }
        fa4 fa4Var = fa4.b;
        s40 s40Var = new s40(1);
        try {
            f(str, s40Var);
            return new fa4(s40Var.a.toArray(), Comparator.naturalOrder()).a(t40Var);
        } catch (RuntimeException unused) {
            return t40Var;
        }
    }
}
