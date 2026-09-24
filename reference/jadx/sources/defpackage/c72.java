package defpackage;

import android.content.ComponentName;
import android.os.RemoteException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c72 extends j72 {
    public final /* synthetic */ e38 a;

    public c72(e38 e38Var) {
        this.a = e38Var;
    }

    @Override // defpackage.j72
    public final void onCustomTabsServiceConnected(i72 i72Var) {
        j15.d("CustomTabsService is connected", new Object[0]);
        try {
            ((p74) i72Var.a).g();
        } catch (RemoteException unused) {
        }
        e38 e38Var = this.a;
        ((AtomicReference) e38Var.c).set(i72Var);
        ((CountDownLatch) e38Var.d).countDown();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        j15.d("CustomTabsService is disconnected", new Object[0]);
        e38 e38Var = this.a;
        ((AtomicReference) e38Var.c).set(null);
        ((CountDownLatch) e38Var.d).countDown();
    }
}
