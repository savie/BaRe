package defpackage;

import android.content.ComponentName;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ue7 extends Binder implements IInterface {
    public static final Handler d = new Handler(Looper.getMainLooper());
    public final HashSet a;
    public final ComponentName b;
    public boolean c;

    public ue7(ke7 ke7Var) {
        attachInterface(this, "moe.shizuku.server.IShizukuServiceConnection");
        this.a = new HashSet();
        this.c = false;
        this.b = ke7Var.a;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        Handler handler = d;
        if (i == 1) {
            parcel.enforceInterface("moe.shizuku.server.IShizukuServiceConnection");
            IBinder strongBinder = parcel.readStrongBinder();
            handler.post(new zu1(5, this, strongBinder));
            try {
                strongBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: te7
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        ue7 ue7Var = this.a;
                        if (ue7Var.c) {
                            return;
                        }
                        ue7Var.c = true;
                        ue7.d.post(new mr3(ue7Var, 3));
                    }
                }, 0);
            } catch (RemoteException unused) {
            }
        } else {
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("moe.shizuku.server.IShizukuServiceConnection");
                return true;
            }
            parcel.enforceInterface("moe.shizuku.server.IShizukuServiceConnection");
            if (!this.c) {
                this.c = true;
                handler.post(new mr3(this, 3));
                return true;
            }
        }
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
