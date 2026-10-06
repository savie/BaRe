package defpackage;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tt9 {
    public static final Object g = new Object();
    public static tt9 h;
    public static HandlerThread i;
    public final HashMap a = new HashMap();
    public final Context b;
    public volatile jj9 c;
    public final ks1 d;
    public final long e;
    public final long f;

    public tt9(Context context, Looper looper) {
        dt9 dt9Var = new dt9(this);
        this.b = context.getApplicationContext();
        jj9 jj9Var = new jj9(looper, dt9Var);
        Looper.getMainLooper();
        this.c = jj9Var;
        if (ks1.b == null) {
            synchronized (ks1.a) {
                try {
                    if (ks1.b == null) {
                        ks1 ks1Var = new ks1();
                        new ConcurrentHashMap();
                        ks1.b = ks1Var;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ks1 ks1Var2 = ks1.b;
        ly8.h(ks1Var2);
        this.d = ks1Var2;
        this.e = 5000L;
        this.f = 300000L;
    }

    public static tt9 a(Context context) {
        synchronized (g) {
            try {
                if (h == null) {
                    h = new tt9(context.getApplicationContext(), context.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return h;
    }

    public final hs1 b(ur9 ur9Var, ServiceConnection serviceConnection, String str) {
        hs1 hs1VarA;
        HashMap map = this.a;
        synchronized (map) {
            try {
                hs9 hs9Var = (hs9) map.get(ur9Var);
                if (hs9Var == null) {
                    hs9Var = new hs9(this, ur9Var);
                    hs9Var.a.put(serviceConnection, serviceConnection);
                    hs1VarA = hs9Var.a(str, null);
                    map.put(ur9Var, hs9Var);
                } else {
                    this.c.removeMessages(0, ur9Var);
                    if (hs9Var.a.containsKey(serviceConnection)) {
                        String string = ur9Var.toString();
                        StringBuilder sb = new StringBuilder(string.length() + 81);
                        sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                        sb.append(string);
                        throw new IllegalStateException(sb.toString());
                    }
                    hs9Var.a.put(serviceConnection, serviceConnection);
                    int i2 = hs9Var.b;
                    if (i2 == 1) {
                        serviceConnection.onServiceConnected(hs9Var.f, hs9Var.d);
                    } else if (i2 == 2) {
                        hs1VarA = hs9Var.a(str, null);
                    }
                    hs1VarA = null;
                }
                if (hs9Var.c) {
                    return hs1.f;
                }
                if (hs1VarA == null) {
                    hs1VarA = new hs1(-1, null, null);
                }
                return hs1VarA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(ur9 ur9Var, ServiceConnection serviceConnection) {
        ly8.i(serviceConnection, "ServiceConnection must not be null");
        HashMap map = this.a;
        synchronized (map) {
            try {
                hs9 hs9Var = (hs9) map.get(ur9Var);
                if (hs9Var == null) {
                    String string = ur9Var.toString();
                    StringBuilder sb = new StringBuilder(string.length() + 50);
                    sb.append("Nonexistent connection status for service config: ");
                    sb.append(string);
                    throw new IllegalStateException(sb.toString());
                }
                if (!hs9Var.a.containsKey(serviceConnection)) {
                    String string2 = ur9Var.toString();
                    StringBuilder sb2 = new StringBuilder(string2.length() + 76);
                    sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                    sb2.append(string2);
                    throw new IllegalStateException(sb2.toString());
                }
                hs9Var.a.remove(serviceConnection);
                if (hs9Var.a.isEmpty()) {
                    this.c.sendMessageDelayed(this.c.obtainMessage(0, ur9Var), this.e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
