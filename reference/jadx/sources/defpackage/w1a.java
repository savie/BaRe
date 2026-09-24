package defpackage;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w1a extends i5 implements dh8 {
    public static final Parcelable.Creator<w1a> CREATOR = new u80(10);
    public String a;
    public String b;
    public String c;
    public String d;
    public Uri e;
    public String f;
    public String k;
    public boolean n;
    public String p;

    public w1a(String str, String str2, String str3, String str4, String str5, String str6, boolean z, String str7) {
        this.a = str;
        this.b = str2;
        this.f = str3;
        this.k = str4;
        this.c = str5;
        this.d = str6;
        if (!TextUtils.isEmpty(str6)) {
            this.e = Uri.parse(str6);
        }
        this.n = z;
        this.p = str7;
    }

    public static w1a n(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new w1a(jSONObject.optString("userId"), jSONObject.optString("providerId"), jSONObject.optString("email"), jSONObject.optString("phoneNumber"), jSONObject.optString("displayName"), jSONObject.optString("photoUrl"), jSONObject.optBoolean("isEmailVerified"), jSONObject.optString("rawUserInfo"));
        } catch (JSONException e) {
            Log.d("DefaultAuthUserInfo", "Failed to unpack UserInfo from JSON");
            throw new e2a(e);
        }
    }

    @Override // defpackage.dh8
    public final Uri c() {
        String str = this.d;
        if (!TextUtils.isEmpty(str) && this.e == null) {
            this.e = Uri.parse(str);
        }
        return this.e;
    }

    @Override // defpackage.dh8
    public final String e() {
        return this.c;
    }

    @Override // defpackage.dh8
    public final String l() {
        return this.b;
    }

    @Override // defpackage.dh8
    public final String m() {
        return this.f;
    }

    public final String q() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("userId", this.a);
            jSONObject.putOpt("providerId", this.b);
            jSONObject.putOpt("displayName", this.c);
            jSONObject.putOpt("photoUrl", this.d);
            jSONObject.putOpt("email", this.f);
            jSONObject.putOpt("phoneNumber", this.k);
            jSONObject.putOpt("isEmailVerified", Boolean.valueOf(this.n));
            jSONObject.putOpt("rawUserInfo", this.p);
            return jSONObject.toString();
        } catch (JSONException e) {
            Log.d("DefaultAuthUserInfo", "Failed to jsonify this object");
            throw new e2a(e);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.w0(parcel, 3, this.c);
        yc9.w0(parcel, 4, this.d);
        yc9.w0(parcel, 5, this.f);
        yc9.w0(parcel, 6, this.k);
        boolean z = this.n;
        yc9.D0(parcel, 7, 4);
        parcel.writeInt(z ? 1 : 0);
        yc9.w0(parcel, 8, this.p);
        yc9.G0(parcel, iF0);
    }
}
