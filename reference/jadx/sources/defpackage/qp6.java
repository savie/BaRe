package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Pair;
import com.topjohnwu.superuser.Shell;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qp6 extends ContextWrapper {
    public static final String a = "com.topjohnwu.superuser.DAEMON_MODE";

    public static void a(Intent intent, ServiceConnection serviceConnection) {
        b(intent, nd8.b, serviceConnection);
    }

    public static void b(Intent intent, Executor executor, ServiceConnection serviceConnection) {
        pd7 pd7VarC;
        if (Objects.equals(ji8.x(), Boolean.FALSE) || (pd7VarC = c(intent, executor, serviceConnection)) == null) {
            return;
        }
        Shell.EXECUTOR.execute(new mr3(pd7VarC, 2));
    }

    public static pd7 c(Intent intent, Executor executor, ServiceConnection serviceConnection) {
        if (bq6.g == null) {
            bq6.g = new bq6();
        }
        bq6 bq6Var = bq6.g;
        yp6 yp6VarB = bq6Var.b(intent, executor, serviceConnection);
        if (yp6VarB == null) {
            return null;
        }
        bq6Var.d.add(new rp6(bq6Var, intent, executor, serviceConnection));
        int i = ((Boolean) ((Pair) yp6VarB).second).booleanValue() ? 2 : 1;
        int i2 = bq6Var.c;
        if ((i2 & i) != 0) {
            return null;
        }
        bq6Var.c = i | i2;
        return bq6Var.e((ComponentName) ((Pair) yp6VarB).first, ((Boolean) ((Pair) yp6VarB).second).booleanValue() ? "daemon" : "start");
    }

    @Deprecated
    public static Runnable d(Intent intent, Executor executor, ServiceConnection serviceConnection) {
        pd7 pd7VarC = c(intent, executor, serviceConnection);
        if (pd7VarC == null) {
            return null;
        }
        return new mr3(pd7VarC, 2);
    }

    public static void l(Intent intent) {
        pd7 pd7VarM;
        if (Objects.equals(ji8.x(), Boolean.FALSE) || (pd7VarM = m(intent)) == null) {
            return;
        }
        Shell.EXECUTOR.execute(new mr3(pd7VarM, 2));
    }

    public static pd7 m(Intent intent) {
        if (bq6.g == null) {
            bq6.g = new bq6();
        }
        bq6 bq6Var = bq6.g;
        bq6Var.getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            l0.e("This method can only be called on the main thread");
            return null;
        }
        yp6 yp6VarD = bq6.d(intent);
        vp6 vp6Var = ((Boolean) ((Pair) yp6VarD).second).booleanValue() ? bq6Var.b : bq6Var.a;
        if (vp6Var == null) {
            if (((Boolean) ((Pair) yp6VarD).second).booleanValue()) {
                return bq6Var.e((ComponentName) ((Pair) yp6VarD).first, "stop");
            }
            return null;
        }
        try {
            vp6Var.b.i(-1, (ComponentName) ((Pair) yp6VarD).first);
        } catch (RemoteException e) {
            ji8.k("IPC", e);
        }
        bq6Var.c(yp6VarD);
        return null;
    }

    public static void o(ServiceConnection serviceConnection) {
        if (bq6.g == null) {
            bq6.g = new bq6();
        }
        bq6 bq6Var = bq6.g;
        bq6Var.getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            l0.e("This method can only be called on the main thread");
            return;
        }
        up6 up6Var = (up6) bq6Var.f.remove(serviceConnection);
        if (up6Var != null) {
            wp6 wp6Var = (wp6) ((Pair) up6Var).first;
            int i = wp6Var.d;
            yp6 yp6Var = wp6Var.a;
            int i2 = i - 1;
            wp6Var.d = i2;
            if (i2 == 0) {
                bq6Var.e.remove(yp6Var);
                try {
                    wp6Var.c.b.d((ComponentName) ((Pair) yp6Var).first);
                } catch (RemoteException e) {
                    ji8.k("IPC", e);
                }
            }
            up6Var.a(serviceConnection);
        }
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        Context baseContext = context;
        while (baseContext instanceof ContextWrapper) {
            baseContext = ((ContextWrapper) baseContext).getBaseContext();
        }
        super.attachBaseContext(f(baseContext));
        if (iq6.e == null) {
            iq6.e = new iq6(context);
        }
        iq6 iq6Var = iq6.e;
        iq6Var.getClass();
        iq6Var.b.put(e(), new hq6(this));
        h();
    }

    public ComponentName e() {
        return new ComponentName(this, getClass());
    }

    public abstract IBinder g(Intent intent);

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return ji8.m();
    }

    public abstract void j(Intent intent);

    public abstract boolean k(Intent intent);

    public final void n() {
        if (iq6.e == null) {
            iq6.e = new iq6(this);
        }
        iq6 iq6Var = iq6.e;
        ComponentName componentNameE = e();
        iq6Var.getClass();
        nd8.a(new pb(8, iq6Var, componentNameE));
    }

    public void h() {
    }

    public void i() {
    }

    public Context f(Context context) {
        return context;
    }
}
