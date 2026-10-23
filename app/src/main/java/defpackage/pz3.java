package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.SparseIntArray;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pz3 implements Handler.Callback {
    public static final Status p = new Status(4, "Sign-out occurred while this API call was in progress.", null, null);
    public static final Status q = new Status(4, "The user must be signed in to make this API call.", null, null);
    public static final Object r = new Object();
    public static pz3 s;
    public long a;
    public boolean b;
    public sz7 c;
    public i29 d;
    public final Context e;
    public final lz3 f;
    public final h80 g;
    public final AtomicInteger h;
    public final AtomicInteger i;
    public final ConcurrentHashMap j;
    public a19 k;
    public final p50 l;
    public final p50 m;
    public final n29 n;
    public volatile boolean o;

    public pz3(Context context, Looper looper) {
        lz3 lz3Var = lz3.d;
        this.a = 10000L;
        this.b = false;
        this.h = new AtomicInteger(1);
        this.i = new AtomicInteger(0);
        this.j = new ConcurrentHashMap(5, 0.75f, 1);
        this.k = null;
        this.l = new p50(0);
        this.m = new p50(0);
        this.o = true;
        this.e = context;
        n29 n29Var = new n29(looper, this);
        Looper.getMainLooper();
        this.n = n29Var;
        this.f = lz3Var;
        this.g = new h80(17);
        PackageManager packageManager = context.getPackageManager();
        if (rs9.s == null) {
            rs9.s = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        if (rs9.s.booleanValue()) {
            this.o = false;
        }
        n29Var.sendMessage(n29Var.obtainMessage(6));
    }

    public static void a() {
        synchronized (r) {
            try {
                pz3 pz3Var = s;
                if (pz3Var != null) {
                    pz3Var.i.incrementAndGet();
                    n29 n29Var = pz3Var.n;
                    n29Var.sendMessageAtFrontOfQueue(n29Var.obtainMessage(10));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Status e(df dfVar, hs1 hs1Var) {
        return new Status(17, dj7.l("API: ", (String) dfVar.b.c, " is not available on this device. Connection failed with: ", String.valueOf(hs1Var)), hs1Var.c, hs1Var);
    }

    public static pz3 g(Context context) {
        pz3 pz3Var;
        HandlerThread handlerThread;
        synchronized (r) {
            if (s == null) {
                synchronized (tt9.g) {
                    try {
                        handlerThread = tt9.i;
                        if (handlerThread == null) {
                            HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
                            tt9.i = handlerThread2;
                            handlerThread2.start();
                            handlerThread = tt9.i;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                Looper looper = handlerThread.getLooper();
                Context applicationContext = context.getApplicationContext();
                Object obj = lz3.c;
                s = new pz3(applicationContext, looper);
            }
            pz3Var = s;
        }
        return pz3Var;
    }

    public final void b(a19 a19Var) {
        synchronized (r) {
            try {
                if (this.k != a19Var) {
                    this.k = a19Var;
                    this.l.clear();
                }
                this.l.addAll(a19Var.e);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c() {
        if (this.b) {
            return false;
        }
        kq6 kq6Var = (kq6) jq6.i().b;
        if (kq6Var != null && !kq6Var.b) {
            return false;
        }
        int i = ((SparseIntArray) this.g.b).get(203400000, -1);
        return i == -1 || i == 0;
    }

    public final boolean d(hs1 hs1Var, int i) {
        boolean zBooleanValue;
        PendingIntent activity;
        Boolean bool;
        lz3 lz3Var = this.f;
        Context context = this.e;
        lz3Var.getClass();
        synchronized (jd4.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = jd4.a;
            if (context2 == null || (bool = jd4.b) == null || context2 != applicationContext) {
                jd4.b = null;
                boolean zIsInstantApp = applicationContext.getPackageManager().isInstantApp();
                jd4.b = Boolean.valueOf(zIsInstantApp);
                jd4.a = applicationContext;
                zBooleanValue = zIsInstantApp;
            } else {
                zBooleanValue = bool.booleanValue();
            }
        }
        if (!zBooleanValue) {
            int i2 = hs1Var.b;
            if (i2 == 0 || (activity = hs1Var.c) == null) {
                Intent intentA = lz3Var.a(i2, context, null);
                activity = intentA != null ? PendingIntent.getActivity(context, 0, intentA, 201326592) : null;
            }
            if (activity != null) {
                int i3 = hs1Var.b;
                int i4 = GoogleApiActivity.b;
                Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
                intent.putExtra("pending_intent", activity);
                intent.putExtra("failing_client_id", i);
                intent.putExtra("notify_manager", true);
                lz3Var.g(context, i3, PendingIntent.getActivity(context, 0, intent, l29.a | 134217728));
                return true;
            }
        }
        return false;
    }

    public final g19 f(kz3 kz3Var) {
        df dfVar = kz3Var.e;
        ConcurrentHashMap concurrentHashMap = this.j;
        g19 g19Var = (g19) concurrentHashMap.get(dfVar);
        if (g19Var == null) {
            g19Var = new g19(this, kz3Var);
            concurrentHashMap.put(dfVar, g19Var);
        }
        if (g19Var.b.j()) {
            this.m.add(dfVar);
        }
        g19Var.m();
        return g19Var;
    }

    public final void h(hs1 hs1Var, int i) {
        if (d(hs1Var, i)) {
            return;
        }
        n29 n29Var = this.n;
        n29Var.sendMessage(n29Var.obtainMessage(5, i, 0, hs1Var));
    }

    /* JADX WARN: Code duplicated, block: B:167:0x0398  */
    /* JADX WARN: Code duplicated, block: B:169:0x039e  */
    /* JADX WARN: Code duplicated, block: B:171:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:173:0x03c9  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v8 g19, still in use, count: 2, list:
          (r5v8 g19) from 0x0390: IGET (r5v8 g19) A[WRAPPED] (LINE:913) g19.k int
          (r5v8 g19) from 0x0396: PHI (r5 I:??) = (r5v5 g19), (r5v8 g19) binds: [B:165:0x0395, B:219:0x0396] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(android.os.Message r20) {
        /*
            Method dump skipped, instruction units count: 1178
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pz3.handleMessage(android.os.Message):boolean");
    }
}
