package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d12 extends i5 {
    public static final Parcelable.Creator<d12> CREATOR = new eq1(1);
    public final PendingIntent a;
    public final j12 b;

    public d12(PendingIntent pendingIntent, j12 j12Var) {
        this.a = pendingIntent;
        this.b = j12Var;
        if (pendingIntent == null && j12Var == null) {
            c6.f("pendingIntent or createCredentialResponse must be specified.");
            throw null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 1, this.a, i);
        yc9.v0(parcel, 2, this.b, i);
        yc9.G0(parcel, iF0);
    }
}
