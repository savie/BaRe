package defpackage;

import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ig9 implements e59 {
    public static final ig9 c = new ig9("TINK", 0);
    public static final ig9 d = new ig9("CRUNCHY", 0);
    public static final ig9 e = new ig9("NO_PREFIX", 0);
    public final /* synthetic */ int a;
    public final String b;

    public ig9(String str, int i) {
        this.a = i;
        switch (i) {
            case 2:
                ly8.e(str);
                this.b = str;
                break;
            default:
                this.b = str;
                break;
        }
    }

    public static void a(e41 e41Var, sa7 sa7Var) {
        String str = sa7Var.a;
        if (str != null) {
            e41Var.c("X-CRASHLYTICS-GOOGLE-APP-ID", str);
        }
        e41Var.c("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        e41Var.c("X-CRASHLYTICS-API-CLIENT-VERSION", "20.0.6");
        e41Var.c("Accept", "application/json");
        e41Var.c("X-CRASHLYTICS-DEVICE-MODEL", sa7Var.b);
        String str2 = sa7Var.c;
        if (str2 != null) {
            e41Var.c("X-CRASHLYTICS-OS-BUILD-VERSION", str2);
        }
        String str3 = sa7Var.d;
        if (str3 != null) {
            e41Var.c("X-CRASHLYTICS-OS-DISPLAY-VERSION", str3);
        }
        String str4 = sa7Var.e.c().a;
        if (str4 != null) {
            e41Var.c("X-CRASHLYTICS-INSTALLATION-ID", str4);
        }
    }

    public static HashMap b(sa7 sa7Var) {
        HashMap map = new HashMap();
        map.put("build_version", sa7Var.h);
        map.put("display_version", sa7Var.g);
        map.put("source", Integer.toString(sa7Var.i));
        String str = sa7Var.f;
        if (!TextUtils.isEmpty(str)) {
            map.put("instance", str);
        }
        return map;
    }

    public JSONObject c(e74 e74Var) {
        int i = e74Var.b;
        nh4 nh4Var = nh4.c;
        nh4Var.o("Settings response code was: " + i);
        String str = this.b;
        if (i != 200 && i != 201 && i != 202 && i != 203) {
            String strK = u48.k(i, "Settings request failed; (status: ", ") from ", str);
            if (nh4Var.d(6)) {
                Log.e("FirebaseCrashlytics", strK, null);
            }
            return null;
        }
        String str2 = e74Var.c;
        try {
            return new JSONObject(str2);
        } catch (Exception e2) {
            nh4Var.q("Failed to parse settings JSON from ".concat(str), e2);
            nh4Var.q("Settings response " + str2, null);
            return null;
        }
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return this.b;
            default:
                return super.toString();
        }
    }

    @Override // defpackage.e59
    public String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("grantType", "refresh_token");
        jSONObject.put("refreshToken", this.b);
        return jSONObject.toString();
    }

    public ig9(String str, ma2 ma2Var) {
        this.a = 1;
        this.b = str;
    }
}
