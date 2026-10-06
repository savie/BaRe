package defpackage;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d24 implements nh7 {
    public final rf6 a;
    public final Deflater b;
    public final pg2 c;
    public boolean d;
    public final CRC32 e;

    public d24(yw0 yw0Var) {
        rf6 rf6Var = new rf6(yw0Var);
        this.a = rf6Var;
        Deflater deflater = new Deflater(-1, true);
        this.b = deflater;
        this.c = new pg2(rf6Var, deflater);
        this.e = new CRC32();
        nw0 nw0Var = rf6Var.b;
        nw0Var.W(8075);
        nw0Var.J(8);
        nw0Var.J(0);
        nw0Var.U(0);
        nw0Var.J(0);
        nw0Var.J(0);
    }

    @Override // defpackage.nh7, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        Deflater deflater = this.b;
        rf6 rf6Var = this.a;
        if (this.d) {
            return;
        }
        try {
            pg2 pg2Var = this.c;
            pg2Var.b.finish();
            pg2Var.a(false);
            int value = (int) this.e.getValue();
            boolean z = rf6Var.c;
            nw0 nw0Var = rf6Var.b;
            if (z) {
                throw new IllegalStateException("closed");
            }
            nw0Var.U(k55.A(value));
            rf6Var.a();
            int bytesRead = (int) deflater.getBytesRead();
            if (rf6Var.c) {
                throw new IllegalStateException("closed");
            }
            nw0Var.U(k55.A(bytesRead));
            rf6Var.a();
            th = null;
            try {
                deflater.end();
            } catch (Throwable th) {
                if (th == null) {
                    th = th;
                }
            }
            try {
                rf6Var.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                }
            }
            this.d = true;
            if (th != null) {
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // defpackage.nh7
    public final f48 d() {
        return this.a.a.d();
    }

    @Override // defpackage.nh7
    public final void f0(nw0 nw0Var, long j) throws IOException {
        if (j < 0) {
            f6.g(u48.l(j, "byteCount < 0: "));
            return;
        }
        if (j == 0) {
            return;
        }
        m67 m67Var = nw0Var.a;
        m67Var.getClass();
        long j2 = j;
        while (j2 > 0) {
            int iMin = (int) Math.min(j2, m67Var.c - m67Var.b);
            this.e.update(m67Var.a, m67Var.b, iMin);
            j2 -= (long) iMin;
            m67Var = m67Var.f;
            m67Var.getClass();
        }
        this.c.f0(nw0Var, j);
    }

    @Override // defpackage.nh7, java.io.Flushable
    public final void flush() throws IOException {
        this.c.flush();
    }
}
