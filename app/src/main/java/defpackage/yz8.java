package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yz8 implements ServiceConnection {
    public final /* synthetic */ zz8 a;

    public /* synthetic */ yz8(zz8 zz8Var) {
        this.a = zz8Var;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zz8 zz8Var = this.a;
        zz8Var.b.b("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        zz8Var.a().post(new wz8(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zz8 zz8Var = this.a;
        zz8Var.b.b("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        zz8Var.a().post(new xz8(this, 0));
    }
}
