package defpackage;

import android.text.TextUtils;
import com.microsoft.identity.client.claims.ClaimsRequest;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m58 {
    public l58 a;
    public String b;
    public String c;
    public Long d;
    public String e;
    public String f;
    public String g;
    public Map h;

    public final void a(JSONObject jSONObject) throws JSONException {
        String strT = jm1.t(jSONObject, "token_type");
        jb9.i(strT, "token type must not be empty if defined");
        this.b = strT;
        String strU = jm1.u(jSONObject, ClaimsRequest.ACCESS_TOKEN);
        if (strU != null) {
            jb9.i(strU, "access token cannot be empty if specified");
        }
        this.c = strU;
        this.d = jm1.p(jSONObject, "expires_at");
        if (jSONObject.has("expires_in")) {
            long j = jSONObject.getLong("expires_in");
            this.d = Long.valueOf(TimeUnit.SECONDS.toMillis(j) + System.currentTimeMillis());
        }
        String strU2 = jm1.u(jSONObject, "refresh_token");
        if (strU2 != null) {
            jb9.i(strU2, "refresh token must not be empty if defined");
        }
        this.f = strU2;
        String strU3 = jm1.u(jSONObject, ClaimsRequest.ID_TOKEN);
        if (strU3 != null) {
            jb9.i(strU3, "id token must not be empty if defined");
        }
        this.e = strU3;
        String strU4 = jm1.u(jSONObject, "scope");
        if (TextUtils.isEmpty(strU4)) {
            this.g = null;
        } else {
            String[] strArrSplit = strU4.split(" +");
            if (strArrSplit == null) {
                strArrSplit = new String[0];
            }
            this.g = sz8.J(Arrays.asList(strArrSplit));
        }
        HashSet hashSet = n58.i;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!hashSet.contains(next)) {
                linkedHashMap.put(next, jSONObject.get(next).toString());
            }
        }
        this.h = ji8.e(linkedHashMap, n58.i);
    }
}
