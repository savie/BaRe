package defpackage;

import android.content.Intent;
import android.net.Uri;
import java.util.Collections;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z80 extends Exception {
    public static final /* synthetic */ int f = 0;
    public final int a;
    public final int b;
    public final String c;
    public final String d;
    public final Uri e;

    public z80(int i, int i2, String str, String str2, Uri uri, Throwable th) {
        super(str2, th);
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = str2;
        this.e = uri;
    }

    public static z80 a(int i, String str) {
        return new z80(0, i, null, str, null, null);
    }

    public static z80 b(int i, String str) {
        return new z80(1, i, str, null, null, null);
    }

    public static Map c(z80[] z80VarArr) {
        k50 k50Var = new k50(z80VarArr.length);
        for (z80 z80Var : z80VarArr) {
            String str = z80Var.c;
            if (str != null) {
                k50Var.put(str, z80Var);
            }
        }
        return Collections.unmodifiableMap(k50Var);
    }

    public static z80 d(int i, String str) {
        return new z80(2, i, str, null, null, null);
    }

    public static z80 e(Intent intent) {
        intent.getClass();
        if (!intent.hasExtra("net.openid.appauth.AuthorizationException")) {
            return null;
        }
        try {
            String stringExtra = intent.getStringExtra("net.openid.appauth.AuthorizationException");
            jb9.i(stringExtra, "jsonStr cannot be null or empty");
            return f(new JSONObject(stringExtra));
        } catch (JSONException e) {
            throw new IllegalArgumentException("Intent contains malformed exception data", e);
        }
    }

    public static z80 f(JSONObject jSONObject) {
        jb9.j(jSONObject, "json cannot be null");
        return new z80(jSONObject.getInt("type"), jSONObject.getInt("code"), jm1.u(jSONObject, "error"), jm1.u(jSONObject, "errorDescription"), jm1.y(jSONObject, "errorUri"), null);
    }

    public static z80 g(z80 z80Var, Exception exc) {
        return new z80(z80Var.a, z80Var.b, z80Var.c, z80Var.d, z80Var.e, exc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof z80)) {
            z80 z80Var = (z80) obj;
            if (this.a == z80Var.a && this.b == z80Var.b) {
                return true;
            }
        }
        return false;
    }

    public final Intent h() {
        Intent intent = new Intent();
        intent.putExtra("net.openid.appauth.AuthorizationException", i().toString());
        return intent;
    }

    public final int hashCode() {
        return ((this.a + 31) * 31) + this.b;
    }

    public final JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", this.a);
            try {
                jSONObject.put("code", this.b);
                jm1.M(jSONObject, "error", this.c);
                jm1.M(jSONObject, "errorDescription", this.d);
                jm1.K(jSONObject, "errorUri", this.e);
                return jSONObject;
            } catch (JSONException unused) {
                l0.e("JSONException thrown in violation of contract, ex");
                return null;
            }
        } catch (JSONException unused2) {
            l0.e("JSONException thrown in violation of contract, ex");
            return null;
        }
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AuthorizationException: " + i().toString();
    }
}
