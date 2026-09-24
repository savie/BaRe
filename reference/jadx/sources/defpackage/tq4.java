package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tq4 extends oe3 {
    public OutputStream a;
    public final v40 b;
    public aq4 c;
    public final df6 d;
    public pq4 e;
    public final long f;
    public long k;
    public boolean n;
    public IOException p;
    public final byte[] q;

    public tq4(OutputStream outputStream, eq4 eq4Var) {
        v40 v40Var = v40.a;
        this.k = 0L;
        this.n = false;
        this.p = null;
        this.q = new byte[1];
        outputStream.getClass();
        this.f = -1L;
        this.b = v40Var;
        this.a = outputStream;
        df6 df6Var = new df6(outputStream);
        this.d = df6Var;
        pq4 pq4VarF = pq4.f(df6Var, eq4Var.b, eq4Var.c, eq4Var.d, eq4Var.e, eq4Var.a, 0, eq4Var.f, eq4Var.k, eq4Var.n, v40Var);
        this.e = pq4VarF;
        this.c = pq4VarF.n;
    }

    public final void a() throws IOException {
        if (this.n) {
            return;
        }
        IOException iOException = this.p;
        if (iOException != null) {
            throw iOException;
        }
        long j = this.f;
        if (j != -1) {
            try {
                if (j != this.k) {
                    throw new ay8("Expected uncompressed size (" + j + ") doesn't equal the number of bytes written to the stream (" + this.k + ")");
                }
            } catch (IOException e) {
                this.p = e;
                throw e;
            }
        }
        aq4 aq4Var = this.c;
        aq4Var.h = aq4Var.j - 1;
        aq4Var.i = true;
        aq4Var.g();
        pq4 pq4Var = this.e;
        if (pq4Var.n.g != -1 || pq4Var.c()) {
            while (pq4Var.d()) {
            }
        }
        df6 df6Var = this.d;
        for (int i = 0; i < 5; i++) {
            df6Var.W();
        }
        df6Var.getClass();
        this.n = true;
        this.e.n.h(this.b);
        this.e = null;
        this.c = null;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.a != null) {
            try {
                a();
            } catch (IOException unused) {
            }
            try {
                this.a.close();
            } catch (IOException e) {
                if (this.p == null) {
                    this.p = e;
                }
            }
            this.a = null;
        }
        IOException iOException = this.p;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws ay8 {
        throw new ay8("LZMAOutputStream does not support flushing");
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            l0.a();
            return;
        }
        IOException iOException = this.p;
        if (iOException != null) {
            throw iOException;
        }
        if (this.n) {
            throw new ay8("Stream finished or closed");
        }
        long j = this.f;
        if (j != -1 && j - this.k < i2) {
            throw new ay8(fz5.m("Expected uncompressed input size (", " bytes) was exceeded", j));
        }
        this.k += (long) i2;
        while (i2 > 0) {
            try {
                int iA = this.c.a(bArr, i, i2);
                i += iA;
                i2 -= iA;
                pq4 pq4Var = this.e;
                if (pq4Var.n.g != -1 || pq4Var.c()) {
                    while (pq4Var.d()) {
                    }
                }
            } catch (IOException e) {
                this.p = e;
                throw e;
            }
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        byte[] bArr = this.q;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
