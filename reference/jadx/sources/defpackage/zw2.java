package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zw2 {
    public static final boolean h = Log.isLoggable("Engine", 2);
    public final di4 a;
    public final fo8 b;
    public final q35 c;
    public final xw2 d;
    public final be e;
    public final nn1 f;
    public final y8 g;

    public zw2(q35 q35Var, fu fuVar, jy3 jy3Var, jy3 jy3Var2, jy3 jy3Var3, jy3 jy3Var4) throws Throwable {
        this.c = q35Var;
        yw2 yw2Var = new yw2(fuVar);
        y8 y8Var = new y8();
        this.g = y8Var;
        synchronized (this) {
            try {
                synchronized (y8Var) {
                    try {
                        try {
                            y8Var.d = this;
                        } catch (Throwable th) {
                            th = th;
                            while (true) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                }
                this.b = new fo8(6);
                this.a = new di4(0);
                this.d = new xw2(jy3Var, jy3Var2, jy3Var3, jy3Var4, this, this);
                this.f = new nn1(yw2Var);
                be beVar = new be();
                beVar.b = new Handler(Looper.getMainLooper(), new zl6());
                this.e = beVar;
                q35Var.d = this;
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    public static void c(String str, long j, ex2 ex2Var) {
        StringBuilder sbN = fz5.n(str, " in ");
        sbN.append(g15.a(j));
        sbN.append("ms, key: ");
        sbN.append(ex2Var);
        Log.v("Engine", sbN.toString());
    }

    public static void f(ll6 ll6Var) {
        if (ll6Var instanceof fx2) {
            ((fx2) ll6Var).e();
        } else {
            c6.f("Cannot release anything but an EngineResource");
        }
    }

    public final e41 a(dy3 dy3Var, Object obj, jo4 jo4Var, int i, int i2, Class cls, Class cls2, e66 e66Var, km2 km2Var, iz0 iz0Var, boolean z, boolean z2, ou5 ou5Var, boolean z3, boolean z4, fh7 fh7Var, Executor executor) {
        long jElapsedRealtimeNanos;
        if (h) {
            int i3 = g15.b;
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        } else {
            jElapsedRealtimeNanos = 0;
        }
        this.b.getClass();
        ex2 ex2Var = new ex2(obj, jo4Var, i, i2, iz0Var, cls, cls2, ou5Var);
        synchronized (this) {
            try {
                fx2 fx2VarB = b(ex2Var, z3, jElapsedRealtimeNanos);
                if (fx2VarB == null) {
                    return g(dy3Var, obj, jo4Var, i, i2, cls, cls2, e66Var, km2Var, iz0Var, z, z2, ou5Var, z3, z4, fh7Var, executor, ex2Var, jElapsedRealtimeNanos);
                }
                fh7Var.h(fx2VarB, 5);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final fx2 b(ex2 ex2Var, boolean z, long j) {
        fx2 fx2Var;
        Object obj;
        zw2 zw2Var;
        ex2 ex2Var2;
        fx2 fx2Var2;
        if (z) {
            y8 y8Var = this.g;
            synchronized (y8Var) {
                x8 x8Var = (x8) ((HashMap) y8Var.b).get(ex2Var);
                if (x8Var == null) {
                    fx2Var = null;
                } else {
                    fx2Var = (fx2) x8Var.get();
                    if (fx2Var == null) {
                        y8Var.d(x8Var);
                    }
                }
            }
            if (fx2Var != null) {
                fx2Var.a();
            }
            if (fx2Var != null) {
                if (h) {
                    c("Loaded resource from active resources", j, ex2Var);
                }
                return fx2Var;
            }
            q35 q35Var = this.c;
            synchronized (q35Var) {
                o35 o35Var = (o35) ((LinkedHashMap) q35Var.c).remove(ex2Var);
                if (o35Var == null) {
                    obj = null;
                } else {
                    q35Var.b -= (long) o35Var.b;
                    obj = o35Var.a;
                }
            }
            ll6 ll6Var = (ll6) obj;
            if (ll6Var == null) {
                zw2Var = this;
                ex2Var2 = ex2Var;
                fx2Var2 = null;
            } else if (ll6Var instanceof fx2) {
                fx2Var2 = (fx2) ll6Var;
                zw2Var = this;
                ex2Var2 = ex2Var;
            } else {
                zw2Var = this;
                ex2Var2 = ex2Var;
                fx2Var2 = new fx2(ll6Var, true, true, ex2Var2, zw2Var);
            }
            if (fx2Var2 != null) {
                fx2Var2.a();
                zw2Var.g.a(ex2Var2, fx2Var2);
            }
            if (fx2Var2 != null) {
                if (h) {
                    c("Loaded resource from cache", j, ex2Var2);
                }
                return fx2Var2;
            }
        }
        return null;
    }

    public final synchronized void d(dx2 dx2Var, ex2 ex2Var, fx2 fx2Var) {
        if (fx2Var != null) {
            try {
                if (fx2Var.a) {
                    this.g.a(ex2Var, fx2Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        di4 di4Var = this.a;
        di4Var.getClass();
        dx2Var.getClass();
        HashMap map = di4Var.a;
        if (dx2Var == map.get(ex2Var)) {
            map.remove(ex2Var);
        }
    }

    public final void e(jo4 jo4Var, fx2 fx2Var) {
        y8 y8Var = this.g;
        synchronized (y8Var) {
            x8 x8Var = (x8) ((HashMap) y8Var.b).remove(jo4Var);
            if (x8Var != null) {
                x8Var.c = null;
                x8Var.clear();
            }
        }
        if (fx2Var.a) {
        } else {
            this.e.f(fx2Var, false);
        }
    }

    public final e41 g(dy3 dy3Var, Object obj, jo4 jo4Var, int i, int i2, Class cls, Class cls2, e66 e66Var, km2 km2Var, Map map, boolean z, boolean z2, ou5 ou5Var, boolean z3, boolean z4, fh7 fh7Var, Executor executor, ex2 ex2Var, long j) {
        jy3 jy3Var;
        dx2 dx2Var = (dx2) this.a.a.get(ex2Var);
        if (dx2Var != null) {
            dx2Var.b(fh7Var, executor);
            if (h) {
                c("Added to existing load", j, ex2Var);
            }
            return new e41(this, fh7Var, dx2Var);
        }
        dx2 dx2Var2 = (dx2) this.d.g.d();
        synchronized (dx2Var2) {
            dx2Var2.r = ex2Var;
            dx2Var2.t = z3;
            dx2Var2.x = z4;
        }
        nn1 nn1Var = this.f;
        td2 td2Var = (td2) ((l22) nn1Var.c).d();
        int i3 = nn1Var.a;
        nn1Var.a = i3 + 1;
        qd2 qd2Var = td2Var.a;
        yw2 yw2Var = td2Var.d;
        qd2Var.c = dy3Var;
        qd2Var.d = obj;
        qd2Var.n = jo4Var;
        qd2Var.e = i;
        qd2Var.f = i2;
        qd2Var.p = km2Var;
        qd2Var.g = cls;
        qd2Var.h = yw2Var;
        qd2Var.k = cls2;
        qd2Var.o = e66Var;
        qd2Var.i = ou5Var;
        qd2Var.j = map;
        qd2Var.q = z;
        qd2Var.r = z2;
        td2Var.n = dy3Var;
        td2Var.p = jo4Var;
        td2Var.q = e66Var;
        td2Var.r = ex2Var;
        td2Var.t = i;
        td2Var.x = i2;
        td2Var.y = km2Var;
        td2Var.G = ou5Var;
        td2Var.H = dx2Var2;
        td2Var.I = i3;
        td2Var.V = 1;
        td2Var.K = obj;
        di4 di4Var = this.a;
        di4Var.getClass();
        di4Var.a.put(ex2Var, dx2Var2);
        dx2Var2.b(fh7Var, executor);
        synchronized (dx2Var2) {
            dx2Var2.L = td2Var;
            int iH = td2Var.h(1);
            if (iH == 2 || iH == 3) {
                jy3Var = dx2Var2.k;
            } else {
                jy3Var = dx2Var2.x ? dx2Var2.p : dx2Var2.n;
            }
            jy3Var.execute(td2Var);
        }
        if (h) {
            c("Started new load", j, ex2Var);
        }
        return new e41(this, fh7Var, dx2Var2);
    }
}
