package defpackage;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m69 implements f59 {
    public String a;
    public String b;
    public long c;
    public boolean d;
    public String e;
    public String f;

    @Override // defpackage.f59
    public final f59 zza(String str) throws d49 {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.a = mq7.a(jSONObject.optString("idToken", null));
            this.b = mq7.a(jSONObject.optString("refreshToken", null));
            this.c = jSONObject.optLong("expiresIn", 0L);
            mq7.a(jSONObject.optString("localId", null));
            this.d = jSONObject.optBoolean("isNewUser", false);
            this.e = mq7.a(jSONObject.optString("temporaryProof", null));
            this.f = mq7.a(jSONObject.optString("phoneNumber", null));
            return this;
        } catch (NullPointerException | JSONException e) {
            throw yc9.C0(e, "m69", str);
        }
    }
}
