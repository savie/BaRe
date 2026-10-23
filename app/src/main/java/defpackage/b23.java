package defpackage;

import java.io.IOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.time.Duration;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b23 implements uw1 {
    public final d23 a;
    public final long b;
    public final int c;
    public long d = System.currentTimeMillis();
    public int e;
    public int f;
    public int g;

    public b23(d23 d23Var, Duration duration, Duration duration2) throws SocketException {
        this.b = duration.toMillis();
        this.a = d23Var;
        this.c = d23Var.b.getSoTimeout();
        d23Var.b.setSoTimeout(z85.F(duration2));
    }

    @Override // defpackage.uw1
    public final void a(int i, long j) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.d > this.b) {
            try {
                d23 d23Var = this.a;
                d23Var.getClass();
                d23Var.k("NOOP\r\n");
                d23Var.h(false);
                this.f = this.f + 1;
            } catch (SocketTimeoutException unused) {
                this.e++;
            } catch (IOException unused2) {
                this.g++;
            }
            this.d = jCurrentTimeMillis;
        }
    }

    public final void b() {
        int i = this.c;
        d23 d23Var = this.a;
        while (this.e > 0) {
            try {
                d23Var.h(true);
                this.e--;
            } catch (SocketTimeoutException unused) {
            } catch (Throwable th) {
                d23Var.b.setSoTimeout(i);
                throw th;
            }
        }
        d23Var.b.setSoTimeout(i);
    }
}
