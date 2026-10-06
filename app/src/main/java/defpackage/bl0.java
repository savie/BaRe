package defpackage;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bl0 implements Serializable {
    public final transient int[] a;
    public final transient char[] b;
    public final transient byte[] c;
    public final String d;
    public final char e;
    public final int f;
    public final boolean k;
    public final int n;

    public bl0(String str, String str2, boolean z, char c, int i) {
        int[] iArr = new int[128];
        this.a = iArr;
        char[] cArr = new char[64];
        this.b = cArr;
        this.c = new byte[64];
        this.d = str;
        this.k = z;
        this.e = c;
        this.f = i;
        int length = str2.length();
        if (length != 64) {
            c6.f(xs1.h(length, "Base64Alphabet length must be exactly 64 (was ", ")"));
            throw null;
        }
        str2.getChars(0, length, cArr, 0);
        Arrays.fill(iArr, -1);
        for (int i2 = 0; i2 < length; i2++) {
            char c2 = this.b[i2];
            this.c[i2] = (byte) c2;
            this.a[c2] = i2;
        }
        if (z) {
            this.a[c] = -2;
        }
        this.n = z ? 2 : 1;
    }

    public final int a(char[] cArr, int i, int i2) {
        char[] cArr2 = this.b;
        cArr[i2] = cArr2[(i >> 18) & 63];
        cArr[i2 + 1] = cArr2[(i >> 12) & 63];
        int i3 = i2 + 3;
        cArr[i2 + 2] = cArr2[(i >> 6) & 63];
        int i4 = i2 + 4;
        cArr[i3] = cArr2[i & 63];
        return i4;
    }

    public final int b(int i, int i2, char[] cArr, int i3) {
        char[] cArr2 = this.b;
        cArr[i3] = cArr2[(i >> 18) & 63];
        int i4 = i3 + 2;
        cArr[i3 + 1] = cArr2[(i >> 12) & 63];
        if (!this.k) {
            if (i2 != 2) {
                return i4;
            }
            int i5 = i3 + 3;
            cArr[i4] = cArr2[(i >> 6) & 63];
            return i5;
        }
        int i6 = i3 + 3;
        char c = this.e;
        cArr[i4] = i2 == 2 ? cArr2[(i >> 6) & 63] : c;
        int i7 = i3 + 4;
        cArr[i6] = c;
        return i7;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != bl0.class) {
            return false;
        }
        bl0 bl0Var = (bl0) obj;
        return bl0Var.e == this.e && bl0Var.f == this.f && bl0Var.k == this.k && bl0Var.n == this.n && this.d.equals(bl0Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode();
    }

    public final String toString() {
        return this.d;
    }

    public bl0(bl0 bl0Var) {
        int i = bl0Var.n;
        int[] iArr = new int[128];
        this.a = iArr;
        char[] cArr = new char[64];
        this.b = cArr;
        byte[] bArr = new byte[64];
        this.c = bArr;
        this.d = "MIME-NO-LINEFEEDS";
        byte[] bArr2 = bl0Var.c;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        char[] cArr2 = bl0Var.b;
        System.arraycopy(cArr2, 0, cArr, 0, cArr2.length);
        int[] iArr2 = bl0Var.a;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.k = true;
        this.e = '=';
        this.f = Integer.MAX_VALUE;
        this.n = i;
    }
}
