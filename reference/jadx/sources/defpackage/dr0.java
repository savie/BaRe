package defpackage;

import android.os.IBinder;
import android.os.RemoteException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class dr0 implements IBinder.DeathRecipient {
    public final IBinder a;

    public dr0(IBinder iBinder) throws RemoteException {
        this.a = iBinder;
        iBinder.linkToDeath(this, 0);
    }

    public abstract void a();

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.a.unlinkToDeath(this, 0);
        nd8.a(new a9(this, 2));
    }
}
