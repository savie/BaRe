package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hm4 {
    public static final char[] a = a51.a(true);
    public static final hm4 b = new hm4();

    public static char[] a(String str) {
        int length = str.length();
        char[] cArrG = new char[Math.min(Math.max(16, Math.min((length >> 3) + 6, PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT) + length), 32000)];
        int[] iArr = a51.f;
        int length2 = iArr.length;
        int i = 0;
        int i2 = 0;
        v08 v08Var = null;
        char[] cArr = null;
        loop0: while (i < length) {
            while (true) {
                char cCharAt = str.charAt(i);
                if (cCharAt >= length2 || iArr[cCharAt] == 0) {
                    if (i2 >= cArrG.length) {
                        if (v08Var == null) {
                            v08Var = new v08(null);
                            v08Var.i = cArrG;
                            v08Var.d = cArrG.length;
                            v08Var.b = -1;
                        }
                        try {
                            cArrG = v08Var.g();
                            i2 = 0;
                        } catch (IOException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                    int i3 = i2 + 1;
                    cArrG[i2] = cCharAt;
                    i++;
                    if (i >= length) {
                        i2 = i3;
                        break loop0;
                    }
                    i2 = i3;
                }
            }
            int i4 = 2;
            if (cArr == null) {
                cArr = new char[]{'\\', 0, '0', '0', 0, 0};
            }
            int i5 = i + 1;
            char cCharAt2 = str.charAt(i);
            int i6 = iArr[cCharAt2];
            if (i6 < 0) {
                cArr[1] = 'u';
                char[] cArr2 = a;
                cArr[4] = cArr2[cCharAt2 >> 4];
                cArr[5] = cArr2[cCharAt2 & 15];
                i4 = 6;
            } else {
                cArr[1] = (char) i6;
            }
            int i7 = i2 + i4;
            if (i7 > cArrG.length) {
                int length3 = cArrG.length - i2;
                if (length3 > 0) {
                    System.arraycopy(cArr, 0, cArrG, i2, length3);
                }
                if (v08Var == null) {
                    v08Var = new v08(null);
                    v08Var.i = cArrG;
                    v08Var.d = cArrG.length;
                    v08Var.b = -1;
                }
                try {
                    cArrG = v08Var.g();
                    int i8 = i4 - length3;
                    System.arraycopy(cArr, length3, cArrG, 0, i8);
                    i2 = i8;
                } catch (IOException e2) {
                    throw new IllegalStateException(e2);
                }
            } else {
                System.arraycopy(cArr, 0, cArrG, i2, i4);
                i2 = i7;
            }
            i = i5;
        }
        if (v08Var == null) {
            return Arrays.copyOfRange(cArrG, 0, i2);
        }
        v08Var.d = i2;
        try {
            return v08Var.d();
        } catch (IOException e3) {
            throw new IllegalStateException(e3);
        }
    }
}
