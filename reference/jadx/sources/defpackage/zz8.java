package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zz8 {
    public static final HashMap o = new HashMap();
    public final Context a;
    public final r09 b;
    public final String c;
    public boolean g;
    public final Intent h;
    public final v09 i;
    public yz8 m;
    public IInterface n;
    public final ArrayList d = new ArrayList();
    public final HashSet e = new HashSet();
    public final Object f = new Object();
    public final t09 k = new IBinder.DeathRecipient() { // from class: t09
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            zz8 zz8Var = this.a;
            zz8Var.b.b("reportBinderDeath", new Object[0]);
            if (zz8Var.j.get() != null) {
                e6.d();
                return;
            }
            zz8Var.b.b("%s : Binder has died.", zz8Var.c);
            Iterator it = zz8Var.d.iterator();
            while (it.hasNext()) {
                ((s09) it.next()).a(new RemoteException(String.valueOf(zz8Var.c).concat(" : Binder has died.")));
            }
            zz8Var.d.clear();
            synchronized (zz8Var.f) {
                zz8Var.e();
            }
        }
    };
    public final AtomicInteger l = new AtomicInteger(0);
    public final WeakReference j = new WeakReference(null);

    /* JADX WARN: Type inference failed for: r0v3, types: [t09] */
    public zz8(Context context, r09 r09Var, String str, Intent intent, v09 v09Var) {
        this.a = context;
        this.b = r09Var;
        this.c = str;
        this.h = intent;
        this.i = v09Var;
    }

    public static void b(zz8 zz8Var, s09 s09Var) {
        IInterface iInterface = zz8Var.n;
        r09 r09Var = zz8Var.b;
        ArrayList arrayList = zz8Var.d;
        if (iInterface != null || zz8Var.g) {
            if (!zz8Var.g) {
                s09Var.run();
                return;
            } else {
                r09Var.b("Waiting to bind to the service.", new Object[0]);
                arrayList.add(s09Var);
                return;
            }
        }
        r09Var.b("Initiate binding to the service.", new Object[0]);
        arrayList.add(s09Var);
        yz8 yz8Var = new yz8(zz8Var);
        zz8Var.m = yz8Var;
        zz8Var.g = true;
        if (zz8Var.a.bindService(zz8Var.h, yz8Var, 1)) {
            return;
        }
        r09Var.b("Failed to bind to the service.", new Object[0]);
        zz8Var.g = false;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((s09) it.next()).a(new a09("Failed to bind to the service."));
        }
        arrayList.clear();
    }

    public final Handler a() {
        Handler handler;
        HashMap map = o;
        synchronized (map) {
            try {
                if (!map.containsKey(this.c)) {
                    HandlerThread handlerThread = new HandlerThread(this.c, 10);
                    handlerThread.start();
                    map.put(this.c, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.c);
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public final void c(s09 s09Var, TaskCompletionSource taskCompletionSource) {
        a().post(new u09(this, s09Var.c(), taskCompletionSource, s09Var));
    }

    public final void d(TaskCompletionSource taskCompletionSource) {
        synchronized (this.f) {
            this.e.remove(taskCompletionSource);
        }
        a().post(new xz8(this, 1));
    }

    public final void e() {
        HashSet hashSet = this.e;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((TaskCompletionSource) it.next()).trySetException(new RemoteException(String.valueOf(this.c).concat(" : Binder has died.")));
        }
        hashSet.clear();
    }
}
