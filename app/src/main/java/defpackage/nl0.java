package defpackage;

import java.math.RoundingMode;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nl0 {
    public final String a;
    public final char[] b;
    public final int c;
    public final int d;
    public final int e;
    public final byte[] f;

    public nl0(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        int i = 0;
        while (true) {
            if (i >= cArr.length) {
                this.a = str;
                this.b = cArr;
                try {
                    int length = cArr.length;
                    RoundingMode roundingMode = RoundingMode.UNNECESSARY;
                    int iD = ho6.D(length);
                    this.c = iD;
                    int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iD);
                    int i2 = 1 << (3 - iNumberOfTrailingZeros);
                    this.d = i2;
                    this.e = iD >> iNumberOfTrailingZeros;
                    this.f = bArr;
                    boolean[] zArr = new boolean[i2];
                    for (int i3 = 0; i3 < this.e; i3++) {
                        int i4 = this.c;
                        RoundingMode roundingMode2 = RoundingMode.CEILING;
                        zArr[ho6.l(i3 * 8, i4)] = true;
                    }
                    return;
                } catch (ArithmeticException e) {
                    throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e);
                }
            }
            char c = cArr[i];
            if (!(c < 128)) {
                c6.f(y13.t("Non-ASCII character: %s", Character.valueOf(c)));
                throw null;
            }
            if (!(bArr[c] == -1)) {
                c6.f(y13.t("Duplicate character: %s", Character.valueOf(c)));
                throw null;
            }
            bArr[c] = (byte) i;
            i++;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof nl0) && Arrays.equals(this.b, ((nl0) obj).b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + 1237;
    }

    public final String toString() {
        return this.a;
    }
}
