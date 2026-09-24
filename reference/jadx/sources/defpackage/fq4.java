package defpackage;

import com.nimbusds.jose.crypto.impl.XC20P;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fq4 extends oe3 {
    public final v40 a;
    public pe3 b;
    public aq4 c;
    public cf6 d;
    public pq4 e;
    public final int f;
    public boolean k = true;
    public boolean n = true;
    public boolean p = true;
    public int q = 0;
    public boolean r = false;
    public IOException t = null;
    public final byte[] x = new byte[6];
    public final byte[] y = new byte[1];

    public fq4(pe3 pe3Var, eq4 eq4Var, v40 v40Var) {
        this.a = v40Var;
        this.b = pe3Var;
        cf6 cf6Var = new cf6(v40Var);
        this.d = cf6Var;
        int i = eq4Var.a;
        pq4 pq4VarF = pq4.f(cf6Var, eq4Var.b, eq4Var.c, eq4Var.d, eq4Var.e, i, 65536 > i ? 65536 - i : 0, eq4Var.f, eq4Var.k, eq4Var.n, v40Var);
        this.e = pq4VarF;
        this.c = pq4VarF.n;
        this.f = (((eq4Var.d * 5) + eq4Var.c) * 9) + eq4Var.b;
    }

    public final void a() throws IOException {
        cf6 cf6Var = this.d;
        cf6Var.getClass();
        for (int i = 0; i < 5; i++) {
            try {
                cf6Var.W();
            } catch (IOException unused) {
                throw new Error();
            }
        }
        int i2 = cf6Var.n;
        pq4 pq4Var = this.e;
        int i3 = pq4Var.A;
        int i4 = i2 + 2;
        byte[] bArr = this.x;
        if (i4 < i3) {
            boolean z = this.p;
            int i5 = i3 - 1;
            bArr[0] = (byte) ((z ? this.k ? 224 : XC20P.IV_BIT_LENGTH : this.n ? 160 : 128) | (i5 >>> 16));
            bArr[1] = (byte) (i5 >>> 8);
            bArr[2] = (byte) i5;
            int i6 = i2 - 1;
            bArr[3] = (byte) (i6 >>> 8);
            bArr[4] = (byte) i6;
            if (z) {
                bArr[5] = (byte) this.f;
                this.b.write(bArr, 0, 6);
            } else {
                this.b.write(bArr, 0, 5);
            }
            cf6 cf6Var2 = this.d;
            this.b.write(cf6Var2.m, 0, cf6Var2.n);
            this.p = false;
            this.n = false;
            this.k = false;
        } else {
            pq4Var.a();
            i3 = this.e.A;
            int i7 = i3;
            while (i7 > 0) {
                int iMin = Math.min(i7, 65536);
                bArr[0] = (byte) (this.k ? 1 : 2);
                int i8 = iMin - 1;
                bArr[1] = (byte) (i8 >>> 8);
                bArr[2] = (byte) i8;
                this.b.write(bArr, 0, 3);
                aq4 aq4Var = this.c;
                this.b.write(aq4Var.e, (aq4Var.g + 1) - i7, iMin);
                i7 -= iMin;
                this.k = false;
            }
            this.n = true;
        }
        this.q -= i3;
        this.e.A = 0;
        this.d.Y();
    }

    public final void b() throws IOException {
        IOException iOException = this.t;
        if (iOException != null) {
            throw iOException;
        }
        aq4 aq4Var = this.c;
        aq4Var.h = aq4Var.j - 1;
        aq4Var.i = true;
        aq4Var.g();
        while (this.q > 0) {
            try {
                this.e.b();
                a();
            } catch (IOException e) {
                this.t = e;
                throw e;
            }
        }
        this.b.write(0);
        this.r = true;
        aq4 aq4Var2 = this.e.n;
        v40 v40Var = this.a;
        aq4Var2.h(v40Var);
        this.e = null;
        this.c = null;
        v40Var.c(this.d.m);
        this.d = null;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.b != null) {
            if (!this.r) {
                try {
                    b();
                } catch (IOException unused) {
                }
            }
            try {
                this.b.close();
            } catch (IOException e) {
                if (this.t == null) {
                    this.t = e;
                }
            }
            this.b = null;
        }
        IOException iOException = this.t;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        IOException iOException = this.t;
        if (iOException != null) {
            throw iOException;
        }
        if (this.r) {
            throw new ay8("Stream finished or closed");
        }
        try {
            aq4 aq4Var = this.c;
            aq4Var.h = aq4Var.j - 1;
            aq4Var.g();
            while (this.q > 0) {
                this.e.b();
                a();
            }
            this.b.flush();
        } catch (IOException e) {
            this.t = e;
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            l0.a();
            return;
        }
        IOException iOException = this.t;
        if (iOException != null) {
            throw iOException;
        }
        if (this.r) {
            throw new ay8("Stream finished or closed");
        }
        while (i2 > 0) {
            try {
                int iA = this.c.a(bArr, i, i2);
                i += iA;
                i2 -= iA;
                this.q += iA;
                if (this.e.b()) {
                    a();
                }
            } catch (IOException e) {
                this.t = e;
                throw e;
            }
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        byte[] bArr = this.y;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
