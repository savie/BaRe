package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class l04 {
    public final long a;
    public final int b;
    public final ae1 c;
    public final ox d;
    public final nu3 e;
    public long f = -1;

    public l04(long j, int i, oh1 oh1Var, ou3 ou3Var, rk rkVar, ae1 ae1Var, rx rxVar, ox oxVar, nu3 nu3Var, dk dkVar, int i2) {
        this.a = j;
        this.b = i;
        this.c = ae1Var;
        this.d = oxVar;
        this.e = nu3Var;
    }

    public static void a(Exception exc, Exception exc2) {
        if (exc2 == null || exc2 == exc) {
            return;
        }
        Throwable[] suppressed = exc.getSuppressed();
        suppressed.getClass();
        for (Throwable th : suppressed) {
            if (th == exc2) {
                return;
            }
        }
        yc9.a(exc, exc2);
    }

    public final void b(long j) {
        long jI = l73.i(j, 0L, this.a);
        if (jI != this.f) {
            this.f = jI;
            this.e.invoke(Long.valueOf(jI));
        }
    }

    public final boolean c(Exception exc, int i) {
        return i < this.b && ((Boolean) this.d.invoke(exc)).booleanValue();
    }

    public final void d(long j, long j2, long j3, String str) throws IOException {
        long j4 = this.a;
        if (j < j2 || j > j3 || j > j4) {
            StringBuilder sbO = u48.o("Google Drive ", str, j, " response acknowledged invalid next byte ");
            fz5.r(sbO, "; expected ", j2, "..");
            sbO.append(j3);
            sbO.append(" of ");
            sbO.append(j4);
            throw new IOException(sbO.toString());
        }
    }
}
