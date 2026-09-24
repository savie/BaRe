package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.tasks.Tasks;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k94 {
    public static final Pattern g = Pattern.compile("[^\\p{Alnum}]");
    public static final String h = Pattern.quote("/");
    public final sg9 a;
    public final Context b;
    public final String c;
    public final qg3 d;
    public final ka2 e;
    public td0 f;

    public k94(Context context, String str, qg3 qg3Var, ka2 ka2Var) {
        if (str == null) {
            c6.f("appIdentifier must not be null");
            throw null;
        }
        this.b = context;
        this.c = str;
        this.d = qg3Var;
        this.e = ka2Var;
        this.a = new sg9();
    }

    public final synchronized String a(String str, SharedPreferences sharedPreferences) {
        String lowerCase;
        lowerCase = g.matcher(UUID.randomUUID().toString()).replaceAll("").toLowerCase(Locale.US);
        String str2 = "Created new Crashlytics installation ID: " + lowerCase + " for FID: " + str;
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", str2, null);
        }
        sharedPreferences.edit().putString("crashlytics.installation.id", lowerCase).putString("firebase.installation.id", str).apply();
        return lowerCase;
    }

    public final mg3 b(boolean z) {
        String str;
        String str2 = null;
        if (!((Boolean) new q02(0, s02.d, r02.class, "isNotMainThread", "isNotMainThread()Z", 0, 0).invoke()).booleanValue()) {
            String str3 = "Must not be called on a main thread, was called on " + Thread.currentThread().getName() + '.';
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str3, null);
            }
        }
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        qg3 qg3Var = this.d;
        if (z) {
            try {
                str = ((vd0) Tasks.await(((pg3) qg3Var).d(), 10000L, timeUnit)).a;
            } catch (Exception e) {
                Log.w("FirebaseCrashlytics", "Error getting Firebase authentication token.", e);
                str = null;
            }
        } else {
            str = null;
        }
        try {
            str2 = (String) Tasks.await(((pg3) qg3Var).c(), 10000L, timeUnit);
        } catch (Exception e2) {
            Log.w("FirebaseCrashlytics", "Error getting Firebase installation id.", e2);
        }
        return new mg3(str2, str);
    }

    public final synchronized td0 c() {
        String str;
        td0 td0Var = this.f;
        if (td0Var != null && (td0Var.b != null || !this.e.b())) {
            return this.f;
        }
        nh4 nh4Var = nh4.c;
        nh4Var.o("Determining Crashlytics installation ID...");
        SharedPreferences sharedPreferences = this.b.getSharedPreferences("com.google.firebase.crashlytics", 0);
        String string = sharedPreferences.getString("firebase.installation.id", null);
        nh4Var.o("Cached Firebase Installation ID: " + string);
        if (this.e.b()) {
            mg3 mg3VarB = b(false);
            nh4Var.o("Fetched Firebase Installation ID: " + mg3VarB.a);
            if (mg3VarB.a == null) {
                if (string == null) {
                    str = "SYN_" + UUID.randomUUID().toString();
                } else {
                    str = string;
                }
                mg3VarB = new mg3(str, null);
            }
            if (Objects.equals(mg3VarB.a, string)) {
                this.f = new td0(sharedPreferences.getString("crashlytics.installation.id", null), mg3VarB.a, mg3VarB.b);
            } else {
                this.f = new td0(a(mg3VarB.a, sharedPreferences), mg3VarB.a, mg3VarB.b);
            }
        } else if (string == null || !string.startsWith("SYN_")) {
            this.f = new td0(a("SYN_" + UUID.randomUUID().toString(), sharedPreferences), null, null);
        } else {
            this.f = new td0(sharedPreferences.getString("crashlytics.installation.id", null), null, null);
        }
        nh4Var.o("Install IDs: " + this.f);
        return this.f;
    }

    public final String d() {
        String str;
        sg9 sg9Var = this.a;
        Context context = this.b;
        synchronized (sg9Var) {
            try {
                if (sg9Var.b == null) {
                    String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                    if (installerPackageName == null) {
                        installerPackageName = "";
                    }
                    sg9Var.b = installerPackageName;
                }
                str = "".equals(sg9Var.b) ? null : sg9Var.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
