package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xf9 implements ServiceConnection {
    public final int a;
    public final /* synthetic */ az3 b;

    public xf9(az3 az3Var, int i) {
        this.b = az3Var;
        this.a = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        int i;
        int i2;
        az3 az3Var = this.b;
        if (iBinder == null) {
            synchronized (az3Var.f) {
                i = az3Var.m;
            }
            if (i == 3) {
                az3Var.t = true;
                i2 = 5;
            } else {
                i2 = 4;
            }
            j99 j99Var = az3Var.e;
            j99Var.sendMessage(j99Var.obtainMessage(i2, az3Var.v.get(), 16));
            return;
        }
        synchronized (az3Var.g) {
            try {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                az3Var.h = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof u39)) ? new u39(iBinder) : (u39) iInterfaceQueryLocalInterface;
            } catch (Throwable th) {
                throw th;
            }
        }
        az3 az3Var2 = this.b;
        int i3 = this.a;
        az3Var2.getClass();
        hj9 hj9Var = new hj9(az3Var2, 0, null);
        j99 j99Var2 = az3Var2.e;
        j99Var2.sendMessage(j99Var2.obtainMessage(7, i3, -1, hj9Var));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        az3 az3Var = this.b;
        synchronized (az3Var.g) {
            az3Var.h = null;
        }
        az3 az3Var2 = this.b;
        int i = this.a;
        j99 j99Var = az3Var2.e;
        j99Var.sendMessage(j99Var.obtainMessage(6, i, 1));
    }
}
