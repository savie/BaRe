package defpackage;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bi9 implements e59 {
    public static final bi9 c = new bi9("ASSUME_AES_GCM", 0);
    public static final bi9 d = new bi9("ASSUME_XCHACHA20POLY1305", 0);
    public static final bi9 e = new bi9("ASSUME_CHACHA20POLY1305", 0);
    public static final bi9 f = new bi9("ASSUME_AES_CTR_HMAC", 0);
    public static final bi9 k = new bi9("ASSUME_AES_EAX", 0);
    public static final bi9 n = new bi9("ASSUME_AES_GCM_SIV", 0);
    public final /* synthetic */ int a;
    public final String b;

    public bi9(String str, int i) {
        this.a = i;
        switch (i) {
            case 1:
                ly8.e(str);
                this.b = str;
                break;
            default:
                this.b = str;
                break;
        }
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return this.b;
            default:
                return super.toString();
        }
    }

    @Override // defpackage.e59
    public String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("idToken", this.b);
        return jSONObject.toString();
    }
}
