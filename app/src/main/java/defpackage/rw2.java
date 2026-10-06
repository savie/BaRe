package defpackage;

import android.net.Uri;
import java.util.LinkedHashMap;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rw2 implements a90 {
    public final l90 a;
    public final String b;
    public final Uri c;
    public final String d;
    public final String e;
    public final LinkedHashMap f;

    static {
        ji8.b("id_token_hint", "post_logout_redirect_uri", "state", "ui_locales");
    }

    public rw2(l90 l90Var, String str, Uri uri, String str2, String str3, LinkedHashMap linkedHashMap) {
        this.a = l90Var;
        this.b = str;
        this.c = uri;
        this.d = str2;
        this.e = str3;
        this.f = linkedHashMap;
    }

    @Override // defpackage.a90
    public final String a() {
        return b().toString();
    }

    public final JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        jm1.J(jSONObject, "configuration", this.a.i());
        jm1.M(jSONObject, "id_token_hint", this.b);
        jm1.K(jSONObject, "post_logout_redirect_uri", this.c);
        jm1.M(jSONObject, "state", this.d);
        jm1.M(jSONObject, "ui_locales", this.e);
        jm1.J(jSONObject, "additionalParameters", jm1.E(this.f));
        return jSONObject;
    }

    @Override // defpackage.a90
    public final String getState() {
        return this.d;
    }
}
