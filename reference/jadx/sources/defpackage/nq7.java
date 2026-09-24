package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class nq7 extends uq7 {
    public static String A0(String str, String str2, String str3) {
        str.getClass();
        str3.getClass();
        int iL0 = l0(6, str, str2);
        return iL0 == -1 ? str3 : str.substring(str2.length() + iL0, str.length());
    }

    public static String B0(String str, char c) {
        str.getClass();
        str.getClass();
        int iK0 = k0(c, 0, 6, str);
        return iK0 == -1 ? str : str.substring(iK0 + 1, str.length());
    }

    public static String C0(String str, String str2, String str3) {
        str.getClass();
        str3.getClass();
        int iH0 = h0(str, str2, 0, false, 6);
        return iH0 == -1 ? str3 : str.substring(0, iH0);
    }

    public static String D0(String str, char c) {
        int iG0 = g0(c, 0, 6, str);
        return iG0 == -1 ? str : str.substring(0, iG0);
    }

    public static String E0(char c, String str, String str2) {
        str.getClass();
        str2.getClass();
        int iK0 = k0(c, 0, 6, str);
        return iK0 == -1 ? str2 : str.substring(0, iK0);
    }

    public static String F0(String str, String str2, String str3) {
        str.getClass();
        str3.getClass();
        int iL0 = l0(6, str, str2);
        return iL0 == -1 ? str3 : str.substring(0, iL0);
    }

    public static String G0(int i, String str) {
        str.getClass();
        if (i < 0) {
            f6.g(xs1.h(i, "Requested character count ", " is less than zero."));
            return null;
        }
        int length = str.length();
        if (i > length) {
            i = length;
        }
        return str.substring(0, i);
    }

    public static CharSequence H0(CharSequence charSequence) {
        charSequence.getClass();
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zC = ly8.C(charSequence.charAt(!z ? i : length));
            if (z) {
                if (!zC) {
                    break;
                }
                length--;
            } else if (zC) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static String I0(String str, char... cArr) {
        str.getClass();
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zD0 = x50.d0(cArr, str.charAt(!z ? i : length));
            if (z) {
                if (!zD0) {
                    break;
                }
                length--;
            } else if (zD0) {
                i++;
            } else {
                z = true;
            }
        }
        return str.subSequence(i, length + 1).toString();
    }

    public static CharSequence J0(String str) {
        int length = str.length() - 1;
        if (length < 0) {
            return "";
        }
        while (true) {
            int i = length - 1;
            if (!ly8.C(str.charAt(length))) {
                return str.subSequence(0, length + 1);
            }
            if (i < 0) {
                return "";
            }
            length = i;
        }
    }

    public static String K0(String str, char... cArr) {
        CharSequence charSequenceSubSequence;
        str.getClass();
        int length = str.length() - 1;
        if (length < 0) {
            charSequenceSubSequence = "";
            break;
        }
        while (true) {
            int i = length - 1;
            if (!x50.d0(cArr, str.charAt(length))) {
                charSequenceSubSequence = str.subSequence(0, length + 1);
                break;
            }
            if (i < 0) {
                charSequenceSubSequence = "";
                break;
            }
            length = i;
        }
        return charSequenceSubSequence.toString();
    }

    public static String L0(String str, char... cArr) {
        CharSequence charSequenceSubSequence;
        str.getClass();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!x50.d0(cArr, str.charAt(i))) {
                charSequenceSubSequence = str.subSequence(i, str.length());
                return charSequenceSubSequence.toString();
            }
        }
        charSequenceSubSequence = "";
        return charSequenceSubSequence.toString();
    }

    public static boolean Z(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        charSequence.getClass();
        charSequence2.getClass();
        if (charSequence2 instanceof String) {
            if (h0(charSequence, (String) charSequence2, 0, z, 2) >= 0) {
                return true;
            }
        } else if (f0(charSequence, charSequence2, 0, charSequence.length(), z, false) >= 0) {
            return true;
        }
        return false;
    }

    public static boolean a0(CharSequence charSequence, char c) {
        charSequence.getClass();
        return g0(c, 0, 2, charSequence) >= 0;
    }

    public static boolean b0(String str, char c) {
        str.getClass();
        return str.length() > 0 && ly8.r(str.charAt(str.length() - 1), c, false);
    }

    public static Character c0(String str) {
        str.getClass();
        if (str.length() == 0) {
            return null;
        }
        return Character.valueOf(str.charAt(0));
    }

    public static int d0(CharSequence charSequence) {
        charSequence.getClass();
        return charSequence.length() - 1;
    }

    public static final int e0(CharSequence charSequence, String str, int i, boolean z) {
        charSequence.getClass();
        str.getClass();
        return (z || !(charSequence instanceof String)) ? f0(charSequence, str, i, charSequence.length(), z, false) : ((String) charSequence).indexOf(str, i);
    }

    public static final int f0(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        ld4 ld4Var;
        if (z2) {
            int iD0 = d0(charSequence);
            if (i > iD0) {
                i = iD0;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            ld4Var = new ld4(i, i2, -1);
        } else {
            if (i < 0) {
                i = 0;
            }
            int length = charSequence.length();
            if (i2 > length) {
                i2 = length;
            }
            ld4Var = new nd4(i, i2, 1);
        }
        boolean z3 = charSequence instanceof String;
        int i3 = ld4Var.c;
        int i4 = ld4Var.b;
        int i5 = ld4Var.a;
        if (!z3 || !(charSequence2 instanceof String)) {
            boolean z4 = z;
            if ((i3 > 0 && i5 <= i4) || (i3 < 0 && i4 <= i5)) {
                while (true) {
                    CharSequence charSequence3 = charSequence;
                    CharSequence charSequence4 = charSequence2;
                    boolean z5 = z4;
                    z4 = z5;
                    if (p0(charSequence4, 0, charSequence3, i5, charSequence2.length(), z5)) {
                        return i5;
                    }
                    if (i5 != i4) {
                        i5 += i3;
                        charSequence2 = charSequence4;
                        charSequence = charSequence3;
                    }
                }
            }
        } else if ((i3 > 0 && i5 <= i4) || (i3 < 0 && i4 <= i5)) {
            int i6 = i5;
            while (true) {
                String str = (String) charSequence2;
                boolean z6 = z;
                if (uq7.Q(0, i6, str.length(), str, (String) charSequence, z6)) {
                    return i6;
                }
                if (i6 != i4) {
                    i6 += i3;
                    z = z6;
                }
            }
        }
        return -1;
    }

    public static int g0(char c, int i, int i2, CharSequence charSequence) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        charSequence.getClass();
        return !(charSequence instanceof String) ? i0(charSequence, new char[]{c}, i, false) : ((String) charSequence).indexOf(c, i);
    }

    public static /* synthetic */ int h0(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return e0(charSequence, str, i, z);
    }

    public static final int i0(CharSequence charSequence, char[] cArr, int i, boolean z) {
        charSequence.getClass();
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(x50.v0(cArr), i);
        }
        if (i < 0) {
            i = 0;
        }
        int length = charSequence.length() - 1;
        if (i > length) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(i);
            for (char c : cArr) {
                if (ly8.r(c, cCharAt, z)) {
                    return i;
                }
            }
            if (i == length) {
                return -1;
            }
            i++;
        }
    }

    public static boolean j0(CharSequence charSequence) {
        charSequence.getClass();
        for (int i = 0; i < charSequence.length(); i++) {
            if (!ly8.C(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static int k0(char c, int i, int i2, CharSequence charSequence) {
        if ((i2 & 2) != 0) {
            i = d0(charSequence);
        }
        charSequence.getClass();
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(c, i);
        }
        char[] cArr = {c};
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(x50.v0(cArr), i);
        }
        int length = charSequence.length() - 1;
        if (i > length) {
            i = length;
        }
        while (-1 < i) {
            if (ly8.r(cArr[0], charSequence.charAt(i), false)) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static int l0(int i, CharSequence charSequence, String str) {
        int iD0 = (i & 2) != 0 ? d0(charSequence) : 0;
        charSequence.getClass();
        str.getClass();
        return !(charSequence instanceof String) ? f0(charSequence, str, iD0, 0, false, true) : ((String) charSequence).lastIndexOf(str, iD0);
    }

    public static List m0(String str) {
        str.getClass();
        cv4 cv4Var = new cv4(str);
        if (!cv4Var.hasNext()) {
            return ov2.a;
        }
        Object next = cv4Var.next();
        if (!cv4Var.hasNext()) {
            return nc8.I(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (cv4Var.hasNext()) {
            arrayList.add(cv4Var.next());
        }
        return arrayList;
    }

    public static String n0(int i, String str) {
        CharSequence charSequenceSubSequence;
        str.getClass();
        if (i < 0) {
            c6.f(xs1.h(i, "Desired length ", " is less than zero."));
            return null;
        }
        if (i <= str.length()) {
            charSequenceSubSequence = str.subSequence(0, str.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            sb.append((CharSequence) str);
            int length = i - str.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append(' ');
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            charSequenceSubSequence = sb;
        }
        return charSequenceSubSequence.toString();
    }

    public static String o0(int i, String str) {
        CharSequence charSequenceSubSequence;
        str.getClass();
        if (i < 0) {
            c6.f(xs1.h(i, "Desired length ", " is less than zero."));
            return null;
        }
        if (i <= str.length()) {
            charSequenceSubSequence = str.subSequence(0, str.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            int length = i - str.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append('0');
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            sb.append((CharSequence) str);
            charSequenceSubSequence = sb;
        }
        return charSequenceSubSequence.toString();
    }

    public static final boolean p0(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        charSequence.getClass();
        charSequence2.getClass();
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!ly8.r(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static String q0(String str, String str2) {
        str.getClass();
        return uq7.V(str, str2, false) ? str.substring(str2.length()) : str;
    }

    public static String r0(String str, String str2) {
        str.getClass();
        return uq7.O(str, str2, false) ? str.substring(0, str.length() - str2.length()) : str;
    }

    public static String s0(String str) {
        str.getClass();
        return (str.length() >= 2 && uq7.V(str, "\"", false) && uq7.O(str, "\"", false)) ? xs1.g(1, 1, str) : str;
    }

    public static final void t0(int i) {
        if (i >= 0) {
            return;
        }
        f6.g(fz5.j(i, "Limit must be non-negative, but was "));
    }

    public static StringBuilder u0(CharSequence charSequence) {
        charSequence.getClass();
        return new StringBuilder(charSequence).reverse();
    }

    public static final List v0(int i, CharSequence charSequence, String str) {
        t0(i);
        int iE0 = e0(charSequence, str, 0, false);
        if (iE0 == -1 || i == 1) {
            return nc8.I(charSequence.toString());
        }
        boolean z = i > 0;
        int i2 = 10;
        if (z && i <= 10) {
            i2 = i;
        }
        ArrayList arrayList = new ArrayList(i2);
        int length = 0;
        do {
            arrayList.add(charSequence.subSequence(length, iE0).toString());
            length = str.length() + iE0;
            if (z && arrayList.size() == i - 1) {
                break;
            }
            iE0 = e0(charSequence, str, length, false);
        } while (iE0 != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static List w0(CharSequence charSequence, char[] cArr, int i) {
        int i2 = 4;
        int i3 = (i & 4) != 0 ? 0 : 2;
        charSequence.getClass();
        if (cArr.length == 1) {
            return v0(i3, charSequence, String.valueOf(cArr[0]));
        }
        t0(i3);
        k77 k77Var = new k77(new zh2(charSequence, i3, new g30(cArr, i2)));
        ArrayList arrayList = new ArrayList(hl1.G0(k77Var, 10));
        Iterator it = k77Var.iterator();
        while (true) {
            yh2 yh2Var = (yh2) it;
            if (!yh2Var.hasNext()) {
                return arrayList;
            }
            nd4 nd4Var = (nd4) yh2Var.next();
            nd4Var.getClass();
            arrayList.add(charSequence.subSequence(nd4Var.a, nd4Var.b + 1).toString());
        }
    }

    public static List x0(CharSequence charSequence, String[] strArr, int i) {
        int i2 = (i & 4) != 0 ? 0 : 2;
        charSequence.getClass();
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() != 0) {
                return v0(i2, charSequence, str);
            }
        }
        t0(i2);
        List listAsList = Arrays.asList(strArr);
        listAsList.getClass();
        k77 k77Var = new k77(new zh2(charSequence, i2, new h01(listAsList, 3)));
        ArrayList arrayList = new ArrayList(hl1.G0(k77Var, 10));
        Iterator it = k77Var.iterator();
        while (true) {
            yh2 yh2Var = (yh2) it;
            if (!yh2Var.hasNext()) {
                return arrayList;
            }
            nd4 nd4Var = (nd4) yh2Var.next();
            nd4Var.getClass();
            arrayList.add(charSequence.subSequence(nd4Var.a, nd4Var.b + 1).toString());
        }
    }

    public static boolean y0(CharSequence charSequence, char c) {
        charSequence.getClass();
        return charSequence.length() > 0 && ly8.r(charSequence.charAt(0), c, false);
    }

    public static String z0(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        int iH0 = h0(str, str2, 0, false, 6);
        return iH0 == -1 ? str3 : str.substring(str2.length() + iH0, str.length());
    }
}
