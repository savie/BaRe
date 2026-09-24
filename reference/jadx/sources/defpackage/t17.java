package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t17 implements ServiceConnection {
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        componentName.getClass();
        iBinder.getClass();
        Object obj = u17.c;
        synchronized (obj) {
            u17.a = y84.asInterface(iBinder);
            u17.b = false;
            obj.notifyAll();
        }
        vr6.i$default(vr6.INSTANCE, "SbaShizukuServiceManager", "Shizuku SBA service connected", null, 4, null);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        componentName.getClass();
        Object obj = u17.c;
        synchronized (obj) {
            u17.a = null;
            u17.b = false;
            obj.notifyAll();
        }
        vr6.w$default(vr6.INSTANCE, "SbaShizukuServiceManager", "Shizuku SBA service disconnected", null, 4, null);
    }
}
