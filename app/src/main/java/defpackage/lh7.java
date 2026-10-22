package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.util.Log;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lh7 {
    public static volatile lh7 d;
    public final kh7 a;
    public final HashSet b = new HashSet();
    public boolean c;

    public lh7(Context context) {
        this.a = new kh7(new qy3(new p92(context)), new hh7(this));
    }

    public static lh7 a(Context context) {
        if (d == null) {
            synchronized (lh7.class) {
                try {
                    if (d == null) {
                        d = new lh7(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public final void b() {
        if (this.c || this.b.isEmpty()) {
            return;
        }
        kh7 kh7Var = this.a;
        qy3 qy3Var = kh7Var.c;
        boolean z = false;
        kh7Var.a = ((ConnectivityManager) qy3Var.get()).getActiveNetwork() != null;
        try {
            ((ConnectivityManager) qy3Var.get()).registerDefaultNetworkCallback(kh7Var.d);
            z = true;
        } catch (RuntimeException e) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register callback", e);
            }
        }
        this.c = z;
    }
}
