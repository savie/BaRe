package org.swiftapps.swiftbackup.common;

import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Looper;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.text.style.BulletSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.jcraft.jsch.SftpATTRS;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import defpackage.a14;
import defpackage.ai8;
import defpackage.b67;
import defpackage.bk;
import defpackage.bt3;
import defpackage.c6;
import defpackage.cz4;
import defpackage.d45;
import defpackage.d6;
import defpackage.dj7;
import defpackage.dz5;
import defpackage.el1;
import defpackage.eq3;
import defpackage.f13;
import defpackage.f28;
import defpackage.f51;
import defpackage.f6;
import defpackage.fl1;
import defpackage.fz5;
import defpackage.g00;
import defpackage.g42;
import defpackage.g53;
import defpackage.g84;
import defpackage.h28;
import defpackage.hv1;
import defpackage.il0;
import defpackage.io1;
import defpackage.io4;
import defpackage.iq1;
import defpackage.ix0;
import defpackage.k28;
import defpackage.l30;
import defpackage.lz3;
import defpackage.mp6;
import defpackage.mt3;
import defpackage.mz3;
import defpackage.nc3;
import defpackage.nq7;
import defpackage.od2;
import defpackage.pe4;
import defpackage.pw5;
import defpackage.q63;
import defpackage.qb1;
import defpackage.qe7;
import defpackage.qm;
import defpackage.qs1;
import defpackage.qy5;
import defpackage.ra;
import defpackage.rc1;
import defpackage.re3;
import defpackage.rm;
import defpackage.rs1;
import defpackage.rs9;
import defpackage.ry5;
import defpackage.s35;
import defpackage.s43;
import defpackage.sy;
import defpackage.sz8;
import defpackage.t33;
import defpackage.tb1;
import defpackage.tu0;
import defpackage.u33;
import defpackage.uq1;
import defpackage.uq7;
import defpackage.us1;
import defpackage.vr6;
import defpackage.vs7;
import defpackage.x50;
import defpackage.x65;
import defpackage.xs1;
import defpackage.xx3;
import defpackage.yc9;
import defpackage.ys;
import defpackage.zm;
import defpackage.zm5;
import defpackage.zn4;
import defpackage.zn7;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Const {
    public static final Const a = new Const();
    public static boolean b = false;
    private static final boolean c = false;

    public static void A(Context context) {
        context.getClass();
        try {
            context.startActivity(new Intent("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"));
        } catch (ActivityNotFoundException e) {
            vr6.e$default(vr6.INSTANCE, "Const", xs1.j("openBatteryOptSettingsScreen: ", e.getMessage()), null, 4, null);
            String string = context.getString(R.string.not_available);
            string.getClass();
            zn4 zn4Var = zn4.a;
            dj7.y(context, string);
        }
    }

    public static boolean B(Context context, String str) {
        context.getClass();
        str.getClass();
        try {
            ix0 ix0VarE = zm5.e(context);
            Uri uri = Uri.parse(str);
            Intent intent = (Intent) ix0VarE.b;
            intent.setData(uri);
            context.startActivity(intent, (Bundle) ix0VarE.c);
            return true;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "Const", String.valueOf(e.getMessage()), null, 4, null);
            return ai8.k(context, str);
        }
    }

    public static void C(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        try {
            SwiftApp.Companion companion = SwiftApp.d;
            SwiftApp.Companion.c().registerReceiver(broadcastReceiver, intentFilter);
        } catch (Exception e) {
            Log.e("Const", "registerReceiver: ", e);
        }
    }

    public static void D(zn7 zn7Var) throws IOException {
        zn7Var.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return;
        }
        String str = ry5.u;
        String strD = qy5.d(zn7Var);
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "Const", "File_R/W: Checking r/w access at ".concat(strD), null, 4, null);
        q63 q63Var = new q63(strD, 2);
        if (!q63Var.j() && !q63.E(q63Var)) {
            g84.f(xs1.i(q63Var, "Unable to create base folder at "));
            return;
        }
        q63 q63Var2 = new q63(2, q63Var, "test_rw");
        if (q63Var2.j() && !q63Var2.f()) {
            g84.f(xs1.i(q63Var2, "Unable to delete already existing file "));
            return;
        }
        if (!q63Var2.n().getFile().createNewFile()) {
            g84.f(xs1.i(q63Var2, "Unable to create file "));
            return;
        }
        q63.K(q63Var2, "swiftbackup_rw_check");
        if (!q63.H(q63Var2).equals("swiftbackup_rw_check")) {
            g84.f(xs1.i(q63Var2, "Unable to read file "));
            return;
        }
        if (!q63Var2.f()) {
            g84.f(xs1.i(q63Var2, "Unable to delete file "));
            return;
        }
        if (q63.e && zn7Var.b && zn7Var.m() && !zn7Var.g()) {
            f6.h(zn7Var, ")", "No SAF access on removable storage (");
        } else {
            vr6.i$default(vr6Var, "Const", "File_R/W File read/write checks passed", null, 4, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.util.ArrayList] */
    public static void E(String str) {
        ?? X0;
        vr6.i$default(vr6.INSTANCE, "Const", "restartApp called with reason = ".concat(str), null, 4, null);
        try {
            if (b67.c()) {
                SwiftApp.Companion companion = SwiftApp.d;
                ActivityManager activityManager = (ActivityManager) SwiftApp.Companion.c().getSystemService(ActivityManager.class);
                if (activityManager != null) {
                    byte[] bytes = str.getBytes(f51.a);
                    bytes.getClass();
                    if (128 < bytes.length) {
                        X0 = new ArrayList(128);
                        int i = 0;
                        for (byte b2 : bytes) {
                            X0.add(Byte.valueOf(b2));
                            i++;
                            if (i == 128) {
                                break;
                            }
                        }
                    } else {
                        X0 = x50.x0(bytes);
                    }
                    activityManager.setProcessStateSummary(el1.s1(X0));
                }
            }
            g00 g00Var = g00.a;
            PackageManager packageManagerR = g00.r();
            SwiftApp.Companion companion2 = SwiftApp.d;
            Intent launchIntentForPackage = packageManagerR.getLaunchIntentForPackage(SwiftApp.Companion.c().getPackageName());
            launchIntentForPackage.getClass();
            SwiftApp.Companion.c().startActivity(Intent.makeRestartActivityTask(launchIntentForPackage.getComponent()));
            System.exit(0);
            throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "Const", io4.b(e), null, 4, null);
        }
    }

    public static void F(il0 il0Var) {
        il0Var.getClass();
        String string = il0Var.getString(R.string.storage_change_restarting);
        string.getClass();
        G(il0Var, string, "Storage changed");
    }

    public static void G(il0 il0Var, String str, String str2) {
        il0Var.getClass();
        if (il0Var.isFinishing()) {
            return;
        }
        il0Var.G().i(str);
        zn4 zn4Var = zn4.a;
        zn4.f(2000L, new rm(4, il0Var, str2));
    }

    public static void H(SwipeRefreshLayout swipeRefreshLayout, boolean z) {
        swipeRefreshLayout.getClass();
        swipeRefreshLayout.setProgressBackgroundColorSchemeColor((z ? vs7.SURFACE_3 : vs7.SURFACE_0).a(swipeRefreshLayout.getContext()));
        Context context = swipeRefreshLayout.getContext();
        context.getClass();
        swipeRefreshLayout.setColorSchemeColors(sz8.x(context));
        swipeRefreshLayout.setDistanceToTriggerSync((int) (256.0f * swipeRefreshLayout.getResources().getDisplayMetrics().density));
    }

    public static void I(zm zmVar, String str, String str2, bt3 bt3Var) {
        zmVar.getClass();
        str.getClass();
        String string = zmVar.getString(R.string.sure_to_proceed);
        string.getClass();
        if (!TextUtils.isEmpty(str2)) {
            str2.getClass();
            string = string + "\n\n" + str2;
        }
        s35 s35Var = new s35(zmVar, R.style.M3AlertDialogTheme, new hv1(zmVar, R.style.M3AlertDialogTheme), null);
        ra raVar = (ra) s35Var.b;
        raVar.d = str;
        raVar.f = string;
        s35Var.s(R.string.yes, new sy(bt3Var, 2));
        s35Var.q(R.string.no, new ys(1));
        s35Var.m();
    }

    public static void J(io1 io1Var, int i, bt3 bt3Var) {
        io1Var.getClass();
        K(io1Var, i, bt3Var, null);
    }

    public static void K(io1 io1Var, int i, bt3 bt3Var, bk bkVar) {
        io1Var.getClass();
        s35 s35Var = new s35(io1Var, R.style.M3AlertDialogTheme, new hv1(io1Var, R.style.M3AlertDialogTheme), null);
        s35Var.v(i);
        s35Var.n(R.string.sure_to_proceed);
        int i2 = 1;
        s35Var.s(R.string.yes, new iq1(bt3Var, i2));
        s35Var.q(R.string.no, new uq1(bkVar, i2));
        s35Var.m();
    }

    public static void L() {
        zn4 zn4Var = zn4.a;
        zn4.e(new qm(6));
    }

    public static void M(il0 il0Var) {
        Boolean boolValueOf;
        il0Var.getClass();
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            new a14(il0Var, c, true, new rc1(1)).G(il0Var, null);
        }
    }

    public static void N(il0 il0Var) {
        il0Var.getClass();
        String string = il0Var.getString(R.string.root_access_or_shizuku_needed);
        string.getClass();
        s35 s35Var = new s35(il0Var, R.style.M3AlertDialogTheme, new hv1(il0Var, R.style.M3AlertDialogTheme), null);
        ra raVar = (ra) s35Var.b;
        raVar.d = string;
        raVar.f = il0Var.getString(R.string.feature_requires_root_access_or_shizuku_message);
        s35Var.t(il0Var.getString(R.string.ok), null);
        sy syVar = new sy(il0Var, 3);
        raVar.k = "Shizuku";
        raVar.l = syVar;
        s35Var.m();
    }

    public static void O() {
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        String string = contextC.getString(R.string.root_access_or_shizuku_needed);
        string.getClass();
        zn4 zn4Var = zn4.a;
        dj7.y(contextC, string);
    }

    public static void P() {
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        String string = contextC.getString(R.string.unknown_error_occured);
        string.getClass();
        zn4 zn4Var = zn4.a;
        dj7.y(contextC, string);
    }

    public static void R() {
        try {
            Thread.sleep(5000L);
        } catch (Exception unused) {
        }
    }

    public static void S(BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver != null) {
            try {
                SwiftApp.Companion companion = SwiftApp.d;
                SwiftApp.Companion.c().unregisterReceiver(broadcastReceiver);
            } catch (Exception e) {
                Log.e("Const", "unregisterReceiver: ", e);
            }
        }
    }

    public static void T() {
        SwiftApp.Companion companion = SwiftApp.d;
        Vibrator vibrator = (Vibrator) SwiftApp.Companion.c().getSystemService(Vibrator.class);
        if (Build.VERSION.SDK_INT >= 29) {
            if (vibrator != null) {
                vibrator.vibrate(VibrationEffect.createPredefined(5));
            }
        } else if (vibrator != null) {
            vibrator.vibrate(100L);
        }
    }

    public static void U(String str) {
        SwiftApp.Companion companion = SwiftApp.d;
        File externalFilesDir = SwiftApp.Companion.c().getExternalFilesDir(null);
        File fileU = externalFilesDir != null ? nc3.U(externalFilesDir, "error.txt") : null;
        String str2 = ry5.u;
        for (File file : (ArrayList) x50.p0(new File[]{fileU, new File(new q63(Environment.getExternalStorageDirectory(), "SwiftBackup", 2).v(), "error.txt")})) {
            try {
                f13.b(file);
                Charset charset = f51.a;
                file.getClass();
                charset.getClass();
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    nc3.X(fileOutputStream, str, charset);
                    fileOutputStream.close();
                    vr6.i$default(vr6.INSTANCE, "Const", "Wrote error stacktrace at " + file, null, 4, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static boolean a() {
        if (z()) {
            return true;
        }
        try {
            Thread.sleep(10000L);
        } catch (Exception unused) {
        }
        if (z()) {
            return true;
        }
        return c;
    }

    public static /* synthetic */ boolean b(zn7 zn7Var, int i) {
        if ((i & 1) != 0) {
            zn7Var = zn7.q.d();
        }
        return a.checkFileReadWriteAccess(zn7Var, true, c);
    }

    public static final boolean c(String str, String str2, String str3) {
        boolean z;
        str.getClass();
        str2.getClass();
        str3.getClass();
        List<String> listM0 = nq7.m0(str);
        if (listM0.isEmpty()) {
            z = true;
        } else {
            for (String str4 : listM0) {
                z = c;
                if (!nq7.Z(str4, str2, c) || !nq7.Z(str4, str3, c)) {
                }
            }
            z = true;
        }
        return !z;
    }

    public static final boolean cn(PackageInfo packageInfo, String[] strArr) {
        File[] fileArrListFiles;
        boolean z;
        Boolean boolValueOf;
        strArr.getClass();
        if (packageInfo != null) {
            try {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                if (applicationInfo != null && (fileArrListFiles = new File(applicationInfo.nativeLibraryDir).listFiles()) != null) {
                    int length = fileArrListFiles.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            z = true;
                            break;
                        }
                        if (x50.e0(strArr, fileArrListFiles[i].getName())) {
                            i++;
                        }
                    }
                    boolValueOf = Boolean.valueOf(z);
                }
                z = false;
                boolValueOf = Boolean.valueOf(z);
            } catch (Exception unused) {
                boolValueOf = null;
            }
        } else {
            z = false;
            boolValueOf = Boolean.valueOf(z);
        }
        return boolValueOf != null ? boolValueOf.booleanValue() : c;
    }

    public static boolean d(zm zmVar) {
        zmVar.getClass();
        boolean zI = ai8.i(zmVar);
        if (!zI) {
            s35 s35Var = new s35(zmVar, R.style.M3AlertDialogTheme, new hv1(zmVar, R.style.M3AlertDialogTheme), null);
            s35Var.v(R.string.no_internet_connection);
            s35Var.n(R.string.no_internet_connection_summary);
            s35Var.s(R.string.ok, null);
            s35Var.m();
        }
        return zI;
    }

    public static void f(String str, String str2, mt3 mt3Var) {
        str2.getClass();
        if (str == null || str.length() == 0) {
            vr6.e$default(vr6.INSTANCE, "Const", xs1.j("Invalid text: ", str), null, 4, null);
            mt3Var.invoke(Boolean.FALSE);
        }
        SwiftApp.Companion companion = SwiftApp.d;
        Object systemService = SwiftApp.Companion.c().getSystemService("clipboard");
        systemService.getClass();
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(str2, str));
        T();
        mt3Var.invoke(Boolean.TRUE);
    }

    public static void g(String str, boolean z) {
        if (z) {
            vr6.i$default(vr6.INSTANCE, "Const", "exit called with reason=".concat(str), null, 4, null);
        }
        if (b67.c() && str.length() > 0) {
            SwiftApp.Companion companion = SwiftApp.d;
            ActivityManager activityManager = (ActivityManager) SwiftApp.Companion.c().getSystemService(ActivityManager.class);
            if (activityManager != null) {
                try {
                    byte[] bytes = str.getBytes(f51.a);
                    bytes.getClass();
                    activityManager.setProcessStateSummary(bytes);
                } catch (Exception e) {
                    String message = e.getMessage();
                    if (message != null && nq7.Z(message, "too large", c)) {
                        int length = str.length() - 10;
                        if (length < 0) {
                            length = 0;
                        }
                        g(nq7.G0(length, str), c);
                        throw null;
                    }
                }
            }
        }
        throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
    }

    public static String h(long j) {
        String str = DateFormat.getDateInstance().format(new Date(j));
        str.getClass();
        return str;
    }

    public static String i(long j) {
        t33 t33Var = u33.c;
        t33Var.getClass();
        g53 g53Var = ((u33) t33Var.a(3, Locale.getDefault(), TimeZone.getDefault())).a;
        Calendar calendar = Calendar.getInstance(g53Var.b, g53Var.c);
        calendar.setTimeInMillis(j);
        StringBuilder sb = new StringBuilder(g53Var.e);
        for (s43 s43Var : g53Var.d) {
            s43Var.a(sb, calendar);
        }
        return sb.toString();
    }

    public static AlphaAnimation j(int i) {
        AlphaAnimation alphaAnimation = new AlphaAnimation((i & 1) != 0 ? 0.1f : 0.6f, 1.0f);
        alphaAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
        alphaAnimation.setDuration(1000L);
        alphaAnimation.setRepeatCount(1);
        return alphaAnimation;
    }

    public static int k(Context context) {
        if (context instanceof k28 ? ((k28) context).v() : io4.e(context)) {
            h28.Companion.getClass();
            if (f28.e()) {
                return context.getColor(sz8.y(context, R.attr.toolbarColor));
            }
        }
        return vs7.SURFACE_2.a(context);
    }

    public static String l() {
        return eq3.k("Running", ((Boolean) SwiftApp.f.getValue()).booleanValue() ? TokenAuthenticationScheme.SCHEME_DELIMITER : "  ", "org.swiftapps.swiftbackup v5.1.0 (620)");
    }

    public static long m(long j, long j2) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        if (jCurrentTimeMillis >= j2) {
            return 0L;
        }
        return j2 - jCurrentTimeMillis;
    }

    public static String n() {
        Map mapO = o();
        ArrayList arrayList = new ArrayList(mapO.size());
        for (Map.Entry entry : mapO.entrySet()) {
            arrayList.add(entry.getKey() + ": " + entry.getValue());
        }
        return el1.Y0(arrayList, "\n", null, null, null, 62);
    }

    public static Map o() {
        String str;
        int i;
        String string;
        Boolean boolValueOf;
        pw5 pw5Var = new pw5("Build", Build.FINGERPRINT);
        pw5 pw5Var2 = new pw5("Model", dj7.k(Build.MANUFACTURER, "/", Build.MODEL));
        String str2 = Build.VERSION.RELEASE;
        if (!b67.c()) {
            ArrayList arrayList = new ArrayList();
            for (Class<Build.VERSION_CODES> superclass = Build.VERSION_CODES.class; superclass != null; superclass = superclass.getSuperclass()) {
                Collections.addAll(arrayList, superclass.getDeclaredFields());
            }
            Field[] fieldArr = (Field[]) arrayList.toArray(od2.a);
            fieldArr.getClass();
            int length = fieldArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    str = "unknown";
                    break;
                }
                Field field = fieldArr[i2];
                String name = field.getName();
                try {
                    i = field.getInt(new Object());
                } catch (Exception e) {
                    e.printStackTrace();
                    i = -1;
                }
                if (i == Build.VERSION.SDK_INT) {
                    name.getClass();
                    str = name;
                    break;
                }
                i2++;
            }
        } else {
            str = Build.VERSION.RELEASE_OR_CODENAME;
            str.getClass();
        }
        String strJ = fz5.j(Build.VERSION.SDK_INT, "SDK ");
        int i3 = Build.VERSION.PREVIEW_SDK_INT;
        Integer numValueOf = Integer.valueOf(i3);
        if (i3 <= 0) {
            numValueOf = null;
        }
        String strJ2 = numValueOf != null ? fz5.j(numValueOf.intValue(), "Preview SDK ") : null;
        lz3 lz3Var = lz3.d;
        SwiftApp.Companion companion = SwiftApp.d;
        pw5 pw5Var3 = new pw5("OS", el1.Y0(el1.v1(new LinkedHashSet(x50.p0(new String[]{str2, str, strJ, strJ2, lz3Var.c(SwiftApp.Companion.c(), mz3.a) == 0 ? null : "No GMS"}))), null, null, null, null, 63));
        g00 g00Var = g00.a;
        pw5 pw5Var4 = new pw5("Secondary user", g00.x() + " (id=" + g00.i() + ")");
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("app_locale", null);
            pw5 pw5Var5 = new pw5("Locale", String.valueOf((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a()));
            pw5 pw5Var6 = new pw5("Root state", mp6.g() ? fz5.j(qe7.a(), "No root, Shizuku v") : mp6.g ? String.valueOf(mp6.a.b()) : "Not rooted");
            pw5 pw5Var7 = new pw5("App info", l());
            StringBuilder sb = new StringBuilder();
            d45 d45Var = d45.b;
            d45Var.getClass();
            String email = "Not signed in";
            if (d45.a() != null) {
                if (zn7.q.d().c) {
                    sb.append("USB: ");
                }
                String str3 = ry5.u;
                sb.append(qy5.f(c, null).c);
            } else {
                sb.append("Not signed in");
            }
            pw5 pw5Var8 = new pw5("Folder", sb.toString());
            d45Var.getClass();
            if (d45.a() != null) {
                try {
                    d45.b.getClass();
                    MFirebaseUser mFirebaseUserA = d45.a();
                    boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
                } catch (Exception unused) {
                }
                if (pe4.d(boolValueOf, Boolean.TRUE)) {
                    email = "Anonymous";
                } else {
                    d45.b.getClass();
                    MFirebaseUser mFirebaseUserA2 = d45.a();
                    if (mFirebaseUserA2 == null) {
                        throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
                    }
                    email = mFirebaseUserA2.getEmail();
                }
            }
            return x65.r0(pw5Var, pw5Var2, pw5Var3, pw5Var4, pw5Var5, pw5Var6, pw5Var7, pw5Var8, new pw5("User account", email));
        } catch (ClassCastException unused2) {
            string = null;
        }
    }

    public static SpannableStringBuilder p(Context context, int i, int i2, boolean z) {
        context.getClass();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String str = i + " / " + i2;
        if (!z ? i >= i2 : i > i2) {
            spannableStringBuilder.append((CharSequence) str);
            return spannableStringBuilder;
        }
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(sz8.r(context));
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static int q(int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = (int) ((((long) i) * 100) / ((long) i2));
        if (i3 > 100) {
            return 100;
        }
        return i3;
    }

    public static int r(long j, long j2) {
        if (j2 == 0) {
            return 0;
        }
        return (int) ((j * 100) / j2);
    }

    public static String s(final long j) {
        String str = (String) io4.j("Const.getReadableDate", null, true, new bt3() { // from class: ss1
            @Override // defpackage.bt3
            public final Object invoke() {
                return DateUtils.getRelativeTimeSpanString(j, System.currentTimeMillis(), 60000L).toString();
            }
        }, 10);
        return str == null ? "" : str;
    }

    public static SpannableStringBuilder t(int i, Context context, String str) {
        str.getClass();
        int iV = tu0.v((context.getResources().getDisplayMetrics().densityDpi / 160.0f) * 8.0f);
        List listX0 = nq7.x0(str, new String[]{"\n"}, 6);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Iterator it = listX0.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2++;
            String string = nq7.H0((String) it.next()).toString();
            if (uq7.V(string, "-", c)) {
                String strI0 = nq7.I0(string, '-', ' ');
                SpannableString spannableString = new SpannableString(strI0);
                spannableString.setSpan(Build.VERSION.SDK_INT >= 28 ? qs1.b(iV, i, (int) ((context.getResources().getDisplayMetrics().densityDpi / 160.0f) * 1.5f)) : new BulletSpan(iV, i), 0, strI0.length(), 33);
                spannableStringBuilder.append((CharSequence) spannableString);
            } else {
                spannableStringBuilder.append((CharSequence) string);
            }
            if (i2 < listX0.size()) {
                spannableStringBuilder.append((CharSequence) "\n");
            }
        }
        return spannableStringBuilder;
    }

    public static String u(long j, long j2) {
        int iRound;
        double d = ((j2 - j) / 1000.0d) * 100.0d;
        if (Double.isNaN(d)) {
            c6.f("Cannot round NaN value.");
            return null;
        }
        if (d > 2.147483647E9d) {
            iRound = Integer.MAX_VALUE;
        } else {
            iRound = d < -2.147483648E9d ? SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED : (int) Math.round(d);
        }
        return "Completed in " + (((double) iRound) / 100.0d) + " s";
    }

    public static final boolean vs(String str) {
        str.getClass();
        try {
            SwiftApp.Companion companion = SwiftApp.d;
            return str.equals(SwiftApp.Companion.d());
        } catch (Throwable unused) {
            return c;
        }
    }

    public static Drawable w(Context context, int i, int i2) {
        Drawable drawable = context.getDrawable(i);
        drawable.getClass();
        Drawable drawableMutate = drawable.mutate();
        drawableMutate.getClass();
        drawableMutate.setTint(i2);
        return drawableMutate;
    }

    public static final void writeErrorStacktraceToFile(Throwable th) {
        th.getClass();
        U(yc9.g0(th));
    }

    public static void x(Context context) {
        Intent intentAddCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME");
        intentAddCategory.getClass();
        intentAddCategory.setFlags(268435456);
        context.startActivity(intentAddCategory);
    }

    public static boolean y(zm zmVar) {
        zmVar.getClass();
        if (!d(zmVar)) {
            return c;
        }
        tb1 tb1Var = tb1.a;
        if (qb1.m()) {
            return true;
        }
        return c;
    }

    public static boolean z() {
        List listA0 = fl1.A0(1, 3);
        SwiftApp.Companion companion = SwiftApp.d;
        ConnectivityManager connectivityManager = (ConnectivityManager) SwiftApp.Companion.c().getSystemService(ConnectivityManager.class);
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities == null || listA0.isEmpty()) {
            return c;
        }
        Iterator it = listA0.iterator();
        while (it.hasNext()) {
            if (networkCapabilities.hasTransport(((Number) it.next()).intValue())) {
                return true;
            }
        }
        return c;
    }

    public final synchronized void Q(String str) {
        try {
            if (b) {
                return;
            }
            b = true;
            try {
                SwiftApp.Companion companion = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                zn4 zn4Var = zn4.a;
                zn4.e(new l30(15, contextC, str));
                d45 d45Var = d45.b;
                d45Var.getClass();
                if (d45.a() != null) {
                    d45Var.c();
                } else {
                    zn4.f(500L, new rs1(str, 0));
                }
            } catch (Exception unused) {
                g(str, true);
                throw null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean checkFileReadWriteAccess(zn7 zn7Var, boolean z, boolean z2) {
        zn7Var.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            throw new IllegalThreadStateException("Method called from main thread");
        }
        try {
            D(zn7Var);
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            dz5 dz5Var = dz5.a;
            vr6.i$default(vr6Var, "Const", "File_R/W: Failed (Storage permission: " + dz5.n() + ")", null, 4, null);
            vr6.e$default(vr6.INSTANCE, "Const", "File_R/W: ".concat(yc9.g0(e)), null, 4, null);
            if (!mp6.d(mp6.a, c, c, 3)) {
                vr6.i$default(vr6.INSTANCE, "Const", "File_R/W: Not rooted, so nothing to do here. Check failed.", null, 4, null);
                if (z2) {
                    throw e;
                }
                return c;
            }
            dz5 dz5Var2 = dz5.a;
            if (!dz5.n()) {
                vr6 vr6Var2 = vr6.INSTANCE;
                vr6.e$default(vr6Var2, "Const", "File_R/W: Storage permission is not granted, attempting to take it with root", null, 4, null);
                dz5.f();
                if (dz5.n()) {
                    vr6.i$default(vr6Var2, "Const", "File_R/W: Successfully taken storage permission with root, checking access...", null, 4, null);
                    if (checkFileReadWriteAccess(zn7Var, z, z2)) {
                        vr6.i$default(vr6Var2, "Const", "File_R/W: Success!", null, 4, null);
                        return true;
                    }
                    vr6.e$default(vr6Var2, "Const", "File_R/W: Still failed after taking storage permission!", null, 4, null);
                }
            }
            if (!z) {
                vr6.i$default(vr6.INSTANCE, "Const", "Retry with root mode not allowed. Check failed.", null, 4, null);
                if (z2) {
                    throw e;
                }
                return c;
            }
            if (!q63.d) {
                vr6 vr6Var3 = vr6.INSTANCE;
                vr6Var3.w("Const", "File_R/W: Forcing root mode filesystem and retrying", vr6.a.YELLOW);
                q63.d = true;
                if (checkFileReadWriteAccess(zn7Var, c, z2)) {
                    vr6.i$default(vr6Var3, "Const", "File_R/W: Success!", null, 4, null);
                    return true;
                }
                vr6.e$default(vr6Var3, "Const", "File_R/W: Still failed after forcing root mode, oh well...", null, 4, null);
            }
            vr6.e$default(vr6.INSTANCE, "Const", "File_R/W: Nothing to do, checks failed.", null, 4, null);
            if (z2) {
                throw e;
            }
            return c;
        }
        return true;
    }

    public final void e() {
        boolean z = g42.a;
        String strA = g42.a("AQJBD/K2igFqstvxpdd6E5Qct1FG0FeqN7nhKMWOgCifVTrjnLQ9eelRB7tTmCBNSYY3CswMQaWZakhBwJlfCvFpnKqylwOgxBgrUWVPZRvQWtMf3+6Y0leYgX1x0gdKIppkV7cNFT0B07Q8EK8KhjLI3PMwuvFRpYifZTyYTHbGY/g6vRiqBg==");
        Integer b2 = V.INSTANCE.getB();
        if (b2 != null && 620 <= b2.intValue()) {
            Q(strA);
        }
        re3.b().d("blockedVersion").b(new us1(strA));
    }

    public static final String s(Throwable th) {
        th.getClass();
        return yc9.g0(th);
    }

    public static final void e(String str) {
        vr6.e$default(vr6.INSTANCE, "", String.valueOf(str), null, 4, null);
    }

    public static final boolean p() {
        g00 g00Var = g00.a;
        return g00.x();
    }
}
