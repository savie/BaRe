package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class au2 extends d80 {
    public static final Parcelable.Creator<au2> CREATOR = new f9(16);
    public final String a;
    public final String b;
    public final String c;
    public String d;
    public boolean e;

    public au2(String str, String str2, String str3, String str4, boolean z) {
        ly8.e(str);
        this.a = str;
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            c6.f("Cannot create an EmailAuthCredential without a password or emailLink.");
            throw null;
        }
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = z;
    }

    @Override // defpackage.d80
    public final String n() {
        return "password";
    }

    @Override // defpackage.d80
    public final d80 q() {
        return new au2(this.a, this.b, this.c, this.d, this.e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.w0(parcel, 3, this.c);
        yc9.w0(parcel, 4, this.d);
        boolean z = this.e;
        yc9.D0(parcel, 5, 4);
        parcel.writeInt(z ? 1 : 0);
        yc9.G0(parcel, iF0);
    }
}
