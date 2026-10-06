package defpackage;

import android.accounts.Account;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.microsoft.identity.client.claims.ClaimsRequest;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class hz3 {
    /* JADX WARN: Code duplicated, block: B:4:0x000c  */
    public static Account a() {
        Object next;
        String email;
        GoogleSignInAccount googleSignInAccount;
        String str;
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null) {
            email = null;
        } else {
            Iterator<T> it = mFirebaseUserA.getProviderData().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!pe4.d(((dh8) next).l(), "google.com"));
            dh8 dh8Var = (dh8) next;
            if (dh8Var == null || (email = dh8Var.m()) == null) {
                email = mFirebaseUserA.getEmail();
            }
            if (nq7.j0(email)) {
                email = null;
            }
        }
        if (email == null) {
            return null;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        l39 l39VarK = l39.k(SwiftApp.Companion.c());
        synchronized (l39VarK) {
            googleSignInAccount = (GoogleSignInAccount) l39VarK.c;
        }
        Account account = (googleSignInAccount == null || (str = googleSignInAccount.d) == null) ? null : new Account(str, "com.google");
        return uq7.P(account != null ? account.name : null, email, true) ? account : new Account(email, "com.google");
    }

    public static void b(f80 f80Var) {
        String string;
        String strA;
        if (f80Var != null) {
            JSONObject jSONObject = new JSONObject();
            jm1.M(jSONObject, "refreshToken", (String) f80Var.a);
            jm1.M(jSONObject, "scope", (String) f80Var.b);
            l90 l90Var = (l90) f80Var.c;
            if (l90Var != null) {
                jm1.J(jSONObject, "config", l90Var.i());
            }
            z80 z80Var = (z80) f80Var.g;
            if (z80Var != null) {
                jm1.J(jSONObject, "mAuthorizationException", z80Var.i());
            }
            g90 g90Var = (g90) f80Var.d;
            if (g90Var != null) {
                jm1.J(jSONObject, "lastAuthorizationResponse", g90Var.L());
            }
            n58 n58Var = (n58) f80Var.e;
            if (n58Var != null) {
                JSONObject jSONObject2 = new JSONObject();
                l58 l58Var = n58Var.a;
                l58Var.getClass();
                JSONObject jSONObject3 = new JSONObject();
                jm1.J(jSONObject3, "configuration", l58Var.a.i());
                jm1.H(jSONObject3, "clientId", l58Var.c);
                jm1.M(jSONObject3, "nonce", l58Var.b);
                jm1.H(jSONObject3, "grantType", l58Var.d);
                jm1.K(jSONObject3, "redirectUri", l58Var.e);
                jm1.M(jSONObject3, "scope", l58Var.g);
                jm1.M(jSONObject3, "authorizationCode", l58Var.f);
                jm1.M(jSONObject3, "refreshToken", l58Var.h);
                jm1.M(jSONObject3, "codeVerifier", l58Var.i);
                jm1.J(jSONObject3, "additionalParameters", jm1.E(l58Var.j));
                jm1.J(jSONObject2, "request", jSONObject3);
                jm1.M(jSONObject2, "token_type", n58Var.b);
                jm1.M(jSONObject2, ClaimsRequest.ACCESS_TOKEN, n58Var.c);
                jm1.L(jSONObject2, "expires_at", n58Var.d);
                jm1.M(jSONObject2, ClaimsRequest.ID_TOKEN, n58Var.e);
                jm1.M(jSONObject2, "refresh_token", n58Var.f);
                jm1.M(jSONObject2, "scope", n58Var.g);
                jm1.J(jSONObject2, "additionalParameters", jm1.E(n58Var.h));
                jm1.J(jSONObject, "mLastTokenResponse", jSONObject2);
            }
            fi6 fi6Var = (fi6) f80Var.f;
            if (fi6Var != null) {
                JSONObject jSONObject4 = new JSONObject();
                ei6 ei6Var = fi6Var.a;
                JSONObject jSONObject5 = new JSONObject();
                jm1.I(jSONObject5, "redirect_uris", jm1.Y(ei6Var.b));
                jm1.H(jSONObject5, "application_type", "native");
                List list = ei6Var.c;
                if (list != null) {
                    jm1.I(jSONObject5, "response_types", jm1.Y(list));
                }
                List list2 = ei6Var.d;
                if (list2 != null) {
                    jm1.I(jSONObject5, "grant_types", jm1.Y(list2));
                }
                jm1.M(jSONObject5, "subject_type", ei6Var.e);
                jm1.K(jSONObject5, "jwks_uri", ei6Var.f);
                JSONObject jSONObject6 = ei6Var.g;
                if (jSONObject6 != null) {
                    try {
                        jSONObject5.put("jwks", jSONObject6);
                    } catch (JSONException e) {
                        e6.j("JSONException thrown in violation of contract", e);
                        return;
                    }
                }
                jm1.M(jSONObject5, "token_endpoint_auth_method", ei6Var.h);
                jm1.J(jSONObject5, "configuration", ei6Var.a.i());
                jm1.J(jSONObject5, "additionalParameters", jm1.E(ei6Var.i));
                jm1.J(jSONObject4, "request", jSONObject5);
                jm1.H(jSONObject4, "client_id", fi6Var.b);
                jm1.L(jSONObject4, "client_id_issued_at", fi6Var.c);
                jm1.M(jSONObject4, "client_secret", fi6Var.d);
                jm1.L(jSONObject4, "client_secret_expires_at", fi6Var.e);
                jm1.M(jSONObject4, "registration_access_token", fi6Var.f);
                jm1.K(jSONObject4, "registration_client_uri", fi6Var.g);
                jm1.M(jSONObject4, "token_endpoint_auth_method", fi6Var.h);
                jm1.J(jSONObject4, "additionalParameters", jm1.E(fi6Var.i));
                jm1.J(jSONObject, "lastRegistrationResponse", jSONObject4);
            }
            string = jSONObject.toString();
        } else {
            string = null;
        }
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putString("nogms_auth_state", string).apply();
        if (f80Var == null || (strA = f80Var.a()) == null || strA.length() <= 0) {
            strA = null;
        }
        SharedPreferences.Editor editor2 = cz4.k;
        if (editor2 != null) {
            editor2.putString("nogms_access_token", strA).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public static void c(Activity activity, int i) {
        activity.getClass();
        if (!V.INSTANCE.getG()) {
            lz3 lz3Var = lz3.d;
            SwiftApp.Companion companion = SwiftApp.d;
            if (lz3Var.c(SwiftApp.Companion.c(), mz3.a) == 0) {
                int i2 = GmsSignInActivity.N;
                Intent intentPutExtra = new Intent(activity, (Class<?>) GmsSignInActivity.class).putExtra("EXTRA_REQUEST_CODE", i);
                intentPutExtra.getClass();
                activity.startActivityForResult(intentPutExtra, i);
                return;
            }
        }
        vr6.w$default(vr6.INSTANCE, "GmsUtil", "GMS not found", null, 4, null);
        int i3 = NoGmsSignInActivity.M;
        Intent intentPutExtra2 = new Intent(activity, (Class<?>) NoGmsSignInActivity.class).putExtra("EXTRA_REQUEST_CODE", i);
        intentPutExtra2.getClass();
        activity.startActivityForResult(intentPutExtra2, i);
    }
}
