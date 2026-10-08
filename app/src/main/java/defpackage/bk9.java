package defpackage;

import java.io.IOException;
import java.math.RoundingMode;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class bk9 {
    public static final sj9 d;
    public final pj9 a;
    public final Character b;
    public volatile bk9 c;

    static {
        new wj9("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        new wj9("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new bk9("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new bk9("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        d = new sj9(new pj9("base16()", new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'}));
    }

    public bk9(pj9 pj9Var, Character ch) {
        this.a = pj9Var;
        if (ch != null) {
            byte[] bArr = pj9Var.g;
            if (bArr.length > 61 && bArr[61] != -1) {
                c6.f(xx3.C("Padding character %s was already in alphabet", ch));
                throw null;
            }
        }
        this.b = ch;
    }

    public void a(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        y13.P(0, i, bArr.length);
        while (i2 < i) {
            pj9 pj9Var = this.a;
            b(sb, bArr, i2, Math.min(pj9Var.f, i - i2));
            i2 += pj9Var.f;
        }
    }

    public final void b(StringBuilder sb, byte[] bArr, int i, int i2) {
        y13.P(i, i + i2, bArr.length);
        pj9 pj9Var = this.a;
        int i3 = pj9Var.f;
        int i4 = pj9Var.d;
        if (i2 > i3) {
            c6.b();
            return;
        }
        int i5 = 0;
        long j = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            j = (j | ((long) (bArr[i + i6] & 255))) << 8;
        }
        int i7 = (i2 + 1) * 8;
        while (i5 < i2 * 8) {
            sb.append(pj9Var.b[((int) (j >>> ((i7 - i4) - i5))) & pj9Var.c]);
            i5 += i4;
        }
        if (this.b != null) {
            while (i5 < pj9Var.f * 8) {
                sb.append('=');
                i5 += i4;
            }
        }
    }

    public final String c(byte[] bArr, int i) {
        y13.P(0, i, bArr.length);
        pj9 pj9Var = this.a;
        int i2 = pj9Var.f;
        RoundingMode roundingMode = RoundingMode.CEILING;
        StringBuilder sb = new StringBuilder(pj9Var.e * yc9.A0(i, i2));
        try {
            a(sb, bArr, i);
            return sb.toString();
        } catch (IOException e) {
            e6.e(e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof bk9) {
            bk9 bk9Var = (bk9) obj;
            if (this.a.equals(bk9Var.a) && Objects.equals(this.b, bk9Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.b) ^ this.a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        pj9 pj9Var = this.a;
        sb.append(pj9Var);
        if (8 % pj9Var.d != 0) {
            Character ch = this.b;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    public bk9(String str, String str2) {
        this(new pj9(str, str2.toCharArray()), (Character) '=');
    }
}
