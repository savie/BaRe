package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qm implements bt3 {
    public final /* synthetic */ int a;

    @Override // defpackage.bt3
    public final Object invoke() throws IOException {
        Boolean boolValueOf;
        ApplicationInfo applicationInfo;
        int i = this.a;
        be8 be8Var = be8.a;
        boolean zI = false;
        switch (i) {
            case 0:
                return y35.a().l();
            case 1:
                Set<Map.Entry> setEntrySet = ((Map) av.b.getValue()).entrySet();
                int iQ0 = x65.q0(hl1.G0(setEntrySet, 10));
                if (iQ0 < 16) {
                    iQ0 = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
                for (Map.Entry entry : setEntrySet) {
                    linkedHashMap.put((String) entry.getValue(), Integer.valueOf(((Number) entry.getKey()).intValue()));
                }
                return linkedHashMap;
            case 2:
                Object objU = tu0.u("PROCESS_STATE_PERSISTENT");
                objU.getClass();
                int iIntValue = ((Integer) objU).intValue();
                Object objU2 = tu0.u("PROCESS_STATE_PERSISTENT_UI");
                objU2.getClass();
                int iIntValue2 = ((Integer) objU2).intValue();
                Object objU3 = tu0.u("PROCESS_STATE_NONEXISTENT");
                objU3.getClass();
                return new e00(iIntValue, iIntValue2, ((Integer) objU3).intValue());
            case 3:
                tb1 tb1Var = tb1.a;
                dd1 dd1VarL = qb1.l();
                if (dd1VarL != null) {
                    tb1 client = dd1VarL.getClient();
                    zI = client instanceof v52 ? ((v52) client).g.i() : qb1.d();
                }
                return Boolean.valueOf(zI);
            case 4:
                return dd1._init_$lambda$16();
            case 5:
                SwiftApp.Companion companion = SwiftApp.d;
                return new we1(SwiftApp.Companion.c());
            case 6:
                SwiftApp.Companion companion2 = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                String string = contextC.getString(R.string.list_is_empty);
                string.getClass();
                zn4 zn4Var = zn4.a;
                dj7.y(contextC, string);
                return be8Var;
            case 7:
                gv7 gv7Var = y32.a;
                d45 d45Var = d45.b;
                x32 x32Var = new x32(new f45(b45.a().getUid()), (ov7) rb.t().b);
                try {
                    d45.b.getClass();
                    MFirebaseUser mFirebaseUserA = d45.a();
                    boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
                    break;
                } catch (Exception unused) {
                }
                if (pe4.d(boolValueOf, Boolean.TRUE)) {
                    return null;
                }
                return x32Var;
            case 8:
                boolean z = g42.a;
                return g42.a("AQImEc3Z2CblYPFXQWsD9rUCco2urG6dUiBYR5nMECsrlYsCyJZ0bu2pI38JN6/ZRYXRrFH/G2sXnRxTYsz5ReF1BlEoicvTCOnuEqmgwA==");
            case XmlPullParser.COMMENT /* 9 */:
                boolean z2 = g42.a;
                return g42.a("AQJZSCjaAUPchkJggPFOJhiR9oENI1BhssuSCvuq5HXEE792XMTtZ/CzTgkGiKN6HQ5vODmO+ADwWoPtVV0OvYohzR8wZ0j9r30sxXBp2vUHkI+qXq8akCvxhAxTKgNpLw0=");
            case 10:
                boolean z3 = g42.a;
                return g42.a("AQL2kKRVHyAVCLEYYJzY+6Nvn4OlF4vu1TZxfZcoMkYdtmsCsH07ARDZwzhqAtw/06CH1Yy8Vr9g\nSkeCT/uzbu7Sdc/9Mw==");
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new SimpleDateFormat("dd/MMM/yy hh:mm:ss aa", Locale.forLanguageTag("en-IN"));
            case 12:
                try {
                    Method declaredMethod = SQLiteDatabase.class.getDeclaredMethod("getThreadSession", null);
                    declaredMethod.setAccessible(true);
                    return declaredMethod;
                } catch (Throwable unused2) {
                    return null;
                }
            case 13:
                ColorMatrix colorMatrix = new ColorMatrix();
                colorMatrix.setSaturation(0.0f);
                return new ColorMatrixColorFilter(colorMatrix);
            case 14:
                return re3.b().d("credits/v1/Translator");
            case 15:
                return MultipleBackupStrategy.defaultConditionalBackupsStrategy_delegate$lambda$0();
            case Argon2.V10 /* 16 */:
                io4.j("OClient", "clearSavedAccounts", true, new pu(11), 8);
                return be8Var;
            case 17:
                HashSet hashSet = mz6.a;
                return mz6.u("extract");
            case 18:
                g00 g00Var = g00.a;
                SwiftApp.Companion companion3 = SwiftApp.d;
                PackageInfo packageInfoQ = g00.q(0, SwiftApp.Companion.c().getPackageName());
                if (packageInfoQ != null && (applicationInfo = packageInfoQ.applicationInfo) != null) {
                    File file = new File(applicationInfo.sourceDir);
                    String str = "dev";
                    if (!nq7.Z("5.1.0", "dev", true)) {
                        str = "alpha";
                        if (!nq7.Z("5.1.0", "alpha", true)) {
                            str = "beta";
                            if (!nq7.Z("5.1.0", "beta", true)) {
                                str = "rc";
                                if (!nq7.Z("5.1.0", "rc", true)) {
                                    str = null;
                                }
                            }
                        }
                    }
                    if (str == null) {
                        str = "stable";
                    }
                    String str2 = ry5.u;
                    q63 q63Var = new q63(qy5.f(false, null).a, "swift_backup_apks/".concat(str), 2);
                    q63 q63Var2 = new q63(2, q63Var, packageInfoQ.versionName + " (" + jd4.r(packageInfoQ) + ").apk");
                    if (q63Var2.j() && q63Var2.A() == file.length()) {
                        Log.i("SwiftBackupApkSaver", "APK already saved to SwiftBackup folder");
                    } else {
                        cy0.e(q63Var);
                        io4.g(q63Var2);
                        FileInputStream fileInputStream = new FileInputStream(file);
                        OutputStream outputStreamF = q63Var2.F(true);
                        try {
                            try {
                                cy0.j(fileInputStream, outputStreamF, 262144);
                                outputStreamF.close();
                                fileInputStream.close();
                                if (q63Var2.A() == file.length()) {
                                    vr6.i$default(vr6.INSTANCE, "SwiftBackupApkSaver", xs1.i(q63Var2, "Copied Swift Backup APK to "), null, 4, null);
                                }
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    rs9.c(outputStreamF, th);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                rs9.c(fileInputStream, th3);
                                throw th4;
                            }
                        }
                    }
                }
                return be8Var;
            case Argon2.V13 /* 19 */:
                if (mp6.g) {
                    return new q63(tv7.b(1), 1).r(1);
                }
                return null;
            case 20:
                return Long.valueOf(System.currentTimeMillis());
            case 21:
                SwiftApp.Companion companion4 = SwiftApp.d;
                String packageName = SwiftApp.Companion.c().getPackageName();
                boolean z4 = hp0.a;
                packageName.getClass();
                hp0.a(packageName, false);
                eu euVar = eu.allow;
                euVar.getClass();
                mp6 mp6Var = mp6.a;
                boolean z5 = g42.a;
                String string2 = euVar.toString();
                string2.getClass();
                String[] strArr = {String.format(g42.d(), Arrays.copyOf(new Object[]{"set", packageName, "android:run_in_background", string2}, 4))};
                ip6 ip6Var = ip6.SHIZUKU;
                mp6Var.j(true, strArr, ip6Var);
                String string3 = euVar.toString();
                string3.getClass();
                mp6Var.j(true, new String[]{String.format(g42.d(), Arrays.copyOf(new Object[]{"set", packageName, "android:run_any_in_background", string3}, 4))}, ip6Var);
                return be8Var;
            case 22:
                int i2 = WallsDashActivity.W;
                return new hz4();
            default:
                return x65.r0(new pw5(0, "None"), new pw5(1, "PAP"), new pw5(2, "MSCHAP"), new pw5(3, "MSCHAPV2"), new pw5(4, "GTC"), new pw5(5, "SIM"), new pw5(6, "AKA"), new pw5(7, "AKA'"));
        }
    }

    public /* synthetic */ qm(int i) {
        this.a = i;
    }
}
