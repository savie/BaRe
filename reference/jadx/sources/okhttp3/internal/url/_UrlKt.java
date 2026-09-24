package okhttp3.internal.url;

import defpackage.nq7;
import defpackage.nw0;
import java.io.EOFException;
import okhttp3.internal._UtilCommonKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class _UrlKt {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String a(int i, int i2, int i3, String str, String str2, boolean z) {
        int i4 = (i3 & 1) != 0 ? 0 : i;
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        int i5 = i2;
        boolean z2 = (i3 & 8) != 0 ? false : z;
        boolean z3 = (i3 & 16) == 0;
        boolean z4 = (i3 & 32) == 0;
        boolean z5 = (i3 & 64) == 0;
        str.getClass();
        return b(str, i4, i5, str2, z2, z3, z4, z5, 128);
    }

    public static String b(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, int i3) throws EOFException {
        int i4 = (i3 & 1) != 0 ? 0 : i;
        int length = (i3 & 2) != 0 ? str.length() : i2;
        boolean z5 = (i3 & 8) != 0 ? false : z;
        boolean z6 = (i3 & 16) != 0 ? false : z2;
        boolean z7 = (i3 & 64) == 0 ? z4 : false;
        str.getClass();
        int iCharCount = i4;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            int i5 = 128;
            if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z7) || nq7.a0(str2, (char) iCodePointAt) || ((iCodePointAt == 37 && (!z5 || (z6 && !c(iCharCount, length, str)))) || (iCodePointAt == 43 && z3)))) {
                nw0 nw0Var = new nw0();
                nw0Var.Y(i4, iCharCount, str);
                nw0 nw0Var2 = null;
                while (iCharCount < length) {
                    int iCodePointAt2 = str.codePointAt(iCharCount);
                    if (!z5 || (iCodePointAt2 != 9 && iCodePointAt2 != 10 && iCodePointAt2 != 12 && iCodePointAt2 != 13)) {
                        if (iCodePointAt2 == 32 && str2 == " !\"#$&'()+,/:;<=>?@[\\]^`{|}~") {
                            nw0Var.Z("+");
                        } else if (iCodePointAt2 == 43 && z3) {
                            nw0Var.Z(z5 ? "+" : "%2B");
                        } else if (iCodePointAt2 < 32 || iCodePointAt2 == 127 || ((iCodePointAt2 >= i5 && !z7) || nq7.a0(str2, (char) iCodePointAt2) || (iCodePointAt2 == 37 && (!z5 || (z6 && !c(iCharCount, length, str)))))) {
                            if (nw0Var2 == null) {
                                nw0Var2 = new nw0();
                            }
                            nw0Var2.b0(iCodePointAt2);
                            while (!nw0Var2.x()) {
                                byte b = nw0Var2.readByte();
                                nw0Var.J(37);
                                char[] cArr = a;
                                nw0Var.J(cArr[((b & 255) >> 4) & 15]);
                                nw0Var.J(cArr[b & 15]);
                            }
                        } else {
                            nw0Var.b0(iCodePointAt2);
                        }
                    }
                    iCharCount += Character.charCount(iCodePointAt2);
                    i5 = 128;
                }
                return nw0Var.v();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i4, length);
    }

    public static final boolean c(int i, int i2, String str) {
        str.getClass();
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && _UtilCommonKt.l(str.charAt(i + 1)) != -1 && _UtilCommonKt.l(str.charAt(i3)) != -1;
    }

    public static String d(String str, int i, int i2, int i3) {
        int i4;
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        boolean z = (i3 & 4) == 0;
        str.getClass();
        int iCharCount = i;
        while (iCharCount < i2) {
            char cCharAt = str.charAt(iCharCount);
            if (cCharAt == '%' || (cCharAt == '+' && z)) {
                nw0 nw0Var = new nw0();
                nw0Var.Y(i, iCharCount, str);
                while (iCharCount < i2) {
                    int iCodePointAt = str.codePointAt(iCharCount);
                    if (iCodePointAt == 37 && (i4 = iCharCount + 2) < i2) {
                        int iL = _UtilCommonKt.l(str.charAt(iCharCount + 1));
                        int iL2 = _UtilCommonKt.l(str.charAt(i4));
                        if (iL == -1 || iL2 == -1) {
                            nw0Var.b0(iCodePointAt);
                            iCharCount += Character.charCount(iCodePointAt);
                        } else {
                            nw0Var.J((iL << 4) + iL2);
                            iCharCount = Character.charCount(iCodePointAt) + i4;
                        }
                    } else if (iCodePointAt == 43 && z) {
                        nw0Var.J(32);
                        iCharCount++;
                    } else {
                        nw0Var.b0(iCodePointAt);
                        iCharCount += Character.charCount(iCodePointAt);
                    }
                }
                return nw0Var.v();
            }
            iCharCount++;
        }
        return str.substring(i, i2);
    }
}
