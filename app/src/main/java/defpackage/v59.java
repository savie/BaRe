package defpackage;

import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v59 implements f59 {
    public String a;
    public String b;
    public boolean c;
    public long d;
    public ArrayList e;
    public String f;

    @Override // defpackage.f59
    public final f59 zza(String str) throws d49 {
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optString("localId", null);
            jSONObject.optString("email", null);
            this.a = jSONObject.optString("idToken", null);
            this.b = jSONObject.optString("refreshToken", null);
            this.c = jSONObject.optBoolean("isNewUser", false);
            this.d = jSONObject.optLong("expiresIn", 0L);
            this.e = e69.a(jSONObject.optJSONArray("mfaInfo"));
            this.f = jSONObject.optString("mfaPendingCredential", null);
            return this;
        } catch (NullPointerException | JSONException e) {
            throw yc9.C0(e, "v59", str);
        }
    }
}
