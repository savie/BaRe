package defpackage;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n69 implements e59 {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public boolean f;

    @Override // defpackage.e59
    public final String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(this.d)) {
            jSONObject.put("sessionInfo", this.b);
            jSONObject.put("code", this.c);
        } else {
            jSONObject.put("phoneNumber", this.a);
            jSONObject.put("temporaryProof", this.d);
        }
        String str = this.e;
        if (str != null) {
            jSONObject.put("idToken", str);
        }
        if (!this.f) {
            jSONObject.put("operation", 2);
        }
        return jSONObject.toString();
    }
}
