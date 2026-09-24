package defpackage;

import android.net.Uri;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e90 implements a90 {
    public static final Set s = ji8.b("client_id", "code_challenge", "code_challenge_method", "display", "login_hint", "prompt", "ui_locales", "redirect_uri", "response_mode", "response_type", "scope", "state", "claims", "claims_locales");
    public final l90 a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final Uri h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final JSONObject p;
    public final String q;
    public final Map r;

    public e90(l90 l90Var, String str, String str2, Uri uri, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, JSONObject jSONObject, String str14, Map map) {
        this.a = l90Var;
        this.b = str;
        this.g = str2;
        this.h = uri;
        this.r = map;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.i = str7;
        this.j = str8;
        this.k = str9;
        this.l = str10;
        this.m = str11;
        this.n = str12;
        this.o = str13;
        this.p = jSONObject;
        this.q = str14;
    }

    public static e90 b(JSONObject jSONObject) {
        jb9.j(jSONObject, "json cannot be null");
        return new e90(l90.e(jSONObject.getJSONObject("configuration")), jm1.t(jSONObject, "clientId"), jm1.t(jSONObject, "responseType"), jm1.x(jSONObject, "redirectUri"), jm1.u(jSONObject, "display"), jm1.u(jSONObject, "login_hint"), jm1.u(jSONObject, "prompt"), jm1.u(jSONObject, "ui_locales"), jm1.u(jSONObject, "scope"), jm1.u(jSONObject, "state"), jm1.u(jSONObject, "nonce"), jm1.u(jSONObject, "codeVerifier"), jm1.u(jSONObject, "codeVerifierChallenge"), jm1.u(jSONObject, "codeVerifierChallengeMethod"), jm1.u(jSONObject, "responseMode"), jm1.o(jSONObject, "claims"), jm1.u(jSONObject, "claimsLocales"), jm1.w(jSONObject, "additionalParameters"));
    }

    @Override // defpackage.a90
    public final String a() {
        return c().toString();
    }

    public final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        jm1.J(jSONObject, "configuration", this.a.i());
        jm1.H(jSONObject, "clientId", this.b);
        jm1.H(jSONObject, "responseType", this.g);
        jm1.H(jSONObject, "redirectUri", this.h.toString());
        jm1.M(jSONObject, "display", this.c);
        jm1.M(jSONObject, "login_hint", this.d);
        jm1.M(jSONObject, "scope", this.i);
        jm1.M(jSONObject, "prompt", this.e);
        jm1.M(jSONObject, "ui_locales", this.f);
        jm1.M(jSONObject, "state", this.j);
        jm1.M(jSONObject, "nonce", this.k);
        jm1.M(jSONObject, "codeVerifier", this.l);
        jm1.M(jSONObject, "codeVerifierChallenge", this.m);
        jm1.M(jSONObject, "codeVerifierChallengeMethod", this.n);
        jm1.M(jSONObject, "responseMode", this.o);
        JSONObject jSONObject2 = this.p;
        if (jSONObject2 != null) {
            try {
                jSONObject.put("claims", jSONObject2);
            } catch (JSONException e) {
                e6.j("JSONException thrown in violation of contract", e);
                return null;
            }
        }
        jm1.M(jSONObject, "claimsLocales", this.q);
        jm1.J(jSONObject, "additionalParameters", jm1.E(this.r));
        return jSONObject;
    }

    @Override // defpackage.a90
    public final String getState() {
        return this.j;
    }
}
