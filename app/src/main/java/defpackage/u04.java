package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.util.Log;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class u04 {
    public static boolean b = false;
    public static boolean c = false;
    public static final /* synthetic */ int e = 0;
    public static final AtomicBoolean a = new AtomicBoolean();
    public static final AtomicBoolean d = new AtomicBoolean();

    public static void a(Context context) throws s04, t04 {
        mz3 mz3Var = mz3.b;
        int iC = mz3Var.c(context, 8400000);
        if (iC != 0) {
            Intent intentA = mz3Var.a(iC, context, JWKParameterNames.RSA_EXPONENT);
            StringBuilder sb = new StringBuilder(String.valueOf(iC).length() + 46);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(iC);
            Log.e("GooglePlayServicesUtil", sb.toString());
            if (intentA != null) {
                throw new t04(intentA, iC);
            }
            throw new s04();
        }
    }

    public static boolean b(Context context) {
        try {
            Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
            while (it.hasNext()) {
                if ("com.google.android.gms".equals(it.next().getAppPackageName())) {
                    return true;
                }
            }
            return context.getPackageManager().getApplicationInfo("com.google.android.gms", 8192).enabled;
        } catch (PackageManager.NameNotFoundException | Exception unused) {
            return false;
        }
    }
}
