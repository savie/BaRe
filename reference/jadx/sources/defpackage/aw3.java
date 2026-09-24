package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class aw3 extends i5 {
    public static final Parcelable.Creator<aw3> CREATOR = new l91(1);
    public final o22 a;

    public aw3(o22 o22Var) {
        o22Var.getClass();
        this.a = o22Var;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 1, this.a, i);
        yc9.G0(parcel, iF0);
    }
}
