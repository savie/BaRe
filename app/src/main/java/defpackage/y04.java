package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y04 extends i5 {
    public static final Parcelable.Creator<y04> CREATOR = new fm(7);
    public final int a;
    public final int b;
    public final Bundle c;

    public y04(int i, int i2, Bundle bundle) {
        this.a = i;
        this.b = i2;
        this.c = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        yc9.D0(parcel, 2, 4);
        parcel.writeInt(this.b);
        yc9.n0(parcel, 3, this.c);
        yc9.G0(parcel, iF0);
    }
}
