package defpackage;

import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yx8 extends yp1 {
    public final gh7 a;

    public yx8(xx8 xx8Var) {
        vu0 vu0VarB = wu0.b();
        y4 y4Var = xx8Var.k;
        if (y4Var == null) {
            l0.e("origin == null");
            throw null;
        }
        vu0VarB.J((InputStream) y4Var.k);
        wu0 wu0Var = new wu0(vu0VarB);
        int i = xx8.x;
        this.a = new gh7(wu0Var, xx8Var.t, v40.a);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.a(true);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws zb5 {
        if (i2 == 0) {
            return 0;
        }
        try {
            return this.a.read(bArr, i, i2);
        } catch (yb5 e) {
            throw new zb5(e.a, e.b, e);
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws zb5 {
        try {
            return n84.c(this.a, j);
        } catch (yb5 e) {
            throw new zb5(e.a, e.b, e);
        }
    }

    @Override // java.io.InputStream
    public final int read() throws zb5 {
        try {
            return this.a.read();
        } catch (yb5 e) {
            throw new zb5(e.a, e.b, e);
        }
    }
}
