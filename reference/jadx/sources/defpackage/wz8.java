package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wz8 extends s09 {
    public final /* synthetic */ IBinder k;
    public final /* synthetic */ yz8 n;

    public wz8(yz8 yz8Var, IBinder iBinder) {
        this.n = yz8Var;
        this.k = iBinder;
    }

    @Override // defpackage.s09
    public final void b() {
        zz8 zz8Var = this.n.a;
        zz8Var.n = (IInterface) zz8Var.i.a(this.k);
        r09 r09Var = zz8Var.b;
        r09Var.b("linkToDeath", new Object[0]);
        try {
            zz8Var.n.asBinder().linkToDeath(zz8Var.k, 0);
        } catch (RemoteException e) {
            r09Var.a(e, "linkToDeath failed", new Object[0]);
        }
        zz8Var.g = false;
        Iterator it = zz8Var.d.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        zz8Var.d.clear();
    }
}
