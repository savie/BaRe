package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rc4 implements ij7 {
    public final InputStream a;
    public final f48 b;

    public rc4(InputStream inputStream, f48 f48Var) {
        inputStream.getClass();
        this.a = inputStream;
        this.b = f48Var;
    }

    @Override // defpackage.ij7
    public final long H(nw0 nw0Var, long j) throws IOException {
        nw0Var.getClass();
        if (j == 0) {
            return 0L;
        }
        if (j < 0) {
            f6.g(u48.l(j, "byteCount < 0: "));
            return 0L;
        }
        try {
            this.b.f();
            m67 m67VarA = nw0Var.A(1);
            int i = this.a.read(m67VarA.a, m67VarA.c, (int) Math.min(j, 8192 - m67VarA.c));
            if (i != -1) {
                m67VarA.c += i;
                long j2 = i;
                nw0Var.b += j2;
                return j2;
            }
            if (m67VarA.b != m67VarA.c) {
                return -1L;
            }
            nw0Var.a = m67VarA.a();
            o67.a(m67VarA);
            return -1L;
        } catch (AssertionError e) {
            if (tz8.a(e)) {
                throw new IOException(e);
            }
            throw e;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
    }

    @Override // defpackage.ij7
    public final f48 d() {
        return this.b;
    }

    public final String toString() {
        return "source(" + this.a + ')';
    }
}
