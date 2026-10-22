package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cc4 implements ij7 {
    public final tf6 a;
    public final Inflater b;
    public int c;
    public boolean d;

    public cc4(tf6 tf6Var, Inflater inflater) {
        this.a = tf6Var;
        this.b = inflater;
    }

    @Override // defpackage.ij7
    public final long H(nw0 nw0Var, long j) throws IOException {
        long j2;
        nw0Var.getClass();
        while (j >= 0) {
            if (this.d) {
                l0.e("closed");
                return 0L;
            }
            tf6 tf6Var = this.a;
            Inflater inflater = this.b;
            if (j == 0) {
                j2 = 0;
            } else {
                try {
                    m67 m67VarA = nw0Var.A(1);
                    int iMin = (int) Math.min(j, 8192 - m67VarA.c);
                    if (inflater.needsInput() && !tf6Var.x()) {
                        m67 m67Var = tf6Var.b.a;
                        m67Var.getClass();
                        int i = m67Var.c;
                        int i2 = m67Var.b;
                        int i3 = i - i2;
                        this.c = i3;
                        inflater.setInput(m67Var.a, i2, i3);
                    }
                    int iInflate = inflater.inflate(m67VarA.a, m67VarA.c, iMin);
                    int i4 = this.c;
                    if (i4 != 0) {
                        int remaining = i4 - inflater.getRemaining();
                        this.c -= remaining;
                        tf6Var.skip(remaining);
                    }
                    if (iInflate > 0) {
                        m67VarA.c += iInflate;
                        j2 = iInflate;
                        nw0Var.b += j2;
                    } else {
                        if (m67VarA.b == m67VarA.c) {
                            nw0Var.a = m67VarA.a();
                            o67.a(m67VarA);
                        }
                        j2 = 0;
                    }
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            }
            if (j2 > 0) {
                return j2;
            }
            if (inflater.finished() || inflater.needsDictionary()) {
                return -1L;
            }
            if (tf6Var.x()) {
                throw new EOFException("source exhausted prematurely");
            }
        }
        f6.g(u48.l(j, "byteCount < 0: "));
        return 0L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.d) {
            return;
        }
        this.b.end();
        this.d = true;
        this.a.close();
    }

    @Override // defpackage.ij7
    public final f48 d() {
        return this.a.a.d();
    }
}
