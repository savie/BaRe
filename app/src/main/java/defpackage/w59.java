package defpackage;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w59 implements f59 {
    public ln5 a;

    @Override // defpackage.f59
    public final f59 zza(String str) throws d49 {
        ln5 ln5Var;
        x59 x59Var;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("users")) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("users");
                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                    ln5Var = new ln5(new ArrayList());
                } else {
                    ArrayList arrayList = new ArrayList(jSONArrayOptJSONArray.length());
                    boolean z = false;
                    int i = 0;
                    while (i < jSONArrayOptJSONArray.length()) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                        if (jSONObject2 == null) {
                            x59Var = new x59();
                            x59Var.f = new nh();
                            q69 q69Var = z59.f;
                            x59Var.m = x89.p;
                        } else {
                            String strA = mq7.a(jSONObject2.optString("localId", null));
                            String strA2 = mq7.a(jSONObject2.optString("email", null));
                            boolean zOptBoolean = jSONObject2.optBoolean("emailVerified", z);
                            String strA3 = mq7.a(jSONObject2.optString("displayName", null));
                            String strA4 = mq7.a(jSONObject2.optString("photoUrl", null));
                            nh nhVarP = nh.p(jSONObject2.optJSONArray("providerUserInfo"));
                            mq7.a(jSONObject2.optString("rawPassword", null));
                            x59Var = new x59(strA, strA2, zOptBoolean, strA3, strA4, nhVarP, mq7.a(jSONObject2.optString("phoneNumber", null)), jSONObject2.optLong("createdAt", 0L), jSONObject2.optLong("lastLoginAt", 0L), e69.a(jSONObject2.optJSONArray("mfaInfo")), v89.q(jSONObject2.optJSONArray("passkeyInfo")));
                        }
                        arrayList.add(x59Var);
                        i++;
                        jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                        z = false;
                    }
                    ln5Var = new ln5(arrayList);
                }
            } else {
                ln5Var = new ln5(16);
                ln5Var.b = new ArrayList();
            }
            this.a = ln5Var;
            return this;
        } catch (NullPointerException e) {
            e = e;
            throw yc9.C0(e, "w59", str);
        } catch (JSONException e2) {
            e = e2;
            throw yc9.C0(e, "w59", str);
        }
    }
}
