package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ua9 extends d80 {
    public static final Parcelable.Creator<ua9> CREATOR = new l91(4);
    public final String a;
    public final String b;
    public final String c;
    public final j69 d;
    public final String e;
    public final String f;
    public final String k;

    public ua9(String str, String str2, String str3, j69 j69Var, String str4, String str5, String str6) {
        this.a = str == null ? "" : str;
        this.b = str2;
        this.c = str3;
        this.d = j69Var;
        this.e = str4;
        this.f = str5;
        this.k = str6;
    }

    public static ua9 u(j69 j69Var) {
        ly8.i(j69Var, "Must specify a non-null webSignInCredential");
        return new ua9(null, null, null, j69Var, null, null, null);
    }

    @Override // defpackage.d80
    public final String n() {
        return this.a;
    }

    @Override // defpackage.d80
    public final d80 q() {
        return new ua9(this.a, this.b, this.c, this.d, this.e, this.f, this.k);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.w0(parcel, 3, this.c);
        yc9.v0(parcel, 4, this.d, i);
        yc9.w0(parcel, 5, this.e);
        yc9.w0(parcel, 6, this.f);
        yc9.w0(parcel, 7, this.k);
        yc9.G0(parcel, iF0);
    }
}
