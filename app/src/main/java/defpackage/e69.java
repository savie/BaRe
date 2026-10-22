package defpackage;

import android.text.TextUtils;
import android.util.Log;
import java.text.ParseException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e69 {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final i69 e;

    public e69(String str, String str2, String str3, long j, i69 i69Var) {
        if (!TextUtils.isEmpty(str) && i69Var != null) {
            Log.e("MfaInfo", "Cannot have both MFA phone_info and totp_info");
            c6.f("Cannot have both MFA phone_info and totp_info");
            throw null;
        }
        this.a = str;
        ly8.e(str2);
        this.b = str2;
        this.c = str3;
        this.d = j;
        this.e = i69Var;
    }

    public static ArrayList a(JSONArray jSONArray) throws JSONException {
        long jW;
        if (jSONArray == null || jSONArray.length() == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            String strA = mq7.a(jSONObject.optString("phoneInfo"));
            String strA2 = mq7.a(jSONObject.optString("mfaEnrollmentId"));
            String strA3 = mq7.a(jSONObject.optString("displayName"));
            String strOptString = jSONObject.optString("enrolledAt", "");
            try {
                j89 j89VarA = t89.a(strOptString);
                t89.b(j89VarA);
                jW = j89VarA.w();
            } catch (ParseException e) {
                Log.w("MfaInfo", "Could not parse timestamp as ISOString. Invalid ISOString \"" + strOptString + "\"", e);
                jW = 0;
            }
            e69 e69Var = new e69(strA, strA2, strA3, jW, jSONObject.opt("totpInfo") != null ? new i69() : null);
            jSONObject.optString("unobfuscatedPhoneInfo");
            arrayList.add(e69Var);
        }
        return arrayList;
    }
}
