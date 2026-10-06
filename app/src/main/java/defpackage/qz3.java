package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qz3 extends d80 {
    public static final Parcelable.Creator<qz3> CREATOR = new eq1(11);
    public final String a;
    public final String b;

    public qz3(String str, String str2) {
        if (str == null && str2 == null) {
            c6.f("Must specify an idToken or an accessToken.");
            throw null;
        }
        if (str != null && str.length() == 0) {
            c6.f("idToken cannot be empty");
            throw null;
        }
        if (str2 != null && str2.length() == 0) {
            c6.f("accessToken cannot be empty");
            throw null;
        }
        this.a = str;
        this.b = str2;
    }

    @Override // defpackage.d80
    public final String n() {
        return "google.com";
    }

    @Override // defpackage.d80
    public final d80 q() {
        return new qz3(this.a, this.b);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.G0(parcel, iF0);
    }
}
