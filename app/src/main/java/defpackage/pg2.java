package defpackage;

import java.io.IOException;
import java.util.zip.Deflater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pg2 implements nh7 {
    public final rf6 a;
    public final Deflater b;
    public boolean c;

    public pg2(rf6 rf6Var, Deflater deflater) {
        this.a = rf6Var;
        this.b = deflater;
    }

    public final void a(boolean z) throws IOException {
        m67 m67VarA;
        int iDeflate;
        rf6 rf6Var = this.a;
        nw0 nw0Var = rf6Var.b;
        while (true) {
            m67VarA = nw0Var.A(1);
            byte[] bArr = m67VarA.a;
            int i = m67VarA.c;
            Deflater deflater = this.b;
            if (z) {
                try {
                    iDeflate = deflater.deflate(bArr, i, 8192 - i, 2);
                } catch (NullPointerException e) {
                    throw new IOException("Deflater already closed", e);
                }
            } else {
                iDeflate = deflater.deflate(bArr, i, 8192 - i);
            }
            if (iDeflate > 0) {
                m67VarA.c += iDeflate;
                nw0Var.b += (long) iDeflate;
                rf6Var.a();
            } else if (deflater.needsInput()) {
                break;
            }
        }
        if (m67VarA.b == m67VarA.c) {
            nw0Var.a = m67VarA.a();
            o67.a(m67VarA);
        }
    }

    @Override // defpackage.nh7, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        Deflater deflater = this.b;
        if (this.c) {
            return;
        }
        deflater.finish();
        a(false);
        th = null;
        try {
            deflater.end();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        try {
            this.a.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.c = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // defpackage.nh7
    public final f48 d() {
        return this.a.a.d();
    }

    @Override // defpackage.nh7
    public final void f0(nw0 nw0Var, long j) throws IOException {
        k55.c(nw0Var.b, 0L, j);
        while (true) {
            Deflater deflater = this.b;
            if (j <= 0) {
                deflater.setInput(ms8.c, 0, 0);
                return;
            }
            m67 m67Var = nw0Var.a;
            m67Var.getClass();
            int iMin = (int) Math.min(j, m67Var.c - m67Var.b);
            deflater.setInput(m67Var.a, m67Var.b, iMin);
            a(false);
            long j2 = iMin;
            nw0Var.b -= j2;
            int i = m67Var.b + iMin;
            m67Var.b = i;
            if (i == m67Var.c) {
                nw0Var.a = m67Var.a();
                o67.a(m67Var);
            }
            j -= j2;
        }
    }

    @Override // defpackage.nh7, java.io.Flushable
    public final void flush() throws IOException {
        a(true);
        this.a.flush();
    }

    public final String toString() {
        return "DeflaterSink(" + this.a + ')';
    }
}
