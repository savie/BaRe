package defpackage;

import android.content.Intent;
import android.os.Binder;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dd4 extends Binder {
    public final /* synthetic */ ed4 a;

    public dd4(ed4 ed4Var) {
        this.a = ed4Var;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        parcel.getClass();
        if (i == 1598968902) {
            if (parcel2 != null) {
                parcel2.writeString("android.content.IIntentSender");
            }
            return true;
        }
        if (i != 1) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        parcel.enforceInterface("android.content.IIntentSender");
        parcel.readInt();
        this.a.b = parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null;
        this.a.a.countDown();
        return true;
    }
}
