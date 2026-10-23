package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qx3 extends d80 {
    public static final Parcelable.Creator<qx3> CREATOR = new yj0(7);
    public final String a;

    public qx3(String str) {
        ly8.e(str);
        this.a = str;
    }

    @Override // defpackage.d80
    public final String n() {
        return "github.com";
    }

    @Override // defpackage.d80
    public final d80 q() {
        return new qx3(this.a);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.G0(parcel, iF0);
    }
}
