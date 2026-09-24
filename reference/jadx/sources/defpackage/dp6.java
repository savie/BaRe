package defpackage;

import android.os.SystemClock;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dp6 {
    public final long a;
    public final e94 b;
    public final long c;
    public final ConcurrentHashMap d = new ConcurrentHashMap();

    public dp6(long j, e94 e94Var, long j2) {
        this.a = j;
        this.b = e94Var;
        this.c = j2;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b7  */
    public final void a(f07 f07Var) {
        int i;
        int i2;
        String str = f07Var.e;
        m07 m07Var = f07Var.d;
        e94 e94Var = this.b;
        if (e94Var == null) {
            return;
        }
        int i3 = cp6.a[f07Var.a.ordinal()];
        int i4 = 0;
        if (i3 == 1) {
            i = 0;
        } else if (i3 == 2) {
            i = 1;
        } else {
            if (i3 != 3) {
                q.j();
                return;
            }
            i = 2;
        }
        int i5 = cp6.b[f07Var.b.ordinal()];
        int i6 = 5;
        if (i5 == 1) {
            i2 = 0;
        } else if (i5 == 2) {
            i2 = 1;
        } else if (i5 == 3) {
            i2 = 2;
        } else if (i5 == 4) {
            i2 = 3;
        } else {
            if (i5 != 5) {
                q.j();
                return;
            }
            i2 = 4;
        }
        switch (cp6.c[f07Var.c.ordinal()]) {
            case 1:
                i6 = 0;
                break;
            case 2:
                i6 = 1;
                break;
            case 3:
                i6 = 2;
                break;
            case 4:
                i6 = 3;
                break;
            case 5:
                i6 = 4;
                break;
            case 6:
                break;
            case 7:
                i6 = 6;
                break;
            case 8:
                i6 = 7;
                break;
            default:
                q.j();
                return;
        }
        int i7 = cp6.d[m07Var.ordinal()];
        if (i7 != 1) {
            if (i7 == 2) {
                i4 = 1;
            } else {
                if (i7 != 3) {
                    q.j();
                    return;
                }
                i4 = 2;
            }
        }
        m07 m07Var2 = m07.Progress;
        ConcurrentHashMap concurrentHashMap = this.d;
        if (m07Var == m07Var2) {
            long j = this.c;
            if (j > 0) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                bp6 bp6Var = new bp6(i, i2, str);
                Long l = (Long) concurrentHashMap.get(bp6Var);
                if (l != null && jElapsedRealtime - l.longValue() < j) {
                    return;
                } else {
                    concurrentHashMap.put(bp6Var, Long.valueOf(jElapsedRealtime));
                }
            } else if (m07Var == m07.Completed) {
                concurrentHashMap.remove(new bp6(i, i2, str));
            }
        } else if (m07Var == m07.Completed) {
            concurrentHashMap.remove(new bp6(i, i2, str));
        }
        try {
            long j2 = this.a;
            int i8 = i6;
            String str2 = f07Var.e;
            long j3 = f07Var.f;
            Long l2 = f07Var.g;
            e94Var.c(j2, i, i2, i8, i4, str2, j3, l2 != null ? l2.longValue() : -1L);
        } catch (Throwable unused) {
        }
    }
}
