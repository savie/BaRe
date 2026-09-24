package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ax3 extends i5 {
    public static final Parcelable.Creator<ax3> CREATOR = new l91(2);
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;
    public final int f;
    public final List k;

    public ax3(String str, String str2, String str3, String str4, boolean z, int i, List list) {
        ly8.h(str);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = z;
        this.f = i;
        this.k = list;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ax3)) {
            return false;
        }
        ax3 ax3Var = (ax3) obj;
        return x13.m(this.a, ax3Var.a) && x13.m(this.d, ax3Var.d) && x13.m(this.b, ax3Var.b) && x13.m(Boolean.valueOf(this.e), Boolean.valueOf(ax3Var.e)) && this.f == ax3Var.f && x13.m(this.k, ax3Var.k);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.d, Boolean.valueOf(this.e), Integer.valueOf(this.f), this.k});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.w0(parcel, 3, this.c);
        yc9.w0(parcel, 4, this.d);
        yc9.D0(parcel, 5, 4);
        parcel.writeInt(this.e ? 1 : 0);
        yc9.D0(parcel, 6, 4);
        parcel.writeInt(this.f);
        yc9.z0(parcel, 7, this.k);
        yc9.G0(parcel, iF0);
    }
}
