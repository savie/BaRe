package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import defpackage.i5;
import defpackage.ly8;
import defpackage.r39;
import defpackage.yc9;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SignInAccount extends i5 implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new r39(7);
    public final String a;
    public final GoogleSignInAccount b;
    public final String c;

    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.b = googleSignInAccount;
        ly8.f(str, "8.3 and 8.4 SDKs require non-null email");
        this.a = str;
        ly8.f(str2, "8.3 and 8.4 SDKs require non-null userId");
        this.c = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 4, this.a);
        yc9.v0(parcel, 7, this.b, i);
        yc9.w0(parcel, 8, this.c);
        yc9.G0(parcel, iF0);
    }
}
