package defpackage;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yn6 {
    public static final om5 a;

    static {
        kj4 kj4Var = new kj4();
        gb0 gb0Var = gb0.a;
        kj4Var.a(yn6.class, gb0Var);
        kj4Var.a(fe0.class, gb0Var);
        a = new om5(kj4Var);
    }

    public static fe0 a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String string = jSONObject.getString("rolloutId");
        String string2 = jSONObject.getString("parameterKey");
        String string3 = jSONObject.getString("parameterValue");
        String string4 = jSONObject.getString("variantId");
        long j = jSONObject.getLong("templateVersion");
        if (string3.length() > 256) {
            string3 = string3.substring(0, 256);
        }
        return new fe0(string, string2, string3, string4, j);
    }
}
