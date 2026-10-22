package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b79 extends c79 {
    public final byte[] c;
    public final int d;
    public int e;

    public b79(byte[] bArr, int i) {
        if (((bArr.length - i) | i) < 0) {
            Locale locale = Locale.US;
            c6.f(dj7.i("Array range is invalid. Buffer.length=", bArr.length, i, ", offset=0, length="));
            throw null;
        }
        this.c = bArr;
        this.e = 0;
        this.d = i;
    }

    @Override // defpackage.c79
    public final void a(byte b) throws e79 {
        int i = this.e;
        try {
            int i2 = i + 1;
            try {
                this.c[i] = b;
                this.e = i2;
            } catch (IndexOutOfBoundsException e) {
                e = e;
                i = i2;
                throw new e79(i, this.d, 1, e);
            }
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
        }
    }

    @Override // defpackage.c79
    public final void b(int i) throws e79 {
        int i2 = this.e;
        try {
            byte[] bArr = this.c;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = i >> 24;
            this.e = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new e79(i2, this.d, 4, e);
        }
    }

    @Override // defpackage.c79
    public final void c(int i, int i2) throws e79 {
        p(i, 5);
        b(i2);
    }

    @Override // defpackage.c79
    public final void d(int i, long j) throws e79 {
        p(i, 1);
        h(j);
    }

    @Override // defpackage.c79
    public final void e(int i, String str) throws e79 {
        p(i, 2);
        int i2 = this.e;
        try {
            int iT = c79.t(str.length() * 3);
            int iT2 = c79.t(str.length());
            byte[] bArr = this.c;
            if (iT2 != iT) {
                o(tu0.E(str));
                int i3 = this.e;
                this.e = tu0.F(str, bArr, i3, bArr.length - i3);
            } else {
                int i4 = i2 + iT2;
                this.e = i4;
                int iF = tu0.F(str, bArr, i4, bArr.length - i4);
                this.e = i2;
                o((iF - i2) - iT2);
                this.e = iF;
            }
        } catch (IndexOutOfBoundsException e) {
            throw new e79(e);
        }
    }

    @Override // defpackage.c79
    public final void f(int i, t69 t69Var) throws e79 {
        p(i, 2);
        o(t69Var.d());
        t69Var.p(this);
    }

    @Override // defpackage.c79
    public final void g(int i, boolean z) throws e79 {
        p(i, 0);
        a(z ? (byte) 1 : (byte) 0);
    }

    @Override // defpackage.c79
    public final void h(long j) throws e79 {
        int i = this.e;
        try {
            byte[] bArr = this.c;
            bArr[i] = (byte) j;
            bArr[i + 1] = (byte) (j >> 8);
            bArr[i + 2] = (byte) (j >> 16);
            bArr[i + 3] = (byte) (j >> 24);
            bArr[i + 4] = (byte) (j >> 32);
            bArr[i + 5] = (byte) (j >> 40);
            bArr[i + 6] = (byte) (j >> 48);
            bArr[i + 7] = (byte) (j >> 56);
            this.e = i + 8;
        } catch (IndexOutOfBoundsException e) {
            throw new e79(i, this.d, 8, e);
        }
    }

    @Override // defpackage.c79
    public final void i(byte[] bArr, int i, int i2) throws e79 {
        try {
            System.arraycopy(bArr, i, this.c, this.e, i2);
            this.e += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new e79(this.e, this.d, i2, e);
        }
    }

    @Override // defpackage.c79
    public final void j(int i) throws e79 {
        if (i >= 0) {
            o(i);
        } else {
            m(i);
        }
    }

    @Override // defpackage.c79
    public final void k(int i, int i2) throws e79 {
        p(i, 0);
        j(i2);
    }

    @Override // defpackage.c79
    public final void l(int i, long j) throws e79 {
        p(i, 0);
        m(j);
    }

    @Override // defpackage.c79
    public final void m(long j) throws e79 {
        int i;
        int i2 = this.e;
        boolean z = c79.b;
        byte[] bArr = this.c;
        if (!z || u() < 10) {
            while ((j & (-128)) != 0) {
                i = i2 + 1;
                try {
                    bArr[i2] = (byte) (((int) j) | 128);
                    j >>>= 7;
                    i2 = i;
                } catch (IndexOutOfBoundsException e) {
                    throw new e79(i, this.d, 1, e);
                }
            }
            i = i2 + 1;
            bArr[i2] = (byte) j;
        } else {
            while ((j & (-128)) != 0) {
                q89.e(bArr, i2, (byte) (((int) j) | 128));
                j >>>= 7;
                i2++;
            }
            i = i2 + 1;
            q89.e(bArr, i2, (byte) j);
        }
        this.e = i;
    }

    @Override // defpackage.c79
    public final void o(int i) throws e79 {
        int i2;
        int i3 = this.e;
        while (true) {
            int i4 = i & (-128);
            byte[] bArr = this.c;
            if (i4 == 0) {
                i2 = i3 + 1;
                bArr[i3] = (byte) i;
                this.e = i2;
                return;
            } else {
                i2 = i3 + 1;
                try {
                    bArr[i3] = (byte) (i | 128);
                    i >>>= 7;
                    i3 = i2;
                } catch (IndexOutOfBoundsException e) {
                    throw new e79(i2, this.d, 1, e);
                }
            }
            throw new e79(i2, this.d, 1, e);
        }
    }

    @Override // defpackage.c79
    public final void p(int i, int i2) throws e79 {
        o((i << 3) | i2);
    }

    @Override // defpackage.c79
    public final void q(int i, int i2) throws e79 {
        p(i, 0);
        o(i2);
    }

    public final int u() {
        return this.d - this.e;
    }
}
