package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sf6 extends InputStream {
    public final /* synthetic */ tf6 a;

    public sf6(tf6 tf6Var) {
        this.a = tf6Var;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        tf6 tf6Var = this.a;
        if (!tf6Var.c) {
            return (int) Math.min(tf6Var.b.b, 2147483647L);
        }
        y5.m("closed");
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        bArr.getClass();
        tf6 tf6Var = this.a;
        nw0 nw0Var = tf6Var.b;
        if (tf6Var.c) {
            y5.m("closed");
            return 0;
        }
        k55.c(bArr.length, i, i2);
        if (nw0Var.b == 0 && tf6Var.a.H(nw0Var, 8192L) == -1) {
            return -1;
        }
        return nw0Var.read(bArr, i, i2);
    }

    public final String toString() {
        return this.a + ".inputStream()";
    }

    @Override // java.io.InputStream
    public final long transferTo(OutputStream outputStream) throws IOException {
        outputStream.getClass();
        tf6 tf6Var = this.a;
        nw0 nw0Var = tf6Var.b;
        if (tf6Var.c) {
            y5.m("closed");
            return 0L;
        }
        long j = 0;
        while (true) {
            if (nw0Var.b == 0 && tf6Var.a.H(nw0Var, 8192L) == -1) {
                return j;
            }
            long j2 = nw0Var.b;
            j += j2;
            k55.c(j2, 0L, j2);
            m67 m67Var = nw0Var.a;
            while (j2 > 0) {
                m67Var.getClass();
                int iMin = (int) Math.min(j2, m67Var.c - m67Var.b);
                outputStream.write(m67Var.a, m67Var.b, iMin);
                int i = m67Var.b + iMin;
                m67Var.b = i;
                long j3 = iMin;
                nw0Var.b -= j3;
                j2 -= j3;
                if (i == m67Var.c) {
                    m67 m67VarA = m67Var.a();
                    nw0Var.a = m67VarA;
                    o67.a(m67Var);
                    m67Var = m67VarA;
                }
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        tf6 tf6Var = this.a;
        nw0 nw0Var = tf6Var.b;
        if (tf6Var.c) {
            y5.m("closed");
            return 0;
        }
        if (nw0Var.b == 0 && tf6Var.a.H(nw0Var, 8192L) == -1) {
            return -1;
        }
        return nw0Var.readByte() & 255;
    }
}
