package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m94 {
    public static final Set g = ji8.b("iss", "sub", "aud", "exp", "iat", "nonce", "azp");
    public final String a;
    public final ArrayList b;
    public final Long c;
    public final Long d;
    public final String e;
    public final String f;

    public m94(String str, ArrayList arrayList, Long l, Long l2, String str2, String str3) {
        this.a = str;
        this.b = arrayList;
        this.c = l;
        this.d = l2;
        this.e = str2;
        this.f = str3;
    }

    public static m94 a(String str) throws JSONException, l94 {
        ArrayList arrayListB0;
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length <= 1) {
            throw new l94("ID token must have both header and claims section");
        }
        new JSONObject(new String(Base64.decode(strArrSplit[0], 8)));
        JSONObject jSONObject = new JSONObject(new String(Base64.decode(strArrSplit[1], 8)));
        String strT = jm1.t(jSONObject, "iss");
        jm1.t(jSONObject, "sub");
        try {
            if (!jSONObject.has("aud")) {
                throw new JSONException("field \"aud\" not found in json object");
            }
            arrayListB0 = jm1.b0(jSONObject.getJSONArray("aud"));
            Long lValueOf = Long.valueOf(jSONObject.getLong("exp"));
            Long lValueOf2 = Long.valueOf(jSONObject.getLong("iat"));
            String strU = jm1.u(jSONObject, "nonce");
            String strU2 = jm1.u(jSONObject, "azp");
            Iterator it = g.iterator();
            while (it.hasNext()) {
                jSONObject.remove((String) it.next());
            }
            jm1.a0(jSONObject);
            return new m94(strT, arrayListB0, lValueOf, lValueOf2, strU, strU2);
        } catch (JSONException unused) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(jm1.t(jSONObject, "aud"));
            arrayListB0 = arrayList;
        }
    }

    public final void b(l58 l58Var, lv1 lv1Var, boolean z) throws z80 {
        n90 n90Var = (n90) l58Var.a.f;
        if (n90Var != null) {
            String str = (String) n90Var.a(n90.b);
            String str2 = this.a;
            if (!str2.equals(str)) {
                throw z80.g(x80.f, new l94("Issuer mismatch"));
            }
            Uri uri = Uri.parse(str2);
            if (!z && !uri.getScheme().equals("https")) {
                throw z80.g(x80.f, new l94("Issuer must be an https URL"));
            }
            if (TextUtils.isEmpty(uri.getHost())) {
                throw z80.g(x80.f, new l94("Issuer host can not be empty"));
            }
            if (uri.getFragment() != null || uri.getQueryParameterNames().size() > 0) {
                throw z80.g(x80.f, new l94("Issuer URL should not containt query parameters or fragment components"));
            }
        }
        String str3 = l58Var.c;
        if (!this.b.contains(str3) && !str3.equals(this.f)) {
            throw z80.g(x80.f, new l94("Audience mismatch"));
        }
        lv1Var.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        if (jCurrentTimeMillis > this.c.longValue()) {
            throw z80.g(x80.f, new l94("ID Token expired"));
        }
        if (Math.abs(jCurrentTimeMillis - this.d.longValue()) > 600) {
            throw z80.g(x80.f, new l94("Issued at time is more than 10 minutes before or after the current time"));
        }
        if ("authorization_code".equals(l58Var.d)) {
            if (!TextUtils.equals(this.e, l58Var.b)) {
                throw z80.g(x80.f, new l94("Nonce mismatch"));
            }
        }
    }
}
