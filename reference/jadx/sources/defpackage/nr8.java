package defpackage;

import java.io.IOException;
import java.net.URI;
import java.util.HashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nr8 {
    public static long k;
    public c00 a;
    public boolean b = false;
    public boolean c = false;
    public long d = 0;
    public dq7 e;
    public final vr1 f;
    public ScheduledFuture g;
    public ScheduledFuture h;
    public final ScheduledExecutorService i;
    public final u00 j;

    public nr8(yr1 yr1Var, f64 f64Var, String str, String str2, vr1 vr1Var, String str3) {
        this.i = (ScheduledExecutorService) yr1Var.c;
        this.f = vr1Var;
        long j = k;
        k = 1 + j;
        this.j = new u00(4, (ub) yr1Var.f, "WebSocket", u48.l(j, "ws_"));
        str = str == null ? f64Var.a : str;
        boolean z = f64Var.c;
        String str4 = f64Var.b;
        String str5 = (z ? "wss" : "ws") + "://" + str + "/.ws?ns=" + str4 + "&v=5";
        URI uriCreate = URI.create(str3 != null ? dj7.k(str5, "&ls=", str3) : str5);
        HashMap map = new HashMap();
        map.put("User-Agent", yr1Var.a);
        map.put("X-Firebase-GMPID", yr1Var.b);
        map.put("X-Firebase-AppCheck", str2);
        this.a = new c00(this, new ar8(yr1Var, uriCreate, map));
    }

    public static void a(nr8 nr8Var) {
        u00 u00Var = nr8Var.j;
        if (!nr8Var.c) {
            if (u00Var.e()) {
                u00Var.c("closing itself", null, new Object[0]);
            }
            nr8Var.f();
        }
        nr8Var.a = null;
        ScheduledFuture scheduledFuture = nr8Var.g;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
    }

    public final void b(String str) {
        u00 u00Var = this.j;
        dq7 dq7Var = this.e;
        if (dq7Var.k) {
            l0.e("Trying to add string after reading");
            return;
        }
        if (str.length() > 0) {
            dq7Var.a.add(str);
        }
        long j = this.d - 1;
        this.d = j;
        if (j == 0) {
            try {
                dq7 dq7Var2 = this.e;
                if (dq7Var2.k) {
                    throw new IllegalStateException("Trying to freeze frozen StringListReader");
                }
                dq7Var2.k = true;
                HashMap mapL = jb9.L(dq7Var2.toString());
                this.e = null;
                if (u00Var.e()) {
                    u00Var.c("handleIncomingFrame complete frame: " + mapL, null, new Object[0]);
                }
                this.f.r(mapL);
            } catch (IOException e) {
                u00Var.d("Error parsing frame: ".concat(this.e.toString()), e);
                c();
                f();
            } catch (ClassCastException e2) {
                u00Var.d("Error parsing frame (cast error): ".concat(this.e.toString()), e2);
                c();
                f();
            }
        }
    }

    public final void c() {
        u00 u00Var = this.j;
        if (u00Var.e()) {
            u00Var.c("websocket is being closed", null, new Object[0]);
        }
        this.c = true;
        ((ar8) this.a.b).a();
        ScheduledFuture scheduledFuture = this.h;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledFuture scheduledFuture2 = this.g;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
        }
    }

    public final void d(int i) {
        this.d = i;
        this.e = new dq7();
        u00 u00Var = this.j;
        if (u00Var.e()) {
            u00Var.c("HandleNewFrameCount: " + this.d, null, new Object[0]);
        }
    }

    public final void e() {
        if (this.c) {
            return;
        }
        ScheduledFuture scheduledFuture = this.g;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        u00 u00Var = this.j;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            if (u00Var.e()) {
                u00Var.c("Reset keepAlive. Remaining: " + this.g.getDelay(timeUnit), null, new Object[0]);
            }
        } else if (u00Var.e()) {
            u00Var.c("Reset keepAlive", null, new Object[0]);
        }
        this.g = this.i.schedule(new bo0(this, 4), 45000L, timeUnit);
    }

    public final void f() {
        this.c = true;
        boolean z = this.b;
        vr1 vr1Var = this.f;
        u00 u00Var = (u00) vr1Var.f;
        vr1Var.d = null;
        if (z || vr1Var.b != 1) {
            if (u00Var.e()) {
                u00Var.c("Realtime connection lost", null, new Object[0]);
            }
        } else if (u00Var.e()) {
            u00Var.c("Realtime connection failed", null, new Object[0]);
        }
        vr1Var.c(2);
    }
}
