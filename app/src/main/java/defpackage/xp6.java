package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xp6 implements ServiceConnection {
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        componentName.getClass();
        iBinder.getClass();
        Log.d("RootServiceConnection", "daemon onServiceConnected");
        Object obj = aq6.c;
        synchronized (obj) {
            aq6.a = y84.asInterface(iBinder);
            aq6.b = false;
            aq6.f = 0L;
            obj.notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        componentName.getClass();
        Log.d("RootServiceConnection", "daemon onServiceDisconnected");
        Object obj = aq6.c;
        synchronized (obj) {
            aq6.a = null;
            aq6.b = false;
            obj.notifyAll();
        }
    }
}
