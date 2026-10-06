package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import defpackage.i5;
import defpackage.ly8;
import defpackage.mk;
import defpackage.yc9;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class GoogleSignInAccount extends i5 implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new mk(7);
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final Uri f;
    public String k;
    public final long n;
    public final String p;
    public final List q;
    public final String r;
    public final String t;
    public final HashSet x = new HashSet();

    public GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, ArrayList arrayList, String str7, String str8) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = uri;
        this.k = str5;
        this.n = j;
        this.p = str6;
        this.q = arrayList;
        this.r = str7;
        this.t = str8;
    }

    public static GoogleSignInAccount n(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString("photoUrl");
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(1, jSONArray.getString(i)));
        }
        String strOptString2 = jSONObject.optString("id");
        String strOptString3 = jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null;
        String strOptString4 = jSONObject.has("email") ? jSONObject.optString("email") : null;
        String strOptString5 = jSONObject.has("displayName") ? jSONObject.optString("displayName") : null;
        String strOptString6 = jSONObject.has("givenName") ? jSONObject.optString("givenName") : null;
        String strOptString7 = jSONObject.has("familyName") ? jSONObject.optString("familyName") : null;
        String string = jSONObject.getString("obfuscatedIdentifier");
        ly8.e(string);
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, strOptString2, strOptString3, strOptString4, strOptString5, uri, null, j, string, new ArrayList(hashSet), strOptString6, strOptString7);
        googleSignInAccount.k = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return googleSignInAccount;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        if (!googleSignInAccount.p.equals(this.p)) {
            return false;
        }
        HashSet hashSet = new HashSet(googleSignInAccount.q);
        hashSet.addAll(googleSignInAccount.x);
        HashSet hashSet2 = new HashSet(this.q);
        hashSet2.addAll(this.x);
        return hashSet.equals(hashSet2);
    }

    public final int hashCode() {
        int iHashCode = this.p.hashCode() + 527;
        HashSet hashSet = new HashSet(this.q);
        hashSet.addAll(this.x);
        return (iHashCode * 31) + hashSet.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.w0(parcel, 3, this.c);
        yc9.w0(parcel, 4, this.d);
        yc9.w0(parcel, 5, this.e);
        yc9.v0(parcel, 6, this.f, i);
        yc9.w0(parcel, 7, this.k);
        yc9.D0(parcel, 8, 8);
        parcel.writeLong(this.n);
        yc9.w0(parcel, 9, this.p);
        yc9.z0(parcel, 10, this.q);
        yc9.w0(parcel, 11, this.r);
        yc9.w0(parcel, 12, this.t);
        yc9.G0(parcel, iF0);
    }
}
