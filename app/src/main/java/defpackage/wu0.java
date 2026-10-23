package defpackage;

import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class wu0 extends ka6 {
    public long c;
    public long d;
    public final long e;
    public final x5 f;
    public final boolean k;

    /* JADX WARN: Illegal instructions before constructor call */
    public wu0(vu0 vu0Var) {
        y4 y4Var = vu0Var.k;
        if (y4Var == null) {
            l0.e("origin == null");
            throw null;
        }
        super((InputStream) y4Var.k, vu0Var);
        this.c = 0L;
        this.e = vu0Var.t;
        this.k = vu0Var.y;
        this.f = vu0Var.x;
    }

    public static vu0 b() {
        vu0 vu0Var = new vu0();
        vu0Var.t = -1L;
        vu0Var.x = ho6.a;
        vu0Var.y = true;
        return vu0Var;
    }

    @Override // defpackage.ka6
    public final synchronized void a(int i) {
        if (i != -1) {
            try {
                this.c += (long) i;
            } catch (Throwable th) {
                throw th;
            }
        }
        super.a(i);
    }

    @Override // defpackage.ka6, java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        long j = this.e;
        return Math.min(super.available(), (int) Math.min(j == -1 ? Long.MAX_VALUE : Math.max(0L, j - g()), 2147483647L));
    }

    @Override // defpackage.ka6, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.k) {
            super.close();
        }
    }

    public final synchronized long g() {
        return this.c;
    }

    @Override // defpackage.ka6, java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
        this.d = this.c;
    }

    @Override // defpackage.ka6, java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override // defpackage.ka6, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        long j = this.e;
        if (j >= 0 && g() >= j) {
            g();
            this.f.getClass();
            return -1;
        }
        long jMin = i2;
        if (j >= 0) {
            jMin = Math.min(jMin, j - g());
        }
        return super.read(bArr, i, (int) jMin);
    }

    @Override // defpackage.ka6, java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        ((FilterInputStream) this).in.reset();
        this.c = this.d;
    }

    @Override // defpackage.ka6, java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j) {
        long jSkip;
        long j2 = this.e;
        if (j2 >= 0) {
            j = Math.min(j, j2 - g());
        }
        jSkip = ((FilterInputStream) this).in.skip(j);
        this.c += jSkip;
        return jSkip;
    }

    public final String toString() {
        return ((FilterInputStream) this).in.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public wu0(BufferedInputStream bufferedInputStream) {
        vu0 vu0VarB = b();
        vu0VarB.K(-1L);
        super(bufferedInputStream, vu0VarB);
        this.c = 0L;
        this.e = vu0VarB.t;
        this.k = vu0VarB.y;
        this.f = vu0VarB.x;
    }

    @Override // defpackage.ka6, java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        long j = this.e;
        if (j >= 0 && g() >= j) {
            g();
            this.f.getClass();
            return -1;
        }
        return super.read();
    }

    @Override // defpackage.ka6, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}
