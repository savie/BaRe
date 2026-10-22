package defpackage;

import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o83 extends InputStream {
    public static final l15 p = o15.b(o83.class);
    public final long a;
    public r63 b;
    public long c = 0;
    public int d = 0;
    public byte[] e;
    public boolean f;
    public p21 k;
    public final int n;

    public o83(r63 r63Var, int i, long j) {
        this.b = r63Var;
        this.n = i;
        this.a = j;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0080  */
    public final void a() throws va8 {
        if (this.f) {
            return;
        }
        if (this.k == null) {
            this.k = b();
        }
        try {
            du6 du6Var = (du6) this.k.a.get(this.a, TimeUnit.MILLISECONDS);
            ut6 ut6Var = (ut6) du6Var.a;
            long j = ut6Var.j;
            if (j == 0) {
                this.e = du6Var.f;
                this.d = 0;
                this.c += (long) du6Var.e;
            }
            if (j == 3221225489L || du6Var.e == 0) {
                p.D(Long.valueOf(this.c), "EOF, {} bytes read");
                this.f = true;
            } else if (j == 0) {
                this.k = b();
            } else {
                throw new yu6(ut6Var, "Read failed for " + this);
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new va8(e);
        } catch (ExecutionException e2) {
            e = e2;
            if (e instanceof va8) {
                throw new va8(e);
            }
        } catch (TimeoutException e3) {
            e = e3;
            if (e instanceof va8) {
                throw new va8(e);
            }
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        return 0;
    }

    public final p21 b() {
        r63 r63Var = this.b;
        long j = this.c;
        wm2 wm2Var = r63Var.b;
        nr6 nr6Var = r63Var.c;
        return wm2Var.b(new cu6(wm2Var.e, nr6Var, wm2Var.t, wm2Var.c, j, Math.min(this.n, wm2Var.f)));
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f = true;
        this.b = null;
        this.e = null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws va8 {
        byte[] bArr2 = this.e;
        if (bArr2 == null || this.d >= bArr2.length) {
            a();
        }
        if (this.f) {
            return -1;
        }
        byte[] bArr3 = this.e;
        int length = bArr3.length;
        int i3 = this.d;
        if (length - i3 <= i2) {
            i2 = bArr3.length - i3;
        }
        System.arraycopy(bArr3, i3, bArr, i, i2);
        this.d += i2;
        return i2;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        byte[] bArr = this.e;
        if (bArr == null) {
            this.c += j;
            return j;
        }
        long j2 = ((long) this.d) + j;
        if (j2 < bArr.length) {
            this.d = (int) j2;
            return j;
        }
        this.c = (j2 - ((long) bArr.length)) + this.c;
        this.e = null;
        this.k = null;
        return j;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read() throws va8 {
        byte[] bArr = this.e;
        if (bArr == null || this.d >= bArr.length) {
            a();
        }
        if (this.f) {
            return -1;
        }
        byte[] bArr2 = this.e;
        int i = this.d;
        this.d = i + 1;
        return bArr2[i] & 255;
    }
}
