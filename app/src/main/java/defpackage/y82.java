package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class y82 extends q1 {
    public static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public final byte[] a;

    public y82(byte[] bArr) {
        this.a = bArr;
    }

    public static void x(int i, StringBuilder sb) {
        char[] cArr = b;
        sb.append(cArr[(i >>> 4) & 15]);
        sb.append(cArr[i & 15]);
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return ms8.x(this.a);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (q1Var instanceof y82) {
            return Arrays.equals(this.a, ((y82) q1Var).a);
        }
        return false;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) {
        m1Var.k(28, z, this.a);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return false;
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        return m1.d(this.a.length, z);
    }

    public final String toString() {
        int i;
        byte[] bArr = this.a;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(((m1.c(length) + length) * 2) + 3);
        sb.append("#1C");
        if (length < 128) {
            x(length, sb);
        } else {
            byte[] bArr2 = new byte[5];
            int i2 = length;
            int i3 = 5;
            while (true) {
                i = i3 - 1;
                bArr2[i] = (byte) i2;
                i2 >>>= 8;
                if (i2 == 0) {
                    break;
                }
                i3 = i;
            }
            int i4 = i3 - 2;
            bArr2[i4] = (byte) (128 | (5 - i));
            while (true) {
                int i5 = i4 + 1;
                x(bArr2[i4], sb);
                if (i5 >= 5) {
                    break;
                }
                i4 = i5;
            }
        }
        for (byte b2 : bArr) {
            x(b2, sb);
        }
        return sb.toString();
    }
}
