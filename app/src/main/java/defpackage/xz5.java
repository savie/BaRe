package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xz5 extends d80 implements Cloneable {
    public static final Parcelable.Creator<xz5> CREATOR = new yj0(8);
    public final String a;
    public final String b;
    public final String c;
    public boolean d;
    public final String e;

    public xz5(String str, String str2, String str3, String str4, boolean z) {
        ly8.b("Cannot create PhoneAuthCredential without either sessionInfo + smsCode or temporary proof + phoneNumber.", ((TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) && (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4))) ? false : true);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = z;
        this.e = str4;
    }

    public final Object clone() {
        boolean z = this.d;
        return new xz5(this.a, this.b, this.c, this.e, z);
    }

    @Override // defpackage.d80
    public final String n() {
        return "phone";
    }

    @Override // defpackage.d80
    public final d80 q() {
        return (xz5) clone();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.w0(parcel, 4, this.c);
        boolean z = this.d;
        yc9.D0(parcel, 5, 4);
        parcel.writeInt(z ? 1 : 0);
        yc9.w0(parcel, 6, this.e);
        yc9.G0(parcel, iF0);
    }
}
