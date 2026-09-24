package defpackage;

import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.a;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class qb1 {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a() {
        tb1 tb1VarC = c();
        if (tb1VarC instanceof nq5) {
            jq5 jq5Var = nq5.i;
            jq5.a();
        }
        if (tb1VarC instanceof v52) {
            ((v52) tb1VarC).g.b();
        }
        o(false);
        String str = null;
        Object[] objArr = 0;
        s(null);
        q(null);
        p("");
        a aVar = CloudCredentials.Companion;
        dd1 dd1VarF = f();
        aVar.getClass();
        dd1VarF.getClass();
        String str2 = "cloud_creds_pswd_" + dd1VarF;
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putString(str2, null).apply();
        String str3 = "cloud_creds_pvt_key_" + dd1VarF;
        SharedPreferences.Editor editor2 = cz4.k;
        if (editor2 == null) {
            pe4.F("editor");
            throw null;
        }
        editor2.putString(str3, null).apply();
        ua1 ua1Var = ua1.g;
        ua1Var.b = false;
        ua1Var.c.clear();
        sf1 sf1Var = sf1.g;
        sf1Var.b = false;
        sf1Var.c.clear();
        r(null);
        if (tb1VarC instanceof x95) {
            x95.r(new MegaClient$Credentials(x95.p().getEmail(), str, 2, objArr == true ? 1 : 0));
            x95.i.getClass();
            gt7 gt7Var = gt7.a;
            gh ghVar = gt7.h;
            if (ghVar != null) {
                Arrays.fill((byte[]) ghVar.b, (byte) 0);
            }
            gt7.h = null;
            gt7.i = null;
            x95 x95Var = x95.g;
            x95.s(null);
            x95.s(null);
        }
    }

    public static String b(String str) {
        str.getClass();
        return uq7.T(uq7.T(uq7.T(str, TokenAuthenticationScheme.SCHEME_DELIMITER, "%20"), "(", "%28"), ")", "%29");
    }

    public static tb1 c() {
        Boolean boolValueOf = null;
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            if (mFirebaseUserA != null) {
                boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
            }
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            return kv2.i;
        }
        if (tb1.a == null) {
            synchronized (qb1.class) {
                if (tb1.a == null) {
                    tb1.a = f().getClient();
                }
            }
        }
        tb1 tb1Var = tb1.a;
        tb1Var.getClass();
        return tb1Var;
    }

    public static boolean d() {
        String strJ = eq3.j(f().getConstant(), "_cloud_authorized");
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean(strJ, false);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public static String e() {
        String strJ = eq3.j(f().getConstant(), "_cloud_backup_tag");
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString(strJ, null);
            if (string == null || string.length() == 0 || nq7.j0(string)) {
                string = Build.MODEL;
            }
            string.getClass();
            return n(string);
        } catch (ClassCastException unused) {
        }
    }

    public static dd1 f() {
        dd1 dd1VarL = l();
        return dd1VarL == null ? dd1.GoogleDrive : dd1VarL;
    }

    public static String g() {
        tb1 tb1VarC = c();
        String strDisplayAccountIdValue = null;
        if ((tb1VarC instanceof v52) && (((v52) tb1VarC).o() instanceof mj1)) {
            a aVar = CloudCredentials.Companion;
            dd1 dd1VarF = f();
            aVar.getClass();
            CloudCredentials cloudCredentialsB = a.b(dd1VarF);
            if (cloudCredentialsB != null) {
                strDisplayAccountIdValue = cloudCredentialsB.displayAccountIdValue();
            }
        }
        return strDisplayAccountIdValue == null ? i("getDisplayAccountId") : strDisplayAccountIdValue;
    }

    public static String h(dd1 dd1Var, String str) {
        String constant;
        String firebaseNodePrefix = dd1Var.getFirebaseNodePrefix();
        if (firebaseNodePrefix == null || firebaseNodePrefix.length() == 0) {
            constant = (!dd1Var.isWebDav() || dd1Var.isEmailPasswordBasedWebDav()) ? dd1Var.getConstant() : "webdav";
        } else {
            constant = dd1Var.getFirebaseNodePrefix();
        }
        return u48.n(constant, " (", str, ")");
    }

    public static String i(String str) {
        String email;
        String strJ = eq3.j(f().getConstant(), "_cloud_email_address");
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            email = sharedPreferences.getString(strJ, null);
            if (email == null) {
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                if (mFirebaseUserA == null) {
                    throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
                }
                email = mFirebaseUserA.getEmail();
                if (email == null) {
                    c6.f("Required value was null.");
                    return null;
                }
            }
            if (email.length() > 0 && !nq7.j0(email)) {
                return h(f(), email);
            }
            f6.g(dj7.k(str, ": Invalid cloud email address = ", email));
            return null;
        } catch (ClassCastException unused) {
            email = null;
        }
    }

    public static String j() {
        String strJ = eq3.j(f().getConstant(), "_cloud_main_folder_id");
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getString(strJ, null);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public static Response k(String str, t15 t15Var) {
        str.getClass();
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.a(30L, timeUnit);
        builder.x = _UtilJvmKt.b(30L, timeUnit);
        builder.b(nc8.I(Protocol.HTTP_1_1));
        OkHttpClient okHttpClient = new OkHttpClient(builder);
        Request.Builder builder2 = new Request.Builder();
        builder2.d(str);
        if (t15Var != null) {
            long j = t15Var.a;
            long j2 = t15Var.b;
            StringBuilder sbT = dj7.t("bytes=", "-", j);
            sbT.append(j2);
            builder2.c.a("Range", sbT.toString());
        }
        Response responseG = new RealCall(okHttpClient, new Request(builder2)).g();
        if (responseG.H) {
            return responseG;
        }
        throw new RuntimeException("Error while getting response from url: " + str + ". Response: " + responseG);
    }

    public static dd1 l() {
        String string;
        Object obj = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("connected_cloud_type", null);
            List entries = dd1.getEntries();
            ArrayList arrayList = new ArrayList();
            z3 z3Var = (z3) entries;
            z3Var.getClass();
            w3 w3Var = new w3(z3Var);
            while (w3Var.hasNext()) {
                Object next = w3Var.next();
                if (((dd1) next).getSupportsCurrentAndroidSdk()) {
                    arrayList.add(next);
                }
            }
            for (Object obj2 : arrayList) {
                if (pe4.d(((dd1) obj2).getConstant(), string)) {
                    obj = obj2;
                    break;
                }
            }
            return (dd1) obj;
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    public static boolean m() {
        return pe4.d(io4.j("CloudClient", null, false, new qm(3), 14), Boolean.TRUE);
    }

    public static String n(String str) {
        Pattern patternCompile = Pattern.compile("[.#$\\[\\]]");
        patternCompile.getClass();
        String strReplaceAll = patternCompile.matcher(str).replaceAll("");
        strReplaceAll.getClass();
        return uq7.T(strReplaceAll, "/", "");
    }

    public static void o(boolean z) {
        String strJ = eq3.j(f().getConstant(), "_cloud_authorized");
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putBoolean(strJ, z).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public static void p(String str) {
        str.getClass();
        if (str.length() == 0) {
            str = Build.MODEL;
        }
        String strJ = eq3.j(f().getConstant(), "_cloud_backup_tag");
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString(strJ, str).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public static void q(String str) {
        String strJ = eq3.j(f().getConstant(), "_cloud_email_address");
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString(strJ, str).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public static void r(dd1 dd1Var) {
        Log.d("setCurrentCloudType", String.valueOf(dd1Var));
        String constant = dd1Var != null ? dd1Var.getConstant() : null;
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putString("connected_cloud_type", constant).apply();
        ha7.a.c(AppSettings.copy$default(AppSettings.Companion.withSavedSettings(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, dd1Var != null ? dd1Var.getConstant() : null, null, null, null, null, null, null, null, null, -33554433, 3, null));
        tb1.a = null;
    }

    public static void s(String str) {
        String strJ = eq3.j(f().getConstant(), "_cloud_main_folder_id");
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString(strJ, str).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public static void t(String str) {
        str.getClass();
        p(str);
        ua1 ua1Var = ua1.g;
        ua1Var.b = false;
        ua1Var.c.clear();
        sf1 sf1Var = sf1.g;
        sf1Var.b = false;
        sf1Var.c.clear();
        ny2.b().e(new pb1());
    }
}
