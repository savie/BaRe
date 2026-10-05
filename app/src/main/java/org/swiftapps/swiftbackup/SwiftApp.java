package org.swiftapps.swiftbackup;

import android.app.ActivityManager;
import android.app.Application;
import android.app.ApplicationExitInfo;
import android.app.ApplicationStartInfo;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.content.res.Configuration;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.LocaleList;
import android.os.StrictMode;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.topjohnwu.superuser.Shell;
import defpackage.a45;
import defpackage.b67;
import defpackage.bs4;
import defpackage.cy0;
import defpackage.cz4;
import defpackage.d45;
import defpackage.dj7;
import defpackage.e10;
import defpackage.ex6;
import defpackage.f51;
import defpackage.f6;
import defpackage.fl;
import defpackage.g00;
import defpackage.g70;
import defpackage.gg3;
import defpackage.gv7;
import defpackage.h70;
import defpackage.iq5;
import defpackage.j05;
import defpackage.jq5;
import defpackage.jx;
import defpackage.jz4;
import defpackage.kc2;
import defpackage.m70;
import defpackage.mp6;
import defpackage.n63;
import defpackage.nq5;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.q63;
import defpackage.u48;
import defpackage.vr6;
import defpackage.x5;
import defpackage.yc9;
import defpackage.ys7;
import defpackage.zk;
import defpackage.zn4;
import defpackage.zs7;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.IgnoredException;
import org.swiftapps.swiftbackup.common.NotificationHelper;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SwiftApp extends Application implements a45 {
    public static SwiftApp e;
    public final ex6 a;
    public final gv7 b;
    public final gv7 c;
    public static final Companion d = new Companion();
    public static final gv7 f = new gv7(new jx(23));

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static SwiftApp a() {
            SwiftApp swiftApp = SwiftApp.e;
            if (swiftApp != null) {
                return swiftApp;
            }
            pe4.F("sInstance");
            throw null;
        }

        public static Context c() {
            Context applicationContext = a().getApplicationContext();
            applicationContext.getClass();
            return applicationContext;
        }

        public static String d() throws NoSuchAlgorithmException {
            Signature[] signatureArrE = e();
            if (signatureArrE != null) {
                Signature signature = signatureArrE.length == 0 ? null : signatureArrE[0];
                if (signature != null) {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                    messageDigest.update(signature.toByteArray());
                    return Base64.encodeToString(messageDigest.digest(), 2);
                }
            }
            return null;
        }

        public static Signature[] e() {
            g00 g00Var = g00.a;
            PackageManager packageManagerR = g00.r();
            if (!b67.a()) {
                return packageManagerR.getPackageInfo(a().getPackageName(), 64).signatures;
            }
            SigningInfo signingInfo = packageManagerR.getPackageInfo(a().getPackageName(), 134217728).signingInfo;
            if (signingInfo != null) {
                return signingInfo.getApkContentsSigners();
            }
            return null;
        }

        public final SwiftApp b() {
            SwiftApp swiftApp = SwiftApp.e;
            if (swiftApp != null) {
                return swiftApp;
            }
            pe4.F("sInstance");
            throw null;
        }
    }

    public SwiftApp() {
        ex6 ex6Var = new ex6();
        ex6Var.k(Boolean.FALSE);
        this.a = ex6Var;
        this.b = new gv7(new zk(16));
        this.c = new gv7(new fl(14));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x008e  */
    public static final void a(SwiftApp swiftApp) {
        ApplicationExitInfo applicationExitInfoD;
        String str;
        Object next;
        ActivityManager activityManager = (ActivityManager) swiftApp.getSystemService(ActivityManager.class);
        if (activityManager != null) {
            try {
                List<ApplicationExitInfo> historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : historicalProcessExitReasons) {
                        if (pe4.d(x5.d(obj).getProcessName(), swiftApp.getPackageName())) {
                            arrayList.add(obj);
                        }
                    }
                    Iterator it = arrayList.iterator();
                    if (it.hasNext()) {
                        next = it.next();
                        if (it.hasNext()) {
                            long timestamp = x5.d(next).getTimestamp();
                            do {
                                Object next2 = it.next();
                                long timestamp2 = x5.d(next2).getTimestamp();
                                if (timestamp < timestamp2) {
                                    next = next2;
                                    timestamp = timestamp2;
                                }
                            } while (it.hasNext());
                        }
                    } else {
                        next = null;
                    }
                    applicationExitInfoD = x5.d(next);
                } else {
                    applicationExitInfoD = null;
                }
            } catch (Throwable th) {
                vr6.e$default(vr6.INSTANCE, "SwiftApp", "slogLastExitInfo: ".concat(yc9.g0(th)), null, 4, null);
            }
        } else {
            applicationExitInfoD = null;
        }
        if (applicationExitInfoD != null) {
            Set set = e10.a;
            int reason = applicationExitInfoD.getReason();
            String description = applicationExitInfoD.getDescription();
            boolean zContains = e10.a.contains(Integer.valueOf(reason));
            String str2 = (reason == 13 && description != null && nq7.Z(description, "MemoryLimiter:AnonSwap", true)) ? "MemoryLimiter:AnonSwap detected; previous backup/restore may have been killed by Android's per-app memory limiter." : null;
            try {
                byte[] processStateSummary = applicationExitInfoD.getProcessStateSummary();
                str = processStateSummary != null ? new String(processStateSummary, f51.a) : null;
            } catch (Exception unused) {
            }
            String strConcat = str2 != null ? "\n".concat(str2) : null;
            if (strConcat == null) {
                strConcat = "";
            }
            vr6 vr6Var = vr6.INSTANCE;
            String description2 = applicationExitInfoD.getDescription();
            StringBuilder sb = new StringBuilder("Last exit details, ");
            sb.append(applicationExitInfoD);
            sb.append(", description=");
            sb.append(description2);
            sb.append(", stateSummary=");
            vr6Var.i("SwiftApp", dj7.n(sb, str, strConcat), zContains ? null : vr6.a.YELLOW);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0050  */
    public static final void b(SwiftApp swiftApp) {
        Object next;
        ApplicationStartInfo applicationStartInfoC;
        String str;
        ActivityManager activityManager = (ActivityManager) swiftApp.getSystemService(ActivityManager.class);
        if (activityManager != null) {
            try {
                List historicalProcessStartReasons = activityManager.getHistoricalProcessStartReasons(1);
                if (historicalProcessStartReasons != null) {
                    Iterator it = historicalProcessStartReasons.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!pe4.d(f6.c(next).getProcessName(), swiftApp.getPackageName()));
                    applicationStartInfoC = f6.c(next);
                } else {
                    applicationStartInfoC = null;
                }
            } catch (Throwable th) {
                vr6.e$default(vr6.INSTANCE, "SwiftApp", "slogStartupInfo: ".concat(yc9.g0(th)), null, 4, null);
            }
        } else {
            applicationStartInfoC = null;
        }
        if (applicationStartInfoC != null) {
            vr6 vr6Var = vr6.INSTANCE;
            String str2 = "UNKNOWN";
            switch (applicationStartInfoC.getReason()) {
                case 0:
                    str = "ALARM";
                    break;
                case 1:
                    str = "BACKUP";
                    break;
                case 2:
                    str = "BOOT COMPLETE";
                    break;
                case 3:
                    str = "BROADCAST";
                    break;
                case 4:
                    str = "CONTENT PROVIDER";
                    break;
                case 5:
                    str = "JOB";
                    break;
                case 6:
                    str = "LAUNCHER";
                    break;
                case 7:
                    str = "LAUNCHER RECENTS";
                    break;
                case 8:
                    str = "OTHER";
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    str = "PUSH";
                    break;
                case 10:
                    str = "SERVICE";
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    str = "START ACTIVITY";
                    break;
                default:
                    str = "UNKNOWN";
                    break;
            }
            int startType = applicationStartInfoC.getStartType();
            if (startType == 0) {
                str2 = "UNSET";
            } else if (startType == 1) {
                str2 = "COLD";
            } else if (startType == 2) {
                str2 = "WARM";
            } else if (startType == 3) {
                str2 = "HOT";
            }
            boolean zWasForceStopped = applicationStartInfoC.wasForceStopped();
            StringBuilder sbP = u48.p("ApplicationStartInfo: startReason=", str, ", startType=", str2, ", wasForceStopped=");
            sbP.append(zWasForceStopped);
            vr6Var.i("SwiftApp", sbP.toString(), applicationStartInfoC.wasForceStopped() ? vr6.a.YELLOW : null);
        }
    }

    public final void c(String str) {
        Log.e("SwiftApp", "Exiting: reason=(" + str + ")");
        Const.x(this);
        Const.g(str, true);
        throw null;
    }

    public final native String getGoogleAuthAndroidClientId();

    public final native String getGoogleAuthWebClientId();

    public final native boolean isLocalNetworkTcpBlockedByPermission(String str, int i, int i2);

    @Override // android.app.Application, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
        super.onConfigurationChanged(configuration);
        if (b67.e()) {
            Log.i("LocaleManager", "Config changed. Locales: " + configuration.getLocales());
            LocaleList locales = configuration.getLocales();
            locales.getClass();
            j05.c(locales);
        }
    }

    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        Log.d("SwiftApp", "onCreate");
        e = this;
        int i = b67.a;
        NotificationManager notificationManagerD = NotificationHelper.d();
        Locale localeF = NotificationHelper.f();
        NotificationChannel notificationChannel = new NotificationChannel("backup_restore_channel", NotificationHelper.a(R.string.backup_and_restore, localeF), 2);
        notificationChannel.setShowBadge(false);
        notificationManagerD.createNotificationChannel(notificationChannel);
        NotificationChannel notificationChannel2 = new NotificationChannel("normal_channel", NotificationHelper.a(R.string.normal, localeF), 2);
        notificationChannel2.setShowBadge(false);
        notificationManagerD.createNotificationChannel(notificationChannel2);
        AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
        NotificationChannel notificationChannel3 = new NotificationChannel("task_completion_channel_success", NotificationHelper.a(R.string.task_successful, localeF), 3);
        notificationChannel3.setSound(NotificationHelper.e(), audioAttributesBuild);
        notificationChannel3.setBypassDnd(false);
        int i2 = 1;
        notificationChannel3.enableVibration(true);
        notificationChannel3.setShowBadge(false);
        notificationManagerD.createNotificationChannel(notificationChannel3);
        NotificationChannel notificationChannel4 = new NotificationChannel("task_completion_channel_error", NotificationHelper.a(R.string.task_error, localeF), 3);
        notificationChannel4.setSound(NotificationHelper.b(), audioAttributesBuild);
        notificationChannel4.setBypassDnd(false);
        notificationChannel4.enableVibration(true);
        notificationChannel4.setShowBadge(false);
        notificationManagerD.createNotificationChannel(notificationChannel4);
        NotificationChannel notificationChannel5 = new NotificationChannel("task_completion_channel_silent", NotificationHelper.a(R.string.task_complete_no_sound, localeF), 2);
        notificationChannel5.enableVibration(true);
        notificationChannel5.setBypassDnd(false);
        notificationChannel5.setShowBadge(false);
        notificationManagerD.createNotificationChannel(notificationChannel5);
        NotificationChannel notificationChannel6 = new NotificationChannel("crash_error_channel", "Crash notification", 3);
        notificationChannel6.setSound(NotificationHelper.b(), audioAttributesBuild);
        notificationChannel6.setBypassDnd(false);
        notificationChannel6.enableVibration(true);
        notificationChannel6.setShowBadge(false);
        notificationManagerD.createNotificationChannel(notificationChannel6);
        NotificationHelper.d().cancelAll();
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: xs7
            /* JADX WARN: Code duplicated, block: B:118:0x0239 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:119:? A[LOOP:3: B:91:0x021c->B:119:?, LOOP_END, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:120:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:90:0x0218  */
            /* JADX WARN: Code duplicated, block: B:93:0x0222  */
            /* JADX WARN: Code duplicated, block: B:98:0x0233  */
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread, Throwable th) {
                File fileU;
                String strC;
                List listA0;
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
                Iterator it;
                SwiftApp.Companion companion = SwiftApp.d;
                th.getClass();
                String strB = io4.b(th);
                String strG0 = yc9.g0(th);
                vr6.e$default(vr6.INSTANCE, "Crash", strG0, null, 4, null);
                Const.U(strG0);
                gv7 gv7Var = NotificationHelper.a;
                Throwable cause = th.getCause();
                String strB2 = cause != null ? io4.b(cause) : strB;
                try {
                    File cacheDir = SwiftApp.Companion.c().getCacheDir();
                    fileU = cacheDir != null ? nc3.U(cacheDir, "error.txt") : null;
                    if (fileU != null) {
                        f13.b(fileU);
                    }
                    if (fileU != null) {
                        Charset charset = f51.a;
                        charset.getClass();
                        FileOutputStream fileOutputStream = new FileOutputStream(fileU);
                        try {
                            nc3.X(fileOutputStream, strG0, charset);
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                rs9.c(fileOutputStream, th2);
                                throw th3;
                            }
                        }
                    }
                    if (fileU == null || !fileU.exists() || fileU.length() <= 0) {
                        fileU = null;
                    }
                } catch (Exception unused) {
                }
                wo5 wo5Var = new wo5(SwiftApp.Companion.c(), "crash_error_channel");
                wo5Var.r = NotificationHelper.c();
                wo5Var.u.icon = R.drawable.ic_stat;
                wo5Var.e = wo5.b("Swift Backup crashed");
                wo5Var.f = wo5.b(strB2);
                wo5Var.c(8);
                wo5Var.c(16);
                boolean z = true;
                if (fileU != null) {
                    Uri uriB = f93.b(fileU);
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setDataAndType(uriB, "text/plain");
                    intent.addFlags(1);
                    wo5Var.g = PendingIntent.getActivity(SwiftApp.Companion.c(), 0, intent, (b67.d() ? 67108864 : 0) | 134217728);
                }
                NotificationHelper.d().notify(912, wo5Var.a());
                zn7 zn7VarD = zn7.q.d();
                String str = ry5.u;
                zn7VarD.getClass();
                Long lC = qy5.c(zn7VarD.n());
                String strC2 = "Unknown";
                if (lC != null) {
                    p93 p93Var = p93.a;
                    strC = p93.c(lC);
                } else {
                    strC = "Unknown";
                }
                q63 q63VarL = zn7VarD.l();
                q63VarL.getClass();
                long totalSpace = q63VarL.n().getFile().getTotalSpace();
                Long lValueOf = Long.valueOf(totalSpace);
                if (totalSpace <= 0) {
                    lValueOf = null;
                }
                if (lValueOf != null) {
                    p93 p93Var2 = p93.a;
                    strC2 = p93.c(lValueOf);
                }
                vr6.i$default(vr6.INSTANCE, "SwiftApp", el1.Y0(x50.p0(new String[]{zn7VarD.u(), zn7VarD.e(null), dj7.l("Free ", strC, " of ", strC2)}), null, null, null, null, 63), null, 4, null);
                boolean z2 = zn7VarD.b;
                SwiftApp swiftApp = this.a;
                if (z2) {
                    List<String> listA1 = fl1.A0("FileNotFoundException", "IOException");
                    if (!listA1.isEmpty()) {
                        for (String str2 : listA1) {
                            str2.getClass();
                            if (nq7.Z(strG0, str2, false)) {
                                vr6.e$default(vr6.INSTANCE, "SwiftApp", "IO Exception on a removable storage, avoid crash report.", null, 4, null);
                                swiftApp.c("IO Exception on a removable storage, avoid crash report.");
                                throw null;
                            }
                        }
                    }
                }
                List listA2 = fl1.A0("ShizukuRemoteProcess", "android.os.DeadObjectException");
                if (!listA2.isEmpty()) {
                    Iterator it2 = listA2.iterator();
                    while (it2.hasNext()) {
                        if (!nq7.Z(strG0, (String) it2.next(), true)) {
                            z = false;
                            break;
                        }
                    }
                }
                if (!(th instanceof OutOfMemoryError) && !(th instanceof IgnoredException) && !th.getClass().getSimpleName().equals("RemoteServiceException") && !z) {
                    List listA3 = fl1.A0("Resources$NotFoundException", "Binary XML", "InflateException");
                    if (listA3.isEmpty()) {
                        listA0 = fl1.A0("EPERM (Operation not permitted)", "ENOSPC (No space left on device)");
                        if (!listA0.isEmpty()) {
                            it = listA0.iterator();
                            while (it.hasNext()) {
                                if (!nq7.Z(strB, (String) it.next(), false)) {
                                }
                            }
                        }
                        uncaughtExceptionHandler = defaultUncaughtExceptionHandler;
                        if (uncaughtExceptionHandler != null) {
                            uncaughtExceptionHandler.uncaughtException(thread, th);
                            return;
                        }
                        return;
                    }
                    Iterator it3 = listA3.iterator();
                    while (it3.hasNext()) {
                        if (!nq7.Z(strB, (String) it3.next(), false)) {
                        }
                    }
                    listA0 = fl1.A0("EPERM (Operation not permitted)", "ENOSPC (No space left on device)");
                    if (!listA0.isEmpty()) {
                        it = listA0.iterator();
                        while (it.hasNext()) {
                            if (!nq7.Z(strB, (String) it.next(), false)) {
                            }
                        }
                    }
                    uncaughtExceptionHandler = defaultUncaughtExceptionHandler;
                    if (uncaughtExceptionHandler != null) {
                        uncaughtExceptionHandler.uncaughtException(thread, th);
                        return;
                    }
                    return;
                }
                swiftApp.c(th.getClass().getSimpleName());
                throw null;
            }
        });
        if (!cz4.e) {
            SharedPreferences sharedPreferences = getSharedPreferences(getPackageName() + "_preferences", 0);
            sharedPreferences.getClass();
            cz4.f = sharedPreferences;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.getClass();
            cz4.k = editorEdit;
            cz4.e = true;
        }
        bs4.b();
        synchronized (mp6.a) {
            Shell.setDefaultBuilder(mp6.d);
        }
        j05.d(this);
        System.loadLibrary("native-lib");
        d45 d45Var = d45.b;
        d45Var.getClass();
        d45Var.a.add(this);
        if (!gg3.i) {
            gg3.i = true;
            gg3.j.c(gg3.k);
        }
        jz4 jz4Var = new jz4();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(999);
        intentFilter.addDataScheme("package");
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        Const.C(jz4Var, intentFilter);
        synchronized (kc2.a) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                List listD = kc2.d();
                ArrayList arrayListA = kc2.a(jCurrentTimeMillis, listD);
                if (!arrayListA.equals(listD)) {
                    kc2.g(kc2.e(arrayListA, jCurrentTimeMillis));
                    vr6.w$default(vr6.INSTANCE, "DataSyncFgsRuntimeLedger", "Closed stale dataSync FGS sessions from previous process", null, 4, null);
                }
            } catch (Exception e2) {
                vr6.e$default(vr6.INSTANCE, "DataSyncFgsRuntimeLedger", "Failed to reconcile dataSync FGS ledger on app launch", e2, null, 8, null);
            }
        }
        zn4 zn4Var = zn4.a;
        zn4.b(null, new ys7(this, null));
        jq5 jq5Var = nq5.i;
        zn4.b(null, new iq5(2, null));
        boolean z = q63.d;
        vr6 vr6Var = vr6.INSTANCE;
        cy0.b = new n63(i2);
        m70.b = new g70(1, h70.a, h70.class, "trashDirFor", "trashDirFor(Lorg/swiftapps/filesystem/File;)Lorg/swiftapps/filesystem/File;", 0, 0);
        Log.d("SwiftApp", "init() complete");
        zn4.b(null, new zs7(2, null));
        StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().build());
    }

    public static final SwiftApp b() {
        return d.b();
    }
}
