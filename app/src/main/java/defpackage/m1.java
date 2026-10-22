package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class m1 {
    public final ByteArrayOutputStream a;

    public m1() {
        this.a = new ByteArrayOutputStream();
    }

    public static int c(int i) {
        if (i < 128) {
            return 1;
        }
        int i2 = 2;
        while (true) {
            i >>>= 8;
            if (i == 0) {
                return i2;
            }
            i2++;
        }
    }

    public static int d(int i, boolean z) {
        return c(i) + (z ? 1 : 0) + i;
    }

    public static int e(int i) {
        if (i < 31) {
            return 1;
        }
        int i2 = 2;
        while (true) {
            i >>>= 7;
            if (i == 0) {
                return i2;
            }
            i2++;
        }
    }

    public r82 a() {
        return new r82(this.a);
    }

    public g92 b() {
        return new g92(this.a);
    }

    public void f(int i) throws IOException {
        this.a.write(i);
    }

    public void g(byte[] bArr, int i, int i2) throws IOException {
        this.a.write(bArr, i, i2);
    }

    public void h(byte[] bArr, int i) throws IOException {
        bArr.getClass();
        r((i << 3) | 2);
        r(bArr.length);
        this.a.write(bArr);
    }

    public void i(int i) throws IOException {
        if (i < 128) {
            f(i);
            return;
        }
        int i2 = 5;
        byte[] bArr = new byte[5];
        while (true) {
            int i3 = i2 - 1;
            bArr[i3] = (byte) i;
            i >>>= 8;
            if (i == 0) {
                int i4 = i2 - 2;
                bArr[i4] = (byte) ((5 - i3) | 128);
                g(bArr, i4, 6 - i3);
                return;
            }
            i2 = i3;
        }
    }

    public void j(b0[] b0VarArr) {
        for (b0 b0Var : b0VarArr) {
            b0Var.d().l(this, true);
        }
    }

    public void k(int i, boolean z, byte[] bArr) {
        n(i, z);
        i(bArr.length);
        g(bArr, 0, bArr.length);
    }

    public void l(boolean z, int i, b0[] b0VarArr) throws IOException {
        n(i, z);
        f(128);
        j(b0VarArr);
        f(0);
        f(0);
    }

    public void m(int i, int i2) throws IOException {
        if (i2 < 31) {
            f(i | i2);
            return;
        }
        byte[] bArr = new byte[6];
        int i3 = 5;
        bArr[5] = (byte) (i2 & 127);
        while (i2 > 127) {
            i2 >>>= 7;
            i3--;
            bArr[i3] = (byte) ((i2 & 127) | 128);
        }
        int i4 = i3 - 1;
        bArr[i4] = (byte) (i | 31);
        g(bArr, i4, 6 - i4);
    }

    public void n(int i, boolean z) throws IOException {
        if (z) {
            f(i);
        }
    }

    public void o(q1 q1Var) {
        q1Var.l(this, true);
    }

    public void p(q1[] q1VarArr) {
        for (q1 q1Var : q1VarArr) {
            q1Var.l(this, true);
        }
    }

    public void q(int i, int i2) {
        r(i << 3);
        r(((long) i2) & 4294967295L);
    }

    public void r(long j) {
        while (true) {
            long j2 = (-128) & j;
            ByteArrayOutputStream byteArrayOutputStream = this.a;
            if (j2 == 0) {
                byteArrayOutputStream.write((int) j);
                return;
            } else {
                byteArrayOutputStream.write((((int) j) & 127) | 128);
                j >>>= 7;
            }
        }
    }

    public m1(ByteArrayOutputStream byteArrayOutputStream) {
        this.a = byteArrayOutputStream;
    }
}
