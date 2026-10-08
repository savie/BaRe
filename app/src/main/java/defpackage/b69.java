package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.microsoft.identity.client.claims.ClaimsRequest;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b69 extends i5 implements f59 {
    public static final Parcelable.Creator<b69> CREATOR = new f9(11);
    public String a;
    public String b;
    public Long c;
    public String d;
    public Long e;

    public b69(String str, String str2, Long l, String str3) {
        this(str, str2, l, str3, Long.valueOf(System.currentTimeMillis()));
    }

    public static b69 n(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            b69 b69Var = new b69();
            b69Var.a = jSONObject.optString("refresh_token", null);
            b69Var.b = jSONObject.optString(ClaimsRequest.ACCESS_TOKEN, null);
            b69Var.c = Long.valueOf(jSONObject.optLong("expires_in"));
            b69Var.d = jSONObject.optString("token_type", null);
            b69Var.e = Long.valueOf(jSONObject.optLong("issued_at"));
            return b69Var;
        } catch (JSONException e) {
            Log.d("b69", "Failed to read GetTokenResponse from JSONObject");
            throw new e2a(e);
        }
    }

    public final String q() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("refresh_token", this.a);
            jSONObject.put(ClaimsRequest.ACCESS_TOKEN, this.b);
            jSONObject.put("expires_in", this.c);
            jSONObject.put("token_type", this.d);
            jSONObject.put("issued_at", this.e);
            return jSONObject.toString();
        } catch (JSONException e) {
            Log.d("b69", "Failed to convert GetTokenResponse to JSON");
            throw new e2a(e);
        }
    }

    public final boolean u() {
        return System.currentTimeMillis() + 300000 < (this.c.longValue() * 1000) + this.e.longValue();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 2, this.a);
        yc9.w0(parcel, 3, this.b);
        Long l = this.c;
        yc9.s0(parcel, 4, Long.valueOf(l == null ? 0L : l.longValue()));
        yc9.w0(parcel, 5, this.d);
        Long l2 = this.e;
        l2.getClass();
        yc9.s0(parcel, 6, l2);
        yc9.G0(parcel, iF0);
    }

    @Override // defpackage.f59
    public final f59 zza(String str) throws d49 {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.a = mq7.a(jSONObject.optString("refresh_token"));
            this.b = mq7.a(jSONObject.optString(ClaimsRequest.ACCESS_TOKEN));
            this.c = Long.valueOf(jSONObject.optLong("expires_in", 0L));
            this.d = mq7.a(jSONObject.optString("token_type"));
            this.e = Long.valueOf(System.currentTimeMillis());
            return this;
        } catch (NullPointerException | JSONException e) {
            throw yc9.C0(e, "b69", str);
        }
    }

    public b69(String str, String str2, Long l, String str3, Long l2) {
        this.a = str;
        this.b = str2;
        this.c = l;
        this.d = str3;
        this.e = l2;
    }

    public b69() {
        this.e = Long.valueOf(System.currentTimeMillis());
    }
}
