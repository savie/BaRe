package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f29 extends i5 {
    public static final Parcelable.Creator<f29> CREATOR = new mk(8);
    public final int a;
    public final hs1 b;
    public final o29 c;

    public f29(int i, hs1 hs1Var, o29 o29Var) {
        this.a = i;
        this.b = hs1Var;
        this.c = o29Var;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        yc9.v0(parcel, 2, this.b, i);
        yc9.v0(parcel, 3, this.c, i);
        yc9.G0(parcel, iF0);
    }
}
