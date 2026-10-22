package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yx9 implements gx6 {
    public static final Parcelable.Creator<yx9> CREATOR = new mk(18);
    public final String a;
    public final String b;
    public final boolean c;

    public yx9(String str, String str2, boolean z) {
        ly8.e(str);
        ly8.e(str2);
        this.a = str;
        this.b = str2;
        r99.d(str2);
        this.c = z;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.D0(parcel, 3, 4);
        parcel.writeInt(this.c ? 1 : 0);
        yc9.G0(parcel, iF0);
    }

    public yx9(boolean z) {
        this.c = z;
        this.b = null;
        this.a = null;
    }
}
