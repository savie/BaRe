package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.StrictMode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hs9 implements ServiceConnection {
    public final HashMap a = new HashMap();
    public int b = 2;
    public boolean c;
    public IBinder d;
    public final ur9 e;
    public ComponentName f;
    public final /* synthetic */ tt9 g;

    public hs9(tt9 tt9Var, ur9 ur9Var) {
        this.g = tt9Var;
        this.e = ur9Var;
    }

    public final hs1 a(String str, Executor executor) {
        try {
            Intent intentA = a69.a(this.g.b, this.e);
            this.b = 3;
            StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
            if (Build.VERSION.SDK_INT >= 31) {
                StrictMode.setVmPolicy(wa9.a(new StrictMode.VmPolicy.Builder(vmPolicy)).build());
            }
            try {
                tt9 tt9Var = this.g;
                ks1 ks1Var = tt9Var.d;
                Context context = tt9Var.b;
                ur9 ur9Var = this.e;
                boolean zB = ks1Var.b(context, str, intentA, this, executor);
                this.c = zB;
                if (zB) {
                    tt9Var.c.sendMessageDelayed(tt9Var.c.obtainMessage(1, ur9Var), tt9Var.f);
                    return hs1.f;
                }
                this.b = 2;
                try {
                    tt9Var.d.a(tt9Var.b, this);
                } catch (IllegalArgumentException unused) {
                }
                return new hs1(16, null, null);
            } finally {
                StrictMode.setVmPolicy(vmPolicy);
            }
        } catch (j59 e) {
            return e.a;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        tt9 tt9Var = this.g;
        synchronized (tt9Var.a) {
            try {
                tt9Var.c.removeMessages(1, this.e);
                this.d = iBinder;
                this.f = componentName;
                Iterator it = this.a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.b = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        tt9 tt9Var = this.g;
        synchronized (tt9Var.a) {
            try {
                tt9Var.c.removeMessages(1, this.e);
                this.d = null;
                this.f = componentName;
                Iterator it = this.a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.b = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
