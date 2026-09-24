package defpackage;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f69 implements f59 {
    public nh a;
    public String b;
    public String c;
    public long d;

    @Override // defpackage.f59
    public final f59 zza(String str) throws d49 {
        try {
            JSONObject jSONObject = new JSONObject(str);
            mq7.a(jSONObject.optString("email"));
            mq7.a(jSONObject.optString("passwordHash"));
            jSONObject.optBoolean("emailVerified", false);
            mq7.a(jSONObject.optString("displayName"));
            mq7.a(jSONObject.optString("photoUrl"));
            this.a = nh.p(jSONObject.optJSONArray("providerUserInfo"));
            this.b = mq7.a(jSONObject.optString("idToken"));
            this.c = mq7.a(jSONObject.optString("refreshToken"));
            this.d = jSONObject.optLong("expiresIn", 0L);
            return this;
        } catch (NullPointerException | JSONException e) {
            throw yc9.C0(e, "f69", str);
        }
    }
}
