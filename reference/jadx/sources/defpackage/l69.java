package defpackage;

import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l69 implements f59 {
    public String a;
    public String b;
    public long c;
    public ArrayList d;
    public String e;

    @Override // defpackage.f59
    public final f59 zza(String str) throws d49 {
        try {
            JSONObject jSONObject = new JSONObject(str);
            mq7.a(jSONObject.optString("localId", null));
            mq7.a(jSONObject.optString("email", null));
            mq7.a(jSONObject.optString("displayName", null));
            this.a = mq7.a(jSONObject.optString("idToken", null));
            mq7.a(jSONObject.optString("photoUrl", null));
            this.b = mq7.a(jSONObject.optString("refreshToken", null));
            this.c = jSONObject.optLong("expiresIn", 0L);
            this.d = e69.a(jSONObject.optJSONArray("mfaInfo"));
            this.e = jSONObject.optString("mfaPendingCredential", null);
            return this;
        } catch (NullPointerException | JSONException e) {
            throw yc9.C0(e, "l69", str);
        }
    }
}
