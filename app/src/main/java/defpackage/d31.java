package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d31 implements ua8 {
    public final om5 a;
    public final ConnectivityManager b;
    public final Context c;
    public final URL d;
    public final ba1 e;
    public final ba1 f;
    public final int g;

    public d31(Context context, ba1 ba1Var, ba1 ba1Var2) {
        kj4 kj4Var = new kj4();
        p90 p90Var = p90.a;
        kj4Var.a(fp0.class, p90Var);
        kj4Var.a(tb0.class, p90Var);
        w90 w90Var = w90.a;
        kj4Var.a(e15.class, w90Var);
        kj4Var.a(zd0.class, w90Var);
        q90 q90Var = q90.a;
        kj4Var.a(w91.class, q90Var);
        kj4Var.a(ub0.class, q90Var);
        o90 o90Var = o90.a;
        kj4Var.a(qb.class, o90Var);
        kj4Var.a(qb0.class, o90Var);
        v90 v90Var = v90.a;
        kj4Var.a(b15.class, v90Var);
        kj4Var.a(yd0.class, v90Var);
        r90 r90Var = r90.a;
        kj4Var.a(pn1.class, r90Var);
        kj4Var.a(vb0.class, r90Var);
        u90 u90Var = u90.a;
        kj4Var.a(h13.class, u90Var);
        kj4Var.a(od0.class, u90Var);
        t90 t90Var = t90.a;
        kj4Var.a(g13.class, t90Var);
        kj4Var.a(nd0.class, t90Var);
        x90 x90Var = x90.a;
        kj4Var.a(nm5.class, x90Var);
        kj4Var.a(be0.class, x90Var);
        s90 s90Var = s90.a;
        kj4Var.a(l03.class, s90Var);
        kj4Var.a(md0.class, s90Var);
        kj4Var.d = true;
        this.a = new om5(kj4Var);
        this.c = context;
        this.b = (ConnectivityManager) context.getSystemService("connectivity");
        this.d = b(oy0.c);
        this.e = ba1Var2;
        this.f = ba1Var;
        this.g = 130000;
    }

    public static URL b(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(xs1.j("Invalid url: ", str), e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:26:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:34:0x0110  */
    public final kd0 a(kd0 kd0Var) {
        int type;
        int subtype;
        HashMap map;
        String simOperator;
        NetworkInfo activeNetworkInfo = this.b.getActiveNetworkInfo();
        jd0 jd0VarC = kd0Var.c();
        int i = Build.VERSION.SDK_INT;
        HashMap map2 = (HashMap) jd0VarC.n;
        if (map2 == null) {
            l0.e("Property \"autoMetadata\" has not been set");
            return null;
        }
        map2.put("sdk-version", String.valueOf(i));
        jd0VarC.a("model", Build.MODEL);
        jd0VarC.a("hardware", Build.HARDWARE);
        jd0VarC.a("device", Build.DEVICE);
        jd0VarC.a("product", Build.PRODUCT);
        jd0VarC.a("os-uild", Build.ID);
        jd0VarC.a("manufacturer", Build.MANUFACTURER);
        jd0VarC.a("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        long offset = TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT;
        HashMap map3 = (HashMap) jd0VarC.n;
        if (map3 == null) {
            l0.e("Property \"autoMetadata\" has not been set");
            return null;
        }
        map3.put("tz-offset", String.valueOf(offset));
        int i2 = -1;
        if (activeNetworkInfo == null) {
            SparseArray sparseArray = mm5.a;
            type = -1;
        } else {
            type = activeNetworkInfo.getType();
        }
        HashMap map4 = (HashMap) jd0VarC.n;
        if (map4 == null) {
            l0.e("Property \"autoMetadata\" has not been set");
            return null;
        }
        map4.put("net-type", String.valueOf(type));
        if (activeNetworkInfo != null) {
            subtype = activeNetworkInfo.getSubtype();
            if (subtype == -1) {
                SparseArray sparseArray2 = lm5.a;
                subtype = 100;
            } else if (((lm5) lm5.a.get(subtype)) == null) {
            }
            map = (HashMap) jd0VarC.n;
            if (map != null) {
                l0.e("Property \"autoMetadata\" has not been set");
                return null;
            }
            map.put("mobile-subtype", String.valueOf(subtype));
            jd0VarC.a("country", Locale.getDefault().getCountry());
            jd0VarC.a("locale", Locale.getDefault().getLanguage());
            Context context = this.c;
            simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
            if (simOperator == null) {
                simOperator = "";
            }
            jd0VarC.a("mcc_mnc", simOperator);
            try {
                i2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e) {
                ly8.p(e, "CctTransportBackend", "Unable to find version code for package");
            }
            jd0VarC.a("application_build", Integer.toString(i2));
            return jd0VarC.b();
        }
        SparseArray sparseArray3 = lm5.a;
        subtype = 0;
        map = (HashMap) jd0VarC.n;
        if (map != null) {
            l0.e("Property \"autoMetadata\" has not been set");
            return null;
        }
        map.put("mobile-subtype", String.valueOf(subtype));
        jd0VarC.a("country", Locale.getDefault().getCountry());
        jd0VarC.a("locale", Locale.getDefault().getLanguage());
        Context context2 = this.c;
        simOperator = ((TelephonyManager) context2.getSystemService("phone")).getSimOperator();
        if (simOperator == null) {
            simOperator = "";
        }
        jd0VarC.a("mcc_mnc", simOperator);
        i2 = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode;
        jd0VarC.a("application_build", Integer.toString(i2));
        return jd0VarC.b();
    }
}
