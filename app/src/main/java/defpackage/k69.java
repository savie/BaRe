package defpackage;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k69 implements f59 {
    public ArrayList G;
    public String H;
    public boolean a;
    public String b;
    public String c;
    public long d;
    public String e;
    public String f;
    public String k;
    public boolean n;
    public String p;
    public String q;
    public String r;
    public String t;
    public String x;
    public String y;

    public final ua9 a() {
        if (TextUtils.isEmpty(this.p) && TextUtils.isEmpty(this.q)) {
            return null;
        }
        String str = this.f;
        String str2 = this.q;
        String str3 = this.p;
        String str4 = this.x;
        String str5 = this.r;
        ly8.f(str, "Must specify a non-empty providerId");
        if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
            return new ua9(str, str2, str3, null, str4, str5, null);
        }
        c6.f("Must specify an idToken or an accessToken.");
        return null;
    }

    @Override // defpackage.f59
    public final f59 zza(String str) throws d49 {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.a = jSONObject.optBoolean("needConfirmation", false);
            jSONObject.optBoolean("needEmail", false);
            this.b = mq7.a(jSONObject.optString("idToken", null));
            this.c = mq7.a(jSONObject.optString("refreshToken", null));
            this.d = jSONObject.optLong("expiresIn", 0L);
            mq7.a(jSONObject.optString("localId", null));
            this.e = mq7.a(jSONObject.optString("email", null));
            mq7.a(jSONObject.optString("displayName", null));
            mq7.a(jSONObject.optString("photoUrl", null));
            this.f = mq7.a(jSONObject.optString("providerId", null));
            this.k = mq7.a(jSONObject.optString("rawUserInfo", null));
            this.n = jSONObject.optBoolean("isNewUser", false);
            this.p = jSONObject.optString("oauthAccessToken", null);
            this.q = jSONObject.optString("oauthIdToken", null);
            this.t = mq7.a(jSONObject.optString("errorMessage", null));
            this.x = mq7.a(jSONObject.optString("pendingToken", null));
            this.y = mq7.a(jSONObject.optString("tenantId", null));
            this.G = e69.a(jSONObject.optJSONArray("mfaInfo"));
            this.H = mq7.a(jSONObject.optString("mfaPendingCredential", null));
            this.r = mq7.a(jSONObject.optString("oauthTokenSecret", null));
            return this;
        } catch (NullPointerException | JSONException e) {
            throw yc9.C0(e, "k69", str);
        }
    }
}
