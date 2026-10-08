package defpackage;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p67 extends hy0 {
    public final transient byte[][] e;
    public final transient int[] f;

    public p67(byte[][] bArr, int[] iArr) {
        super(hy0.d.a);
        this.e = bArr;
        this.f = iArr;
    }

    public final hy0 A() {
        return new hy0(y());
    }

    @Override // defpackage.hy0
    public final String a() {
        throw null;
    }

    @Override // defpackage.hy0
    public final hy0 c(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[][] bArr = this.e;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.f;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            messageDigest.update(bArr[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return new hy0(bArrDigest);
    }

    @Override // defpackage.hy0
    public final int d() {
        return this.f[this.e.length - 1];
    }

    @Override // defpackage.hy0
    public final String e() {
        return A().e();
    }

    @Override // defpackage.hy0
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof hy0) {
            hy0 hy0Var = (hy0) obj;
            if (hy0Var.d() == d() && l(0, hy0Var, d())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.hy0
    public final int f(byte[] bArr, int i) {
        bArr.getClass();
        return A().f(bArr, i);
    }

    @Override // defpackage.hy0
    public final byte[] h() {
        return y();
    }

    @Override // defpackage.hy0
    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        byte[][] bArr = this.e;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            int[] iArr = this.f;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            byte[] bArr2 = bArr[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr2[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.b = i3;
        return i3;
    }

    @Override // defpackage.hy0
    public final byte i(int i) {
        byte[][] bArr = this.e;
        int length = bArr.length - 1;
        int[] iArr = this.f;
        k55.c(iArr[length], i, 1L);
        int iA = pe4.A(this, i);
        return bArr[iA][(i - (iA == 0 ? 0 : iArr[iA - 1])) + iArr[bArr.length + iA]];
    }

    @Override // defpackage.hy0
    public final int j(byte[] bArr) {
        bArr.getClass();
        return A().j(bArr);
    }

    @Override // defpackage.hy0
    public final boolean l(int i, hy0 hy0Var, int i2) {
        hy0Var.getClass();
        if (i >= 0 && i <= d() - i2) {
            int i3 = i2 + i;
            int iA = pe4.A(this, i);
            int i4 = 0;
            while (i < i3) {
                int[] iArr = this.f;
                int i5 = iA == 0 ? 0 : iArr[iA - 1];
                int i6 = iArr[iA] - i5;
                byte[][] bArr = this.e;
                int i7 = iArr[bArr.length + iA];
                int iMin = Math.min(i3, i6 + i5) - i;
                if (hy0Var.o(i4, bArr[iA], (i - i5) + i7, iMin)) {
                    i4 += iMin;
                    i += iMin;
                    iA++;
                }
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.hy0
    public final boolean o(int i, byte[] bArr, int i2, int i3) {
        bArr.getClass();
        if (i < 0 || i > d() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iA = pe4.A(this, i);
        while (i < i4) {
            int[] iArr = this.f;
            int i5 = iA == 0 ? 0 : iArr[iA - 1];
            int i6 = iArr[iA] - i5;
            byte[][] bArr2 = this.e;
            int i7 = iArr[bArr2.length + iA];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!k55.b(bArr2[iA], (i - i5) + i7, i2, bArr, iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iA++;
        }
        return true;
    }

    @Override // defpackage.hy0
    public final String p(Charset charset) {
        charset.getClass();
        return A().p(charset);
    }

    @Override // defpackage.hy0
    public final hy0 r(int i, int i2) {
        if (i2 == -1234567890) {
            i2 = d();
        }
        if (i < 0) {
            f6.g(xs1.h(i, "beginIndex=", " < 0"));
            return null;
        }
        if (i2 > d()) {
            StringBuilder sbR = dj7.r(i2, "endIndex=", " > length(");
            sbR.append(d());
            sbR.append(')');
            throw new IllegalArgumentException(sbR.toString().toString());
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            f6.g(dj7.i("endIndex=", i2, i, " < beginIndex="));
            return null;
        }
        if (i == 0 && i2 == d()) {
            return this;
        }
        if (i == i2) {
            return hy0.d;
        }
        int iA = pe4.A(this, i);
        int iA2 = pe4.A(this, i2 - 1);
        byte[][] bArr = this.e;
        byte[][] bArr2 = (byte[][]) x50.l0(bArr, iA, iA2 + 1);
        int[] iArr = new int[bArr2.length * 2];
        int[] iArr2 = this.f;
        if (iA <= iA2) {
            int i4 = iA;
            int i5 = 0;
            while (true) {
                iArr[i5] = Math.min(iArr2[i4] - i, i3);
                int i6 = i5 + 1;
                iArr[i5 + bArr2.length] = iArr2[bArr.length + i4];
                if (i4 == iA2) {
                    break;
                }
                i4++;
                i5 = i6;
            }
        }
        int i7 = iA != 0 ? iArr2[iA - 1] : 0;
        int length = bArr2.length;
        iArr[length] = (i - i7) + iArr[length];
        return new p67(bArr2, iArr);
    }

    @Override // defpackage.hy0
    public final hy0 t() {
        return A().t();
    }

    @Override // defpackage.hy0
    public final String toString() {
        return A().toString();
    }

    @Override // defpackage.hy0
    public final void x(nw0 nw0Var, int i) {
        int iA = pe4.A(this, 0);
        int i2 = 0;
        while (i2 < i) {
            int[] iArr = this.f;
            int i3 = iA == 0 ? 0 : iArr[iA - 1];
            int i4 = iArr[iA] - i3;
            byte[][] bArr = this.e;
            int i5 = iArr[bArr.length + iA];
            int iMin = Math.min(i, i4 + i3) - i2;
            int i6 = (i2 - i3) + i5;
            m67 m67Var = new m67(bArr[iA], i6, i6 + iMin, true, false);
            m67 m67Var2 = nw0Var.a;
            if (m67Var2 == null) {
                m67Var.g = m67Var;
                m67Var.f = m67Var;
                nw0Var.a = m67Var;
            } else {
                m67 m67Var3 = m67Var2.g;
                m67Var3.getClass();
                m67Var3.b(m67Var);
            }
            i2 += iMin;
            iA++;
        }
        nw0Var.b += (long) i;
    }

    public final byte[] y() {
        byte[] bArr = new byte[d()];
        byte[][] bArr2 = this.e;
        int length = bArr2.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.f;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            x50.h0(bArr2[i], i3, i4, bArr, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }
}
