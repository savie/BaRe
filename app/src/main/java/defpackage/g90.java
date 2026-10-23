package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.microsoft.identity.client.claims.ClaimsRequest;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g90 extends rs9 {
    public static final Set F = Collections.unmodifiableSet(new HashSet(Arrays.asList("token_type", "state", "code", ClaimsRequest.ACCESS_TOKEN, "expires_in", ClaimsRequest.ID_TOKEN, "scope")));
    public final String A;
    public final Long B;
    public final String C;
    public final String D;
    public final Map E;
    public final e90 w;
    public final String x;
    public final String y;
    public final String z;

    public g90(e90 e90Var, String str, String str2, String str3, String str4, Long l, String str5, String str6, Map map) {
        this.w = e90Var;
        this.x = str;
        this.y = str2;
        this.z = str3;
        this.A = str4;
        this.B = l;
        this.C = str5;
        this.D = str6;
        this.E = map;
    }

    public static g90 J(Intent intent) {
        jb9.j(intent, "dataIntent must not be null");
        if (!intent.hasExtra("net.openid.appauth.AuthorizationResponse")) {
            return null;
        }
        try {
            return K(new JSONObject(intent.getStringExtra("net.openid.appauth.AuthorizationResponse")));
        } catch (JSONException e) {
            throw new IllegalArgumentException("Intent contains malformed auth response", e);
        }
    }

    public static g90 K(JSONObject jSONObject) {
        if (jSONObject.has("request")) {
            return new g90(e90.b(jSONObject.getJSONObject("request")), jm1.u(jSONObject, "state"), jm1.u(jSONObject, "token_type"), jm1.u(jSONObject, "code"), jm1.u(jSONObject, ClaimsRequest.ACCESS_TOKEN), jm1.p(jSONObject, "expires_at"), jm1.u(jSONObject, ClaimsRequest.ID_TOKEN), jm1.u(jSONObject, "scope"), jm1.w(jSONObject, "additional_parameters"));
        }
        c6.f("authorization request not provided and not found in JSON");
        return null;
    }

    public final l58 I() {
        Map map = Collections.EMPTY_MAP;
        jb9.j(map, "additionalExchangeParameters cannot be null");
        String str = this.z;
        if (str == null) {
            l0.e("authorizationCode not available for exchange request");
            return null;
        }
        e90 e90Var = this.w;
        l90 l90Var = e90Var.a;
        String str2 = e90Var.b;
        l90Var.getClass();
        jb9.i(str2, "clientId cannot be null or empty");
        new LinkedHashMap();
        jb9.i("authorization_code", "grantType cannot be null or empty");
        Uri uri = e90Var.h;
        if (uri != null) {
            jb9.j(uri.getScheme(), "redirectUri must have a scheme");
        }
        String str3 = e90Var.l;
        if (str3 != null) {
            dk1.a(str3);
        }
        jb9.i(str, "authorization code must not be empty");
        Map mapE = ji8.e(map, l58.k);
        String str4 = e90Var.k;
        String str5 = TextUtils.isEmpty(str4) ? null : str4;
        if (uri != null) {
            return new l58(l90Var, str2, str5, "authorization_code", uri, null, str, null, str3, Collections.unmodifiableMap(mapE));
        }
        l0.e("no redirect URI specified on token request for code exchange");
        return null;
    }

    public final JSONObject L() {
        JSONObject jSONObject = new JSONObject();
        jm1.J(jSONObject, "request", this.w.c());
        jm1.M(jSONObject, "state", this.x);
        jm1.M(jSONObject, "token_type", this.y);
        jm1.M(jSONObject, "code", this.z);
        jm1.M(jSONObject, ClaimsRequest.ACCESS_TOKEN, this.A);
        jm1.L(jSONObject, "expires_at", this.B);
        jm1.M(jSONObject, ClaimsRequest.ID_TOKEN, this.C);
        jm1.M(jSONObject, "scope", this.D);
        jm1.J(jSONObject, "additional_parameters", jm1.E(this.E));
        return jSONObject;
    }

    @Override // defpackage.rs9
    public final String l() {
        return this.x;
    }

    @Override // defpackage.rs9
    public final Intent v() {
        Intent intent = new Intent();
        intent.putExtra("net.openid.appauth.AuthorizationResponse", L().toString());
        return intent;
    }
}
