package defpackage;

import java.math.BigInteger;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class t0 extends q1 {
    public static final q0 c = new q0(t0.class, 3);
    public final byte[] a;
    public final int b;

    public t0(byte[] bArr) {
        if (E(bArr)) {
            c6.f("malformed integer");
            throw null;
        }
        this.a = bArr;
        int length = bArr.length - 1;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            if (bArr[i] != (bArr[i2] >> 7)) {
                break;
            } else {
                i = i2;
            }
        }
        this.b = i;
    }

    public static int B(byte[] bArr, int i) {
        int length = bArr.length;
        int iMax = Math.max(i, length - 4);
        int i2 = bArr[iMax];
        while (true) {
            iMax++;
            if (iMax >= length) {
                return i2;
            }
            i2 = (i2 << 8) | (bArr[iMax] & 255);
        }
    }

    public static boolean E(byte[] bArr) {
        int length = bArr.length;
        if (length != 0) {
            return (length == 1 || bArr[0] != (bArr[1] >> 7) || u86.a("org.bouncycastle.asn1.allow_unsafe_integer")) ? false : true;
        }
        return true;
    }

    public static t0 x(Object obj) {
        if (obj == null || (obj instanceof t0)) {
            return (t0) obj;
        }
        if (!(obj instanceof byte[])) {
            c6.f("illegal object in getInstance: ".concat(obj.getClass().getName()));
            return null;
        }
        try {
            return (t0) c.l((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    public final int C() {
        byte[] bArr = this.a;
        int length = bArr.length;
        int i = this.b;
        if (length - i <= 4) {
            return B(bArr, i);
        }
        throw new ArithmeticException("ASN.1 Integer out of int range");
    }

    public final long F() {
        byte[] bArr = this.a;
        int length = bArr.length;
        int i = this.b;
        if (length - i > 8) {
            throw new ArithmeticException("ASN.1 Integer out of long range");
        }
        int length2 = bArr.length;
        int iMax = Math.max(i, length2 - 8);
        long j = bArr[iMax];
        while (true) {
            iMax++;
            if (iMax >= length2) {
                return j;
            }
            j = (j << 8) | ((long) (bArr[iMax] & 255));
        }
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return ms8.x(this.a);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (q1Var instanceof t0) {
            return Arrays.equals(this.a, ((t0) q1Var).a);
        }
        return false;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) {
        m1Var.k(2, z, this.a);
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
        return new BigInteger(this.a).toString();
    }

    public final boolean y(int i) {
        byte[] bArr = this.a;
        int length = bArr.length;
        int i2 = this.b;
        return length - i2 <= 4 && B(bArr, i2) == i;
    }

    public t0(BigInteger bigInteger) {
        this.a = bigInteger.toByteArray();
        this.b = 0;
    }

    public t0(long j) {
        this.a = BigInteger.valueOf(j).toByteArray();
        this.b = 0;
    }
}
