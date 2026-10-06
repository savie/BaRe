package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j12 extends i5 {
    public static final Parcelable.Creator<j12> CREATOR = new b90(1);
    public final String a;
    public final Bundle b;

    public j12(Bundle bundle, String str) {
        str.getClass();
        bundle.getClass();
        this.a = str;
        this.b = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.n0(parcel, 2, this.b);
        yc9.G0(parcel, iF0);
    }
}
