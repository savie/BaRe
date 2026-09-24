package defpackage;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hh8 extends i5 {
    public static final Parcelable.Creator<hh8> CREATOR = new gk(8);
    public final String a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final Uri e;

    public hh8(String str, String str2, boolean z, boolean z2) {
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = z2;
        this.e = TextUtils.isEmpty(str2) ? null : Uri.parse(str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 2, this.a);
        yc9.w0(parcel, 3, this.b);
        yc9.D0(parcel, 4, 4);
        parcel.writeInt(this.c ? 1 : 0);
        yc9.D0(parcel, 5, 4);
        parcel.writeInt(this.d ? 1 : 0);
        yc9.G0(parcel, iF0);
    }
}
