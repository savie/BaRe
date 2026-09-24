package defpackage;

import android.content.SharedPreferences;
import java.io.IOException;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zu0 {
    public static final zu0 a = new zu0();
    public static final gv7 b = new gv7(new cl(2));
    public static final Object c = new Object();

    public static uj a() {
        return new uj("https://account.box.com/api/oauth2/authorize", "https://api.box.com/oauth2/token", "dfqjenwobgs7mdm0sj7dq3n6cpp8bz3h", "org.swiftapps.swiftbackup.box://oauth", new xj("F4VMpkH2uaGIaof7jI2XklIEUZFigL3z"), null, null, 96);
    }

    public static mv0 b() {
        String strD = d();
        if (strD != null && !nq7.j0(strD)) {
            return new mv0(new dl(2), new el(2), (OkHttpClient) b.getValue());
        }
        l0.e("Box is not connected");
        return null;
    }

    public static sv0 c() throws IOException {
        mv0 mv0VarB = b();
        HttpUrl.Builder builderG = mv0VarB.a("/2.0/users/me").g();
        builderG.d("fields", "id,login,space_amount,space_used");
        Request.Builder builderB = mv0.b(builderG.e());
        builderB.b();
        JSONObject jSONObjectH = mv0.h(mv0VarB, new Request(builderB), null, 6);
        String strOptString = jSONObjectH.optString("id");
        strOptString.getClass();
        if (nq7.j0(strOptString)) {
            strOptString = null;
        }
        if (strOptString == null) {
            y5.m("Box user response did not contain id");
            return null;
        }
        String strOptString2 = jSONObjectH.optString("login");
        strOptString2.getClass();
        if (nq7.j0(strOptString2)) {
            strOptString2 = null;
        }
        sv0 sv0Var = new sv0(strOptString, strOptString2, mv0.l(jSONObjectH, "space_amount"), mv0.l(jSONObjectH, "space_used"));
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putString("box_user_id", strOptString).apply();
        if (strOptString2 == null || nq7.j0(strOptString2)) {
            return sv0Var;
        }
        SharedPreferences.Editor editor2 = cz4.k;
        if (editor2 != null) {
            editor2.putString("box_user_login", strOptString2).apply();
            return sv0Var;
        }
        pe4.F("editor");
        throw null;
    }

    public static String d() {
        String string;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("box_access_token", null);
            if (string == null || nq7.j0(string)) {
                return null;
            }
            return string;
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    public static String e() {
        String string;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("box_refresh_token", null);
            if (string == null || nq7.j0(string)) {
                return null;
            }
            return string;
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    public static boolean f() {
        long j;
        long j2;
        String strE = e();
        if (strE == null || nq7.j0(strE)) {
            return false;
        }
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            j = sharedPreferences.getLong("box_last_refresh_millis", 0L);
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                j2 = sharedPreferences2.getLong("box_expires_millis", 0L);
                if (j <= 0 || j2 <= 0) {
                    return false;
                }
                long j3 = j2 - 60000;
                return System.currentTimeMillis() - j >= (j3 >= 0 ? j3 : 0L);
            } catch (ClassCastException unused) {
                j2 = 0;
            }
        } catch (ClassCastException unused2) {
            j = 0;
        }
    }

    public static void h(zu0 zu0Var, vj vjVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = vjVar.a;
        String str2 = vjVar.c;
        cz4.h("box_access_token", str);
        if (str2 != null && !nq7.j0(str2)) {
            cz4.h("box_refresh_token", str2);
        }
        Long l = vjVar.b;
        if (l != null) {
            long jLongValue = l.longValue() - jCurrentTimeMillis;
            if (jLongValue < 0) {
                jLongValue = 0;
            }
            cz4.g(jLongValue, "box_expires_millis");
        }
        cz4.g(jCurrentTimeMillis, "box_last_refresh_millis");
    }

    public final vj g() throws IOException {
        String strE = e();
        if (strE == null) {
            y5.m("Box refresh token is missing");
            return null;
        }
        uj ujVarA = a();
        SwiftApp.Companion companion = SwiftApp.d;
        vj vjVarC = ujVarA.c(SwiftApp.Companion.c(), strE);
        h(this, vjVarC);
        return vjVarC;
    }
}
