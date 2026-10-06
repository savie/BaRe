package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j69 extends i5 implements e59 {
    public static final Parcelable.Creator<j69> CREATOR = new m10(11);
    public boolean G;
    public String H;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String k;
    public String n;
    public boolean q;
    public String r;
    public String t;
    public String x;
    public String y;
    public String a = "http://localhost";
    public boolean p = true;

    public j69(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.c = str;
        this.d = str2;
        this.n = str4;
        this.r = str5;
        this.y = str6;
        this.H = str7;
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str5)) {
            c6.f("idToken, accessToken and authCode cannot all be null");
            throw null;
        }
        ly8.e(str3);
        this.e = str3;
        this.f = null;
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append("id_token=");
            sb.append(str);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(str2)) {
            sb.append("access_token=");
            sb.append(str2);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(null)) {
            sb.append("identifier=null&");
        }
        if (!TextUtils.isEmpty(str4)) {
            sb.append("oauth_token_secret=");
            sb.append(str4);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(str5)) {
            sb.append("code=");
            sb.append(str5);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(str8)) {
            sb.append("nonce=");
            sb.append(str8);
            sb.append("&");
        }
        this.k = dj7.n(sb, "providerId=", str3);
        this.q = true;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 2, this.a);
        yc9.w0(parcel, 3, this.b);
        yc9.w0(parcel, 4, this.c);
        yc9.w0(parcel, 5, this.d);
        yc9.w0(parcel, 6, this.e);
        yc9.w0(parcel, 7, this.f);
        yc9.w0(parcel, 8, this.k);
        yc9.w0(parcel, 9, this.n);
        boolean z = this.p;
        yc9.D0(parcel, 10, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.q;
        yc9.D0(parcel, 11, 4);
        parcel.writeInt(z2 ? 1 : 0);
        yc9.w0(parcel, 12, this.r);
        yc9.w0(parcel, 13, this.t);
        yc9.w0(parcel, 14, this.x);
        yc9.w0(parcel, 15, this.y);
        boolean z3 = this.G;
        yc9.D0(parcel, 16, 4);
        parcel.writeInt(z3 ? 1 : 0);
        yc9.w0(parcel, 17, this.H);
        yc9.G0(parcel, iF0);
    }

    @Override // defpackage.e59
    public final String zza() throws JSONException {
        String str = this.x;
        String str2 = this.t;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("autoCreate", this.q);
        jSONObject.put("returnSecureToken", this.p);
        String str3 = this.b;
        if (str3 != null) {
            jSONObject.put("idToken", str3);
        }
        String str4 = this.k;
        if (str4 != null) {
            jSONObject.put("postBody", str4);
        }
        String str5 = this.y;
        if (str5 != null) {
            jSONObject.put("tenantId", str5);
        }
        String str6 = this.H;
        if (str6 != null) {
            jSONObject.put("pendingToken", str6);
        }
        if (!TextUtils.isEmpty(str2)) {
            jSONObject.put("sessionId", str2);
        }
        if (TextUtils.isEmpty(str)) {
            String str7 = this.a;
            if (str7 != null) {
                jSONObject.put("requestUri", str7);
            }
        } else {
            jSONObject.put("requestUri", str);
        }
        jSONObject.put("returnIdpCredential", this.G);
        return jSONObject.toString();
    }
}
