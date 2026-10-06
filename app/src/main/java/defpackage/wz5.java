package defpackage;

import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wz5 {
    public static long G;
    public String A;
    public long F;
    public final wj6 a;
    public final f64 b;
    public String c;
    public long f;
    public vr1 g;
    public final HashMap l;
    public final ArrayList m;
    public final HashMap n;
    public final ConcurrentHashMap o;
    public final HashMap p;
    public String q;
    public boolean r;
    public String s;
    public boolean t;
    public final yr1 u;
    public final yu1 v;
    public final yu1 w;
    public final ScheduledExecutorService x;
    public final u00 y;
    public final ln6 z;
    public final HashSet d = new HashSet();
    public boolean e = true;
    public rz5 h = rz5.a;
    public long i = 0;
    public long j = 0;
    public long k = 0;
    public long B = 0;
    public int C = 0;
    public int D = 0;
    public ScheduledFuture E = null;

    public wz5(yr1 yr1Var, f64 f64Var, wj6 wj6Var) {
        this.a = wj6Var;
        this.u = yr1Var;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) yr1Var.c;
        this.x = scheduledExecutorService;
        this.v = (yu1) yr1Var.d;
        this.w = (yu1) yr1Var.e;
        this.b = f64Var;
        this.p = new HashMap();
        this.l = new HashMap();
        this.n = new HashMap();
        this.o = new ConcurrentHashMap();
        this.m = new ArrayList();
        ub ubVar = (ub) yr1Var.f;
        int i = 4;
        this.z = new ln6(scheduledExecutorService, new u00(i, ubVar, "ConnectionRetryHelper", null));
        long j = G;
        G = 1 + j;
        this.y = new u00(i, ubVar, "PersistentConnection", u48.l(j, "pc_"));
        this.A = null;
        b();
    }

    public final boolean a() {
        rz5 rz5Var = this.h;
        return rz5Var == rz5.d || rz5Var == rz5.e;
    }

    public final void b() {
        if (!d()) {
            if (this.d.contains("connection_idle")) {
                yc9.D(!d(), "", new Object[0]);
                h("connection_idle");
                return;
            }
            return;
        }
        ScheduledFuture scheduledFuture = this.E;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.E = this.x.schedule(new x7(this, 3), 60000L, TimeUnit.MILLISECONDS);
    }

    public final void c(String str) {
        u00 u00Var = this.y;
        if (u00Var.e()) {
            u00Var.c("Connection interrupted for: ".concat(str), null, new Object[0]);
        }
        this.d.add(str);
        vr1 vr1Var = this.g;
        ln6 ln6Var = this.z;
        if (vr1Var != null) {
            vr1Var.c(2);
            this.g = null;
        } else {
            ScheduledFuture scheduledFuture = ln6Var.h;
            u00 u00Var2 = ln6Var.b;
            if (scheduledFuture != null) {
                u00Var2.c("Cancelling existing retry attempt", null, new Object[0]);
                ln6Var.h.cancel(false);
                ln6Var.h = null;
            } else {
                u00Var2.c("No existing retry attempt to cancel", null, new Object[0]);
            }
            ln6Var.i = 0L;
            this.h = rz5.a;
        }
        ln6Var.j = true;
        ln6Var.i = 0L;
    }

    public final boolean d() {
        return this.p.isEmpty() && this.o.isEmpty() && this.l.isEmpty() && this.n.isEmpty();
    }

    public final void e(String str, ArrayList arrayList, Object obj, String str2, cl6 cl6Var) {
        HashMap map = new HashMap();
        map.put(JWKParameterNames.RSA_FIRST_PRIME_FACTOR, yc9.M(arrayList));
        map.put("d", obj);
        if (str2 != null) {
            map.put("h", str2);
        }
        long j = this.i;
        this.i = 1 + j;
        Long lValueOf = Long.valueOf(j);
        uz5 uz5Var = new uz5();
        uz5Var.a = str;
        uz5Var.b = map;
        uz5Var.c = cl6Var;
        this.n.put(lValueOf, uz5Var);
        if (this.h == rz5.e) {
            m(j);
        }
        this.F = System.currentTimeMillis();
        b();
    }

    public final tz5 f(vz5 vz5Var) {
        u00 u00Var = this.y;
        if (u00Var.e()) {
            u00Var.c("removing query " + vz5Var, null, new Object[0]);
        }
        HashMap map = this.p;
        if (map.containsKey(vz5Var)) {
            tz5 tz5Var = (tz5) map.get(vz5Var);
            map.remove(vz5Var);
            b();
            return tz5Var;
        }
        if (u00Var.e()) {
            u00Var.c("Trying to remove listener for QuerySpec " + vz5Var + " but no listener exists.", null, new Object[0]);
        }
        return null;
    }

    public final void g() {
        rz5 rz5Var = this.h;
        yc9.D(rz5Var == rz5.e, "Should be connected if we're restoring state, but we are: %s", rz5Var);
        u00 u00Var = this.y;
        if (u00Var.e()) {
            u00Var.c("Restoring outstanding listens", null, new Object[0]);
        }
        for (tz5 tz5Var : this.p.values()) {
            if (u00Var.e()) {
                u00Var.c("Restoring listen " + tz5Var.b, null, new Object[0]);
            }
            l(tz5Var);
        }
        if (u00Var.e()) {
            u00Var.c("Restoring writes.", null, new Object[0]);
        }
        ArrayList arrayList = new ArrayList(this.n.keySet());
        Collections.sort(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m(((Long) it.next()).longValue());
        }
        ArrayList arrayList2 = this.m;
        Iterator it2 = arrayList2.iterator();
        if (it2.hasNext()) {
            throw eq3.h(it2);
        }
        arrayList2.clear();
        if (u00Var.e()) {
            u00Var.c("Restoring reads.", null, new Object[0]);
        }
        ArrayList arrayList3 = new ArrayList(this.o.keySet());
        Collections.sort(arrayList3);
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            k((Long) it3.next());
        }
    }

    public final void h(String str) {
        u00 u00Var = this.y;
        if (u00Var.e()) {
            u00Var.c("Connection no longer interrupted for: ".concat(str), null, new Object[0]);
        }
        HashSet hashSet = this.d;
        hashSet.remove(str);
        if (hashSet.size() == 0 && this.h == rz5.a) {
            o();
        }
    }

    public final void i(final boolean z) {
        if (this.s == null) {
            g();
            return;
        }
        yc9.D(a(), "Must be connected to send auth, but was: %s", this.h);
        u00 u00Var = this.y;
        if (u00Var.e()) {
            u00Var.c("Sending app check.", null, new Object[0]);
        }
        qz5 qz5Var = new qz5() { // from class: jz5
            @Override // defpackage.qz5
            public final void a(Map map) {
                String str = (String) map.get("s");
                boolean zEquals = str.equals("ok");
                wz5 wz5Var = this.a;
                if (zEquals) {
                    wz5Var.D = 0;
                } else {
                    wz5Var.s = null;
                    wz5Var.t = true;
                    wz5Var.y.c(eq3.l("App check failed: ", str, " (", (String) map.get("d"), ")"), null, new Object[0]);
                }
                if (z) {
                    wz5Var.g();
                }
            }
        };
        HashMap map = new HashMap();
        yc9.D(this.s != null, "App check token must be set!", new Object[0]);
        map.put("token", this.s);
        n("appcheck", true, map, qz5Var);
    }

    public final void j(boolean z) {
        yc9.D(a(), "Must be connected to send auth, but was: %s", this.h);
        u00 u00Var = this.y;
        ib ibVar = null;
        if (u00Var.e()) {
            u00Var.c("Sending auth.", null, new Object[0]);
        }
        qz5 lz5Var = new lz5(this, z);
        HashMap map = new HashMap();
        String str = this.q;
        if (str.startsWith("gauth|")) {
            try {
                HashMap mapL = jb9.L(str.substring(6));
                ibVar = new ib(4, (String) mapL.get("token"), (Map) mapL.get("auth"));
            } catch (IOException e) {
                e6.i("Failed to parse gauth token", e);
                return;
            }
        }
        if (ibVar == null) {
            map.put("cred", this.q);
            n("auth", true, map, lz5Var);
            return;
        }
        map.put("cred", (String) ibVar.b);
        Map map2 = (Map) ibVar.c;
        if (map2 != null) {
            map.put("authvar", map2);
        }
        n("gauth", true, map, lz5Var);
    }

    public final void k(Long l) {
        yc9.D(this.h == rz5.e, "sendGet called when we can't send gets", new Object[0]);
        sz5 sz5Var = (sz5) this.o.get(l);
        if (sz5Var.c) {
            u00 u00Var = this.y;
            if (u00Var.e()) {
                u00Var.c("get" + l + " cancelled, ignoring.", null, new Object[0]);
                return;
            }
        } else {
            sz5Var.c = true;
        }
        n("g", false, sz5Var.a, new nz5(this, l, sz5Var));
    }

    public final void l(tz5 tz5Var) {
        c00 c00Var;
        HashMap map = new HashMap();
        map.put(JWKParameterNames.RSA_FIRST_PRIME_FACTOR, yc9.M(tz5Var.b.a));
        Long l = tz5Var.d;
        if (l != null) {
            map.put(JWKParameterNames.RSA_SECOND_PRIME_FACTOR, tz5Var.b.b);
            map.put(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, l);
        }
        ik8 ik8Var = (ik8) tz5Var.c.b;
        map.put("h", ((gz0) ik8Var.c.c).a.a.r0());
        if (k55.g(((gz0) ik8Var.c.c).a.a) > 1024) {
            qn5 qn5Var = ((gz0) ik8Var.c.c).a.a;
            kp1 kp1Var = new kp1(qn5Var);
            if (qn5Var.isEmpty()) {
                c00Var = new c00(Collections.EMPTY_LIST, Collections.singletonList(""));
            } else {
                jp1 jp1Var = new jp1(kp1Var);
                c00.o(qn5Var, jp1Var);
                zm5.r("Can't finish hashing in the middle processing a child", jp1Var.d == 0);
                if (jp1Var.a != null) {
                    jp1Var.b();
                }
                ArrayList arrayList = jp1Var.g;
                arrayList.add("");
                c00Var = new c00(jp1Var.f, arrayList);
            }
            List listUnmodifiableList = Collections.unmodifiableList((List) c00Var.b);
            ArrayList arrayList2 = new ArrayList(listUnmodifiableList.size());
            Iterator it = listUnmodifiableList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((gy5) it.next()).c());
            }
            List listUnmodifiableList2 = Collections.unmodifiableList((List) c00Var.c);
            if (arrayList2.size() != listUnmodifiableList2.size() - 1) {
                c6.f("Number of posts need to be n-1 for n hashes in CompoundHash");
                return;
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = Collections.unmodifiableList(arrayList2).iterator();
            while (it2.hasNext()) {
                arrayList3.add(yc9.M((List) it2.next()));
            }
            HashMap map2 = new HashMap();
            map2.put("hs", Collections.unmodifiableList(listUnmodifiableList2));
            map2.put("ps", arrayList3);
            map.put("ch", map2);
        }
        n(JWKParameterNames.RSA_SECOND_PRIME_FACTOR, false, map, new oz5(this, tz5Var));
    }

    public final void m(long j) {
        yc9.D(this.h == rz5.e, "sendPut called when we can't send writes (we're disconnected or writes are paused).", new Object[0]);
        uz5 uz5Var = (uz5) this.n.get(Long.valueOf(j));
        cl6 cl6Var = uz5Var.c;
        String str = uz5Var.a;
        uz5Var.d = true;
        n(str, false, uz5Var.b, new mz5(this, str, j, uz5Var, cl6Var));
    }

    public final void n(String str, boolean z, Map map, qz5 qz5Var) {
        String[] strArr;
        long j = this.k;
        this.k = 1 + j;
        HashMap map2 = new HashMap();
        map2.put(JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR, Long.valueOf(j));
        map2.put("a", str);
        map2.put("b", map);
        vr1 vr1Var = this.g;
        vr1Var.getClass();
        HashMap map3 = new HashMap();
        map3.put(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, "d");
        map3.put("d", map2);
        u00 u00Var = (u00) vr1Var.f;
        if (vr1Var.b != 2) {
            u00Var.c("Tried to send on an unconnected connection", null, new Object[0]);
        } else {
            if (z) {
                u00Var.c("Sending data (contents hidden)", null, new Object[0]);
            } else {
                u00Var.c("Sending data: %s", null, map3);
            }
            nr8 nr8Var = (nr8) vr1Var.d;
            nr8Var.e();
            try {
                String strC0 = jb9.c0(map3);
                if (strC0.length() <= 16384) {
                    strArr = new String[]{strC0};
                } else {
                    ArrayList arrayList = new ArrayList();
                    int i = 0;
                    while (i < strC0.length()) {
                        int i2 = i + 16384;
                        arrayList.add(strC0.substring(i, Math.min(i2, strC0.length())));
                        i = i2;
                    }
                    strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
                }
                if (strArr.length > 1) {
                    nr8Var.a.p("" + strArr.length);
                }
                for (String str2 : strArr) {
                    nr8Var.a.p(str2);
                }
            } catch (IOException e) {
                nr8Var.j.d("Failed to serialize message: " + map3.toString(), e);
                nr8Var.f();
            }
        }
        this.l.put(Long.valueOf(j), qz5Var);
    }

    public final void o() {
        if (this.d.size() == 0) {
            rz5 rz5Var = this.h;
            yc9.D(rz5Var == rz5.a, "Not in disconnected state: %s", rz5Var);
            boolean z = this.r;
            boolean z2 = this.t;
            this.y.c("Scheduling connection attempt", null, new Object[0]);
            this.r = false;
            this.t = false;
            gz5 gz5Var = new gz5(this, z, z2);
            ln6 ln6Var = this.z;
            u00 u00Var = ln6Var.b;
            i8 i8Var = new i8(5, ln6Var, gz5Var);
            if (ln6Var.h != null) {
                u00Var.c("Cancelling previous scheduled retry", null, new Object[0]);
                ln6Var.h.cancel(false);
                ln6Var.h = null;
            }
            long jNextDouble = 0;
            if (!ln6Var.j) {
                long j = ln6Var.i;
                if (j == 0) {
                    ln6Var.i = ln6Var.c;
                } else {
                    ln6Var.i = Math.min((long) (j * ln6Var.f), ln6Var.d);
                }
                double d = ln6Var.e;
                double d2 = ln6Var.i;
                jNextDouble = (long) ((ln6Var.g.nextDouble() * d * d2) + ((1.0d - d) * d2));
            }
            ln6Var.j = false;
            u00Var.c("Scheduling retry in %dms", null, Long.valueOf(jNextDouble));
            ln6Var.h = ln6Var.a.schedule(i8Var, jNextDouble, TimeUnit.MILLISECONDS);
        }
    }
}
