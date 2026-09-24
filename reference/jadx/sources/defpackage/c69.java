package defpackage;

import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c69 implements f59 {
    public String a;
    public x89 b;

    public final boolean a() {
        ly8.e("EMAIL_PASSWORD_PROVIDER");
        x89 x89Var = this.b;
        String str = null;
        if (x89Var != null && !x89Var.isEmpty()) {
            x89 x89Var2 = this.b;
            int i = x89Var2.n;
            int i2 = 0;
            while (i2 < i) {
                Object obj = x89Var2.get(i2);
                i2++;
                r59 r59Var = (r59) obj;
                String str2 = r59Var.b;
                String str3 = r59Var.a;
                if (str2 != null && str3 != null && str3.equals("EMAIL_PASSWORD_PROVIDER")) {
                    str = str2;
                    break;
                }
            }
        }
        return str != null && (str.equals("ENFORCE") || str.equals("AUDIT"));
    }

    @Override // defpackage.f59
    public final f59 zza(String str) throws d49 {
        x89 x89Var;
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.a = mq7.a(jSONObject.optString("recaptchaKey"));
            if (jSONObject.has("recaptchaEnforcementState")) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("recaptchaEnforcementState");
                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                    q69 q69Var = z59.f;
                    x89Var = x89.p;
                } else {
                    q69 q69Var2 = z59.f;
                    Object[] objArrCopyOf = new Object[4];
                    int i = 0;
                    int i2 = 0;
                    boolean z = false;
                    while (i < jSONArrayOptJSONArray.length()) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                        r59 r59Var = jSONObject2 == null ? new r59(null, null) : new r59(mq7.a(jSONObject2.optString("provider")), mq7.a(jSONObject2.optString("enforcementState")));
                        int iM0 = jb9.m0(objArrCopyOf.length, i2 + 1);
                        if (iM0 > objArrCopyOf.length || z) {
                            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iM0);
                            z = false;
                        }
                        objArrCopyOf[i2] = r59Var;
                        i++;
                        i2++;
                    }
                    x89Var = i2 == 0 ? x89.p : new x89(i2, objArrCopyOf);
                }
                this.b = x89Var;
            }
            return this;
        } catch (NullPointerException e) {
            e = e;
            throw yc9.C0(e, "c69", str);
        } catch (JSONException e2) {
            e = e2;
            throw yc9.C0(e, "c69", str);
        }
    }
}
