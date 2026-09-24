package defpackage;

import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u59 implements e59 {
    public final String a;
    public final String b;
    public final au2 c;
    public final String d;
    public final String e;

    static {
        String simpleName = u59.class.getSimpleName();
        String[] strArr = new String[0];
        if (strArr.length != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str : strArr) {
                if (sb.length() > 1) {
                    sb.append(",");
                }
                sb.append(str);
            }
            sb.append("] ");
        }
        Object[] objArr = {simpleName, 23};
        if (!(simpleName.length() <= 23)) {
            throw new IllegalArgumentException(String.format("tag \"%s\" is longer than the %d character maximum", objArr));
        }
        for (int i = 2; i <= 7 && !Log.isLoggable(simpleName, i); i++) {
        }
    }

    public u59(au2 au2Var, String str, String str2) {
        ly8.h(au2Var);
        this.c = au2Var;
        String str3 = au2Var.a;
        ly8.e(str3);
        this.a = str3;
        String str4 = au2Var.c;
        ly8.e(str4);
        this.b = str4;
        this.d = str;
        this.e = str2;
    }

    @Override // defpackage.e59
    public final String zza() throws JSONException {
        b8 b8Var;
        int i = b8.c;
        String str = this.b;
        ly8.e(str);
        try {
            b8Var = new b8(str);
        } catch (IllegalArgumentException unused) {
            b8Var = null;
        }
        String str2 = b8Var != null ? b8Var.a : null;
        String str3 = b8Var != null ? b8Var.b : null;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("email", this.a);
        if (str2 != null) {
            jSONObject.put("oobCode", str2);
        }
        if (str3 != null) {
            jSONObject.put("tenantId", str3);
        }
        String str4 = this.d;
        if (str4 != null) {
            jSONObject.put("idToken", str4);
        }
        String str5 = this.e;
        if (str5 != null) {
            yc9.E0(jSONObject, "captchaResp", str5);
        } else {
            jSONObject.put("clientType", "CLIENT_TYPE_ANDROID");
        }
        return jSONObject.toString();
    }
}
