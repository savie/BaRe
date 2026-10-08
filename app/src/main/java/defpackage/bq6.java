package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bq6 implements Handler.Callback {
    public static bq6 g;
    public vp6 a;
    public vp6 b;
    public int c = 0;
    public final ArrayList d = new ArrayList();
    public final ArrayMap e = new ArrayMap();
    public final ArrayMap f = new ArrayMap();

    public static void a(ServiceConnection serviceConnection, yp6 yp6Var) {
        serviceConnection.onNullBinding((ComponentName) ((Pair) yp6Var).first);
    }

    public static yp6 d(Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            c6.f("The intent does not have a component set");
            return null;
        }
        if (component.getPackageName().equals(ji8.m().getPackageName())) {
            return new yp6(component, intent.hasCategory(qp6.a));
        }
        c6.f("RootServices outside of the app are not supported");
        return null;
    }

    public final yp6 b(Intent intent, Executor executor, final ServiceConnection serviceConnection) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            l0.e("This method can only be called on the main thread");
            return null;
        }
        final yp6 yp6VarD = d(intent);
        ArrayMap arrayMap = this.e;
        wp6 wp6Var = (wp6) arrayMap.get(yp6VarD);
        ArrayMap arrayMap2 = this.f;
        if (wp6Var != null) {
            arrayMap2.put(serviceConnection, new up6(wp6Var, executor));
            wp6Var.d++;
            final IBinder iBinder = wp6Var.b;
            executor.execute(new Runnable() { // from class: sp6
                @Override // java.lang.Runnable
                public final void run() {
                    serviceConnection.onServiceConnected((ComponentName) ((Pair) yp6VarD).first, iBinder);
                }
            });
            return null;
        }
        vp6 vp6Var = ((Boolean) ((Pair) yp6VarD).second).booleanValue() ? this.b : this.a;
        if (vp6Var == null) {
            return yp6VarD;
        }
        try {
            final IBinder iBinderE = vp6Var.b.e(intent);
            if (iBinderE == null) {
                if (Build.VERSION.SDK_INT >= 28) {
                    executor.execute(new b32(3, serviceConnection, yp6VarD));
                }
                return null;
            }
            wp6 wp6Var2 = new wp6(yp6VarD, iBinderE, vp6Var);
            arrayMap2.put(serviceConnection, new up6(wp6Var2, executor));
            arrayMap.put(yp6VarD, wp6Var2);
            executor.execute(new Runnable() { // from class: tp6
                @Override // java.lang.Runnable
                public final void run() {
                    serviceConnection.onServiceConnected((ComponentName) ((Pair) yp6VarD).first, iBinderE);
                }
            });
            return null;
        } catch (RemoteException e) {
            ji8.k("IPC", e);
            vp6Var.binderDied();
            return yp6VarD;
        }
    }

    public final void c(yp6 yp6Var) {
        wp6 wp6Var = (wp6) this.e.remove(yp6Var);
        if (wp6Var != null) {
            Iterator it = this.f.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                up6 up6Var = (up6) entry.getValue();
                if (wp6Var == ((wp6) ((Pair) up6Var).first)) {
                    up6Var.a((ServiceConnection) entry.getKey());
                    it.remove();
                }
            }
        }
    }

    public final kj0 e(ComponentName componentName, String str) {
        Context contextM = ji8.m();
        if ((this.c & 4) == 0) {
            contextM.registerReceiver(new zp6(this), new IntentFilter("com.topjohnwu.superuser.RECEIVER_BROADCAST"), "android.permission.BROADCAST_PACKAGE_REMOVED", null, 4);
            this.c |= 4;
        }
        return new kj0(str, componentName);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 1) {
            c(new yp6((ComponentName) message.obj, message.arg1 != 0));
        }
        return false;
    }
}
