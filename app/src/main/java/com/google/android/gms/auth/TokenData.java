package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import defpackage.i5;
import defpackage.ly8;
import defpackage.u80;
import defpackage.x13;
import defpackage.yc9;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class TokenData extends i5 implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new u80(13);
    public final int a;
    public final String b;
    public final Long c;
    public final boolean d;
    public final boolean e;
    public final List f;
    public final String k;

    public TokenData(int i, String str, Long l, boolean z, boolean z2, ArrayList arrayList, String str2) {
        this.a = i;
        ly8.e(str);
        this.b = str;
        this.c = l;
        this.d = z;
        this.e = z2;
        this.f = arrayList;
        this.k = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.b, tokenData.b) && x13.m(this.c, tokenData.c) && this.d == tokenData.d && this.e == tokenData.e && x13.m(this.f, tokenData.f) && x13.m(this.k, tokenData.k);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.c, Boolean.valueOf(this.d), Boolean.valueOf(this.e), this.f, this.k});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.s0(parcel, 3, this.c);
        yc9.D0(parcel, 4, 4);
        parcel.writeInt(this.d ? 1 : 0);
        yc9.D0(parcel, 5, 4);
        parcel.writeInt(this.e ? 1 : 0);
        yc9.x0(parcel, 6, this.f);
        yc9.w0(parcel, 7, this.k);
        yc9.G0(parcel, iF0);
    }
}
