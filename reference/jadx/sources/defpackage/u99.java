package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u99 extends i5 {
    public static final Parcelable.Creator<u99> CREATOR = new gk(9);
    public final List a;
    public final List b;

    public u99(ArrayList arrayList, ArrayList arrayList2) {
        this.a = arrayList == null ? new ArrayList() : arrayList;
        this.b = arrayList2 == null ? new ArrayList() : arrayList2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.z0(parcel, 1, this.a);
        yc9.z0(parcel, 2, this.b);
        yc9.G0(parcel, iF0);
    }
}
