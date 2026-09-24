package defpackage;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m03 extends InputStream {
    public final BufferedInputStream a;
    public hr0 b;
    public final int c;
    public final int d;
    public final int e;
    public km5 f;
    public km5 k;
    public km5 n;
    public final k71 p = new k71();

    public m03(int i, int i2, BufferedInputStream bufferedInputStream) {
        if (i != 4096 && i != 8192) {
            c6.f("The dictionary size must be 4096 or 8192");
            throw null;
        }
        if (i2 != 2 && i2 != 3) {
            c6.f("The number of trees must be 2 or 3");
            throw null;
        }
        this.c = i;
        this.d = i2;
        this.e = i2;
        this.a = bufferedInputStream;
    }

    public final void a() throws IOException {
        if (this.b == null) {
            vu0 vu0VarB = wu0.b();
            BufferedInputStream bufferedInputStream = this.a;
            vu0VarB.k = new y4(new ha1(bufferedInputStream));
            wu0 wu0Var = new wu0(vu0VarB);
            try {
                if (this.d == 3) {
                    this.f = km5.k(wu0Var, 256);
                }
                this.k = km5.k(wu0Var, 64);
                this.n = km5.k(wu0Var, 64);
                wu0Var.g();
                wu0Var.close();
                this.b = new hr0(bufferedInputStream, ByteOrder.LITTLE_ENDIAN);
            } catch (Throwable th) {
                try {
                    wu0Var.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        int iA = (int) this.b.a(1);
        if (iA == -1) {
            return;
        }
        k71 k71Var = this.p;
        if (iA == 1) {
            km5 km5Var = this.f;
            hr0 hr0Var = this.b;
            int iS = km5Var != null ? km5Var.s(hr0Var) : (int) hr0Var.a(8);
            if (iS == -1) {
                return;
            }
            byte[] bArr = k71Var.a;
            int i = k71Var.c;
            bArr[i] = (byte) iS;
            k71Var.c = (i + 1) % 32768;
            return;
        }
        int i2 = this.c == 4096 ? 6 : 7;
        int iG = (int) this.b.g(i2);
        int iS2 = this.n.s(this.b);
        if (iS2 != -1 || iG > 0) {
            int i3 = (iS2 << i2) | iG;
            int iS3 = this.k.s(this.b);
            if (iS3 == 63) {
                long jG = this.b.g(8);
                if (jG == -1) {
                    return;
                } else {
                    iS3 = bb9.f(iS3, jG);
                }
            }
            int i4 = iS3 + this.e;
            int i5 = k71Var.c - (i3 + 1);
            int i6 = i4 + i5;
            while (i5 < i6) {
                byte[] bArr2 = k71Var.a;
                int i7 = k71Var.c;
                bArr2[i7] = bArr2[(i5 + 32768) % 32768];
                k71Var.c = (i7 + 1) % 32768;
                i5++;
            }
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        k71 k71Var = this.p;
        if (k71Var.b == k71Var.c) {
            try {
                a();
            } catch (IllegalArgumentException e) {
                throw new IOException("bad IMPLODE stream", e);
            }
        }
        int i = k71Var.b;
        if (i == k71Var.c) {
            return -1;
        }
        byte b = k71Var.a[i];
        k71Var.b = (i + 1) % 32768;
        return b & 255;
    }
}
