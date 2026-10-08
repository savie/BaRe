package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n90 {
    public static final en4 b = new en4("issuer", null);
    public static final fn4 c = new fn4("authorization_endpoint", null);
    public static final fn4 d = new fn4("token_endpoint", null);
    public static final fn4 e = new fn4("end_session_endpoint", null);
    public static final fn4 f = new fn4("registration_endpoint", null);
    public static final List g;
    public final JSONObject a;

    static {
        Arrays.asList("authorization_code", "implicit");
        Collections.singletonList("client_secret_basic");
        Collections.singletonList("normal");
        g = Arrays.asList("issuer", "authorization_endpoint", "jwks_uri", "response_types_supported", "subject_types_supported", "id_token_signing_alg_values_supported");
    }

    public n90(JSONObject jSONObject) throws m90 {
        jSONObject.getClass();
        this.a = jSONObject;
        for (String str : g) {
            if (!this.a.has(str) || this.a.get(str) == null) {
                m90 m90Var = new m90(xs1.j("Missing mandatory configuration field: ", str));
                m90Var.a = str;
                throw m90Var;
            }
        }
    }

    public final Object a(ao aoVar) {
        JSONObject jSONObject = this.a;
        try {
            return !jSONObject.has((String) aoVar.a) ? aoVar.b : aoVar.e(jSONObject.getString((String) aoVar.a));
        } catch (JSONException e2) {
            e6.j("unexpected JSONException", e2);
            return null;
        }
    }
}
