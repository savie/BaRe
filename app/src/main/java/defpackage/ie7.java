package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ie7 extends Binder implements IInterface {
    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
            Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
            le7.c = bundle.getInt("shizuku:attach-reply-uid", -1);
            le7.d = bundle.getInt("shizuku:attach-reply-version", -1);
            bundle.getInt("shizuku:attach-reply-patch-version", -1);
            bundle.getString("shizuku:attach-reply-secontext");
            le7.e = bundle.getBoolean("shizuku:attach-reply-permission-granted", false);
            bundle.getBoolean("shizuku:attach-reply-should-show-request-permission-rationale", false);
            le7.i();
            return true;
        }
        if (i != 3) {
            if (i != 10001) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("moe.shizuku.server.IShizukuApplication");
                return true;
            }
            parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
            parcel.readInt();
            parcel.readInt();
            parcel.readString();
            parcel.readInt();
            parcel2.writeNoException();
            return true;
        }
        parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
        final int i3 = parcel.readInt();
        final int i4 = (parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null).getBoolean("shizuku:request-permission-reply-allowed", false) ? 0 : -1;
        synchronized (le7.i) {
            try {
                for (final je7 je7Var : le7.k) {
                    je7Var.getClass();
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        ((dl0) je7Var.a).a(i4);
                    } else {
                        le7.l.post(new Runnable(i3, i4) { // from class: he7
                            public final /* synthetic */ int b;

                            {
                                this.b = i4;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                ((dl0) this.a.a).a(this.b);
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
