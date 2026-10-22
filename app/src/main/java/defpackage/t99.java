package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t99 {
    public final wx3 a;
    public boolean b;
    public long c;
    public long d;

    public t99(wx3 wx3Var) {
        if (wx3Var != null) {
            this.a = wx3Var;
        } else {
            f6.n("ticker");
            throw null;
        }
    }

    public final void a() {
        if (this.b) {
            l0.e("This stopwatch is already running.");
        } else {
            this.b = true;
            this.d = this.a.F();
        }
    }

    public final String toString() {
        TimeUnit timeUnit;
        String str;
        long jF = this.b ? (this.a.F() - this.d) + this.c : this.c;
        long j = jF / 86400000000000L;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (j > 0) {
            timeUnit = TimeUnit.DAYS;
        } else if (jF / 3600000000000L > 0) {
            timeUnit = TimeUnit.HOURS;
        } else if (jF / 60000000000L > 0) {
            timeUnit = TimeUnit.MINUTES;
        } else if (jF / 1000000000 > 0) {
            timeUnit = TimeUnit.SECONDS;
        } else if (jF / 1000000 > 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        } else {
            timeUnit = jF / 1000 > 0 ? TimeUnit.MICROSECONDS : timeUnit2;
        }
        String str2 = String.format(Locale.ROOT, "%.4g", Double.valueOf(jF / timeUnit2.convert(1L, timeUnit)));
        switch (s99.a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = "d";
                break;
            default:
                d6.n();
                return null;
        }
        return dj7.k(str2, TokenAuthenticationScheme.SCHEME_DELIMITER, str);
    }
}
