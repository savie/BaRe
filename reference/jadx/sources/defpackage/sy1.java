package defpackage;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Base64;
import android.util.JsonReader;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NavigableSet;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicMarkableReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sy1 {
    public static final py1 s = new py1();
    public static final Charset t = Charset.forName("UTF-8");
    public final Context a;
    public final ka2 b;
    public final yf1 c;
    public final i75 d;
    public final s02 e;
    public final k94 f;
    public final ca3 g;
    public final cq h;
    public final ot9 i;
    public final az1 j;
    public final eb k;
    public final oy1 l;
    public final ca3 m;
    public m02 n;
    public final TaskCompletionSource o = new TaskCompletionSource();
    public final TaskCompletionSource p = new TaskCompletionSource();
    public final TaskCompletionSource q = new TaskCompletionSource();
    public final AtomicBoolean r = new AtomicBoolean(false);

    public sy1(Context context, k94 k94Var, ka2 ka2Var, ca3 ca3Var, yf1 yf1Var, cq cqVar, i75 i75Var, ot9 ot9Var, ca3 ca3Var2, az1 az1Var, eb ebVar, oy1 oy1Var, s02 s02Var) {
        this.a = context;
        this.f = k94Var;
        this.b = ka2Var;
        this.g = ca3Var;
        this.c = yf1Var;
        this.h = cqVar;
        this.d = i75Var;
        this.i = ot9Var;
        this.j = az1Var;
        this.k = ebVar;
        this.l = oy1Var;
        this.m = ca3Var2;
        this.e = s02Var;
    }

    public static Task a(sy1 sy1Var) {
        Task taskCall;
        sy1Var.getClass();
        ArrayList arrayList = new ArrayList();
        for (File file : ca3.l(((File) sy1Var.g.c).listFiles(s))) {
            try {
                long j = Long.parseLong(file.getName().substring(3));
                try {
                    Class.forName("com.google.firebase.crash.FirebaseCrash");
                    Log.w("FirebaseCrashlytics", "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists", null);
                    taskCall = Tasks.forResult(null);
                } catch (ClassNotFoundException unused) {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", "Logging app exception event to Firebase Analytics", null);
                    }
                    taskCall = Tasks.call(new ScheduledThreadPoolExecutor(1), new ry1(sy1Var, j));
                }
                arrayList.add(taskCall);
            } catch (NumberFormatException unused2) {
                Log.w("FirebaseCrashlytics", "Could not parse app exception timestamp from file " + file.getName(), null);
            }
            file.delete();
        }
        return Tasks.whenAll(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:268:0x07fd  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v29, types: [int] */
    /* JADX WARN: Type inference failed for: r10v72 */
    /* JADX WARN: Type inference failed for: r32v0, types: [boolean] */
    public final void b(boolean z, f80 f80Var, boolean z2) throws Throwable {
        ArrayList arrayList;
        int i;
        int i2;
        boolean z3;
        String str;
        boolean z4;
        String[] list;
        Exception exc;
        Throwable th;
        InputStream inputStream;
        InputStream inputStreamB;
        List listB;
        ApplicationExitInfo next;
        String strD;
        int i3;
        List listUnmodifiableList;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        s02.a();
        ArrayList arrayList2 = new ArrayList(((k02) this.m.b).c());
        if (arrayList2.size() <= z) {
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "No open sessions to be closed.", null);
                return;
            }
            return;
        }
        String str2 = (String) arrayList2.get(z == true ? 1 : 0);
        if (z2 && f80Var.c().b.b) {
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 30) {
                List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) this.a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons.size() != 0) {
                    ca3 ca3Var = this.g;
                    ot9 ot9Var = new ot9(ca3Var);
                    ge geVar = ot9.c;
                    geVar.a();
                    ot9Var.b = geVar;
                    if (str2 != null) {
                        ot9Var.b = new wc6(ca3Var.g(str2, "userlog"));
                    }
                    ca3 ca3Var2 = this.g;
                    s02 s02Var = this.e;
                    lf5 lf5Var = new lf5(ca3Var2);
                    i = 4;
                    i75 i75Var = new i75(str2, ca3Var2, s02Var);
                    i2 = 8;
                    ((bp4) ((fh8) i75Var.d).a.getReference()).c(lf5Var.c(str2, false));
                    ((bp4) ((fh8) i75Var.e).a.getReference()).c(lf5Var.c(str2, true));
                    ((AtomicMarkableReference) i75Var.k).set(lf5Var.d(str2), false);
                    i66 i66Var = (i66) i75Var.f;
                    File fileG = ca3Var2.g(str2, "rollouts-state");
                    if (!fileG.exists() || fileG.length() == 0) {
                        lf5.g(fileG, "The file has a length of zero for session: " + str2);
                        listB = Collections.EMPTY_LIST;
                    } else {
                        try {
                            fileInputStream2 = new FileInputStream(fileG);
                            try {
                                try {
                                    listB = lf5.b(jm1.X(fileInputStream2));
                                    String str3 = "Loaded rollouts state:\n" + listB + "\nfor session " + str2;
                                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                        Log.d("FirebaseCrashlytics", str3, null);
                                    }
                                    jm1.h(fileInputStream2, "Failed to close rollouts state file.");
                                } catch (Exception e) {
                                    e = e;
                                    Log.w("FirebaseCrashlytics", "Error deserializing rollouts state.", e);
                                    lf5.f(fileG);
                                    jm1.h(fileInputStream2, "Failed to close rollouts state file.");
                                    listB = Collections.EMPTY_LIST;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                fileInputStream = fileInputStream2;
                                jm1.h(fileInputStream, "Failed to close rollouts state file.");
                                throw th;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            fileInputStream2 = null;
                        } catch (Throwable th3) {
                            th = th3;
                            fileInputStream = null;
                            jm1.h(fileInputStream, "Failed to close rollouts state file.");
                            throw th;
                        }
                    }
                    synchronized (i66Var) {
                        ((ArrayList) i66Var.b).clear();
                        if (listB.size() > i66Var.a) {
                            Log.w("FirebaseCrashlytics", "Ignored 0 entries when adding rollout assignments. Maximum allowable: " + i66Var.a, null);
                            ((ArrayList) i66Var.b).addAll(listB.subList(0, i66Var.a));
                        } else {
                            ((ArrayList) i66Var.b).addAll(listB);
                        }
                    }
                    ca3 ca3Var3 = this.m;
                    k02 k02Var = (k02) ca3Var3.b;
                    long jLastModified = k02Var.b.g(str2, "start-time").lastModified();
                    Iterator<ApplicationExitInfo> it = historicalProcessExitReasons.iterator();
                    do {
                        if (it.hasNext()) {
                            next = it.next();
                            if (next.getTimestamp() < jLastModified) {
                            }
                        }
                        next = null;
                        break;
                    } while (next.getReason() != 6);
                    if (next == null) {
                        String strJ = xs1.j("No relevant ApplicationExitInfo occurred during session: ", str2);
                        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                            Log.v("FirebaseCrashlytics", strJ, null);
                        }
                        arrayList = arrayList2;
                    } else {
                        d02 d02Var = (d02) ca3Var3.a;
                        try {
                            InputStream traceInputStream = next.getTraceInputStream();
                            strD = traceInputStream != null ? ca3.d(traceInputStream) : null;
                        } catch (IOException e3) {
                            Log.w("FirebaseCrashlytics", "Could not get input trace in application exit info: " + next.toString() + " Error: " + e3, null);
                        }
                        zb0 zb0Var = new zb0();
                        zb0Var.d = next.getImportance();
                        zb0Var.j = (byte) (zb0Var.j | 4);
                        String processName = next.getProcessName();
                        if (processName == null) {
                            f6.n("Null processName");
                            return;
                        }
                        zb0Var.b = processName;
                        zb0Var.c = next.getReason();
                        zb0Var.j = (byte) (zb0Var.j | 2);
                        zb0Var.g = next.getTimestamp();
                        zb0Var.j = (byte) (zb0Var.j | 32);
                        zb0Var.a = next.getPid();
                        zb0Var.j = (byte) (zb0Var.j | 1);
                        zb0Var.e = next.getPss();
                        zb0Var.j = (byte) (zb0Var.j | 8);
                        zb0Var.f = next.getRss();
                        zb0Var.j = (byte) (zb0Var.j | 16);
                        zb0Var.h = strD;
                        ac0 ac0VarA = zb0Var.a();
                        int i5 = d02Var.a.getResources().getConfiguration().orientation;
                        lc0 lc0Var = new lc0();
                        lc0Var.b = "anr";
                        long j = ac0VarA.g;
                        lc0Var.a = j;
                        lc0Var.g = (byte) (lc0Var.g | 1);
                        cq cqVar = d02Var.c;
                        if (!d02Var.e.c().b.c || cqVar.c.size() <= 0) {
                            arrayList = arrayList2;
                            i3 = i5;
                            listUnmodifiableList = null;
                        } else {
                            ArrayList arrayList3 = new ArrayList();
                            Iterator it2 = cqVar.c.iterator();
                            while (it2.hasNext()) {
                                cx0 cx0Var = (cx0) it2.next();
                                int i6 = i5;
                                String str4 = cx0Var.a;
                                if (str4 == null) {
                                    f6.n("Null libraryName");
                                    return;
                                }
                                Iterator it3 = it2;
                                String str5 = cx0Var.b;
                                if (str5 == null) {
                                    f6.n("Null arch");
                                    return;
                                }
                                String str6 = cx0Var.c;
                                if (str6 == null) {
                                    f6.n("Null buildId");
                                    return;
                                }
                                arrayList3.add(new bc0(str5, str4, str6));
                                it2 = it3;
                                i5 = i6;
                                arrayList2 = arrayList2;
                            }
                            arrayList = arrayList2;
                            i3 = i5;
                            listUnmodifiableList = Collections.unmodifiableList(arrayList3);
                        }
                        zb0 zb0Var2 = new zb0();
                        zb0Var2.d = ac0VarA.d;
                        byte b = (byte) (zb0Var2.j | 4);
                        zb0Var2.j = b;
                        String str7 = ac0VarA.b;
                        if (str7 == null) {
                            f6.n("Null processName");
                            return;
                        }
                        zb0Var2.b = str7;
                        zb0Var2.c = ac0VarA.c;
                        zb0Var2.g = j;
                        zb0Var2.a = ac0VarA.a;
                        zb0Var2.e = ac0VarA.e;
                        zb0Var2.f = ac0VarA.f;
                        zb0Var2.j = (byte) (((byte) (((byte) (((byte) (((byte) (b | 2)) | 32)) | 1)) | 8)) | 16);
                        zb0Var2.h = ac0VarA.h;
                        zb0Var2.i = listUnmodifiableList;
                        ac0 ac0VarA2 = zb0Var2.a();
                        int i7 = ac0VarA2.d;
                        Boolean boolValueOf = Boolean.valueOf(i7 != 100);
                        String str8 = ac0VarA2.b;
                        int i8 = ac0VarA2.a;
                        str8.getClass();
                        vc0 vc0Var = new vc0();
                        vc0Var.a = str8;
                        vc0Var.b = i8;
                        byte b2 = (byte) (vc0Var.e | 1);
                        vc0Var.c = i7;
                        vc0Var.d = false;
                        vc0Var.e = (byte) (((byte) (b2 | 2)) | 4);
                        wc0 wc0VarA = vc0Var.a();
                        rc0 rc0VarE = d02.e();
                        List listA = d02Var.a();
                        if (listA == null) {
                            f6.n("Null binaries");
                            return;
                        }
                        lc0Var.c = new nc0(new oc0(null, null, ac0VarA2, rc0VarE, listA), null, null, boolValueOf, wc0VarA, null, i3);
                        lc0Var.d = d02Var.b(i3);
                        mc0 mc0VarA = lc0Var.a();
                        String strJ2 = xs1.j("Persisting anr for session ", str2);
                        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                            Log.d("FirebaseCrashlytics", strJ2, null);
                        }
                        k02Var.d(ca3.b(ca3.a(mc0VarA, ot9Var, i75Var, Collections.EMPTY_MAP), i75Var), str2, true);
                    }
                } else {
                    arrayList = arrayList2;
                    i = 4;
                    i2 = 8;
                    String strJ3 = xs1.j("No ApplicationExitInfo available. Session: ", str2);
                    if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                        Log.v("FirebaseCrashlytics", strJ3, null);
                    }
                }
            } else {
                arrayList = arrayList2;
                i = 4;
                i2 = 8;
                String strJ4 = fz5.j(i4, "ANR feature enabled, but device is API ");
                if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                    Log.v("FirebaseCrashlytics", strJ4, null);
                }
            }
        } else {
            arrayList = arrayList2;
            i = 4;
            i2 = 8;
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "ANR feature disabled.", null);
            }
        }
        if (z2 && this.j.hasCrashDataForSession(str2)) {
            ca3 ca3Var4 = this.g;
            nh4 nh4Var = nh4.c;
            nh4Var.o("Finalizing native report for session " + str2);
            tk5 sessionFileProvider = this.j.getSessionFileProvider(str2);
            File fileV = sessionFileProvider.v();
            ez1 ez1VarK = sessionFileProvider.k();
            if (fileV == null || !fileV.exists()) {
                exc = null;
                Log.w("FirebaseCrashlytics", "No minidump data found for session " + str2, null);
            } else {
                exc = null;
            }
            if (ez1VarK == null) {
                Log.i("FirebaseCrashlytics", "No Tombstones data found for session " + str2, exc);
            }
            if ((fileV == null || !fileV.exists()) && ez1VarK == null) {
                nh4Var.q("No native core present", exc);
            } else {
                long jLastModified2 = fileV.lastModified();
                w83 wc6Var = ot9.c;
                if (str2 != null) {
                    wc6Var = new wc6(ca3Var4.g(str2, "userlog"));
                }
                File fileF = ca3Var4.f(str2);
                if (fileF.isDirectory()) {
                    d(jLastModified2);
                    byte[] bArrG = wc6Var.g();
                    File fileG2 = ca3Var4.g(str2, "user-data");
                    File fileG3 = ca3Var4.g(str2, "keys");
                    File fileG4 = ca3Var4.g(str2, "rollouts-state");
                    ArrayList<sk5> arrayList4 = new ArrayList();
                    arrayList4.add(new iy0("logs_file", "logs", bArrG));
                    arrayList4.add(new x63("crash_meta_file", "metadata", sessionFileProvider.C()));
                    arrayList4.add(new x63("session_meta_file", "session", sessionFileProvider.x()));
                    arrayList4.add(new x63("app_meta_file", "app", sessionFileProvider.d()));
                    arrayList4.add(new x63("device_meta_file", "device", sessionFileProvider.j()));
                    arrayList4.add(new x63("os_meta_file", "os", sessionFileProvider.e()));
                    File fileV2 = sessionFileProvider.v();
                    arrayList4.add((fileV2 == null || !fileV2.exists()) ? new iy0("minidump_file", "minidump", new byte[]{0}) : new x63("minidump_file", "minidump", fileV2));
                    arrayList4.add(new x63("user_meta_file", "user", fileG2));
                    arrayList4.add(new x63("keys_file", "keys", fileG3));
                    arrayList4.add(new x63("rollouts_file", "rollouts", fileG4));
                    for (sk5 sk5Var : arrayList4) {
                        try {
                            inputStreamB = sk5Var.b();
                            if (inputStreamB != null) {
                                try {
                                    yc9.C(new File(fileF, sk5Var.a()), inputStreamB);
                                } catch (IOException unused) {
                                } catch (Throwable th4) {
                                    th = th4;
                                    inputStream = inputStreamB;
                                    jm1.i(inputStream);
                                    throw th;
                                }
                            }
                        } catch (IOException unused2) {
                            inputStreamB = null;
                        } catch (Throwable th5) {
                            th = th5;
                            inputStream = null;
                        }
                        jm1.i(inputStreamB);
                    }
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        th = null;
                        Log.d("FirebaseCrashlytics", "CrashlyticsController#finalizePreviousNativeSession", null);
                    } else {
                        th = null;
                    }
                    ca3 ca3Var5 = this.m;
                    ca3Var5.getClass();
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", "SessionReportingCoordinator#finalizeSessionWithNativeEvent", th);
                    }
                    ArrayList arrayList5 = new ArrayList();
                    Iterator it4 = arrayList4.iterator();
                    while (it4.hasNext()) {
                        ec0 ec0VarC = ((sk5) it4.next()).c();
                        if (ec0VarC != null) {
                            arrayList5.add(ec0VarC);
                        }
                    }
                    k02 k02Var2 = (k02) ca3Var5.b;
                    List listUnmodifiableList2 = Collections.unmodifiableList(arrayList5);
                    if (listUnmodifiableList2 == null) {
                        f6.n("Null files");
                        return;
                    }
                    dc0 dc0Var = new dc0(null, listUnmodifiableList2);
                    ca3 ca3Var6 = k02Var2.b;
                    File fileG5 = ca3Var6.g(str2, "report");
                    String str9 = "Writing native session report for " + str2 + " to file: " + fileG5;
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", str9, null);
                    }
                    String strA = k02Var2.d.a(str2);
                    try {
                        f02 f02Var = k02.g;
                        String strE = k02.e(fileG5);
                        f02Var.getClass();
                        wb0 wb0VarA = f02.i(strE).a();
                        wb0VarA.j = null;
                        wb0VarA.k = dc0Var;
                        xb0 xb0VarA = wb0VarA.a();
                        if (ez1VarK != null) {
                            wb0 wb0VarA2 = xb0VarA.a();
                            wb0VarA2.l = ez1VarK;
                            xb0VarA = wb0VarA2.a();
                        }
                        wb0 wb0VarA3 = xb0VarA.a();
                        wb0VarA3.g = strA;
                        b02 b02Var = xb0VarA.k;
                        if (b02Var != null) {
                            fc0 fc0VarA = b02Var.a();
                            fc0VarA.c = strA;
                            wb0VarA3.j = fc0VarA.a();
                        }
                        k02.f(new File((File) ca3Var6.k, str2), f02.a.c(wb0VarA3.a()));
                    } catch (IOException e4) {
                        Log.w("FirebaseCrashlytics", "Could not synthesize final native report file for " + fileG5, e4);
                    }
                    wc6Var.i();
                } else {
                    nh4Var.q("Couldn't create directory to store native session files, aborting.", null);
                }
            }
        }
        if (z != 0) {
            z3 = false;
            str = (String) arrayList.get(0);
        } else {
            z3 = false;
            this.l.b(null);
            str = null;
        }
        ca3 ca3Var7 = this.m;
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        k02 k02Var3 = (k02) ca3Var7.b;
        ca3 ca3Var8 = k02Var3.b;
        ca3Var8.c(".com.google.firebase.crashlytics");
        ca3Var8.c(".com.google.firebase.crashlytics-ndk");
        if (!((String) ca3Var8.a).isEmpty()) {
            ca3Var8.c(".com.google.firebase.crashlytics.files.v1");
            final String str10 = ".com.google.firebase.crashlytics.files.v2" + File.pathSeparator;
            File file = (File) ca3Var8.b;
            if (file.exists() && (list = file.list(new FilenameFilter() { // from class: ba3
                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str11) {
                    return str11.startsWith(str10);
                }
            })) != null) {
                int length = list.length;
                for (?? r10 = z3; r10 < length; r10++) {
                    ca3Var8.c(list[r10]);
                }
            }
        }
        NavigableSet<String> navigableSetC = k02Var3.c();
        if (str != null) {
            navigableSetC.remove(str);
        }
        int i9 = i2;
        if (navigableSetC.size() > i9) {
            while (navigableSetC.size() > i9) {
                String str11 = (String) navigableSetC.last();
                String strJ5 = xs1.j("Removing session over cap: ", str11);
                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    Log.d("FirebaseCrashlytics", strJ5, null);
                }
                ca3.k(new File((File) ca3Var8.d, str11));
                navigableSetC.remove(str11);
            }
        }
        for (String str12 : navigableSetC) {
            String strJ6 = xs1.j("Finalizing report for session ", str12);
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", strJ6, null);
            }
            f02 f02Var2 = k02.g;
            h02 h02Var = k02.i;
            File file2 = new File((File) ca3Var8.d, str12);
            file2.mkdirs();
            List<File> listL = ca3.l(file2.listFiles(h02Var));
            if (listL.isEmpty()) {
                String strK = eq3.k("Session ", str12, " has no events.");
                if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                    Log.v("FirebaseCrashlytics", strK, null);
                }
            } else {
                Collections.sort(listL);
                ArrayList arrayList6 = new ArrayList();
                boolean z5 = z3;
                for (File file3 : listL) {
                    try {
                        String strE2 = k02.e(file3);
                        f02Var2.getClass();
                        try {
                            JsonReader jsonReader = new JsonReader(new StringReader(strE2));
                            try {
                                mc0 mc0VarE = f02.e(jsonReader);
                                jsonReader.close();
                                arrayList6.add(mc0VarE);
                                if (z5) {
                                    z4 = true;
                                } else {
                                    String name = file3.getName();
                                    if (name.startsWith("event") && name.endsWith("_")) {
                                        z4 = true;
                                    } else {
                                        z4 = z3;
                                    }
                                }
                                z5 = z4;
                            } catch (Throwable th6) {
                                try {
                                    jsonReader.close();
                                } catch (Throwable th7) {
                                    th6.addSuppressed(th7);
                                }
                                throw th6;
                            }
                        } catch (IllegalStateException e5) {
                            throw new IOException(e5);
                        }
                    } catch (IOException e6) {
                        Log.w("FirebaseCrashlytics", "Could not add event to report for " + file3, e6);
                    }
                }
                if (arrayList6.isEmpty()) {
                    Log.w("FirebaseCrashlytics", "Could not parse event files for session " + str12, null);
                } else {
                    String strD2 = new lf5(ca3Var8).d(str12);
                    String strA2 = k02Var3.d.a(str12);
                    File fileG6 = ca3Var8.g(str12, "report");
                    try {
                        String strE3 = k02.e(fileG6);
                        f02Var2.getClass();
                        xb0 xb0VarI = f02.i(strE3);
                        wb0 wb0VarA4 = xb0VarI.a();
                        b02 b02Var2 = xb0VarI.k;
                        if (b02Var2 != null) {
                            try {
                                fc0 fc0VarA2 = b02Var2.a();
                                fc0VarA2.e = Long.valueOf(jCurrentTimeMillis);
                                fc0VarA2.f = z5;
                                try {
                                    fc0VarA2.m = (byte) (fc0VarA2.m | 2);
                                    if (strD2 != null) {
                                        fc0VarA2.h = new gd0(strD2);
                                    }
                                    wb0VarA4.j = fc0VarA2.a();
                                } catch (IOException e7) {
                                    e = e7;
                                }
                            } catch (IOException e8) {
                                e = e8;
                            }
                        }
                        xb0 xb0VarA2 = wb0VarA4.a();
                        wb0 wb0VarA5 = xb0VarA2.a();
                        wb0VarA5.g = strA2;
                        b02 b02Var3 = xb0VarA2.k;
                        if (b02Var3 != null) {
                            fc0 fc0VarA3 = b02Var3.a();
                            fc0VarA3.c = strA2;
                            wb0VarA5.j = fc0VarA3.a();
                        }
                        xb0 xb0VarA3 = wb0VarA5.a();
                        b02 b02Var4 = xb0VarA3.k;
                        if (b02Var4 == null) {
                            throw new IllegalStateException("Reports without sessions cannot have events added to them.");
                        }
                        wb0 wb0VarA6 = xb0VarA3.a();
                        fc0 fc0VarA4 = b02Var4.a();
                        fc0VarA4.k = arrayList6;
                        wb0VarA6.j = fc0VarA4.a();
                        xb0 xb0VarA4 = wb0VarA6.a();
                        b02 b02Var5 = xb0VarA4.k;
                        if (b02Var5 != null) {
                            String str13 = "appQualitySessionId: " + strA2;
                            try {
                                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                    try {
                                        Log.d("FirebaseCrashlytics", str13, null);
                                    } catch (IOException e9) {
                                        e = e9;
                                        Log.w("FirebaseCrashlytics", "Could not synthesize final report file for " + fileG6, e);
                                    }
                                }
                                k02.f(z5 ? new File((File) ca3Var8.f, ((gc0) b02Var5).b) : new File((File) ca3Var8.e, ((gc0) b02Var5).b), f02.a.c(xb0VarA4));
                            } catch (IOException e10) {
                                e = e10;
                                Log.w("FirebaseCrashlytics", "Could not synthesize final report file for " + fileG6, e);
                            }
                        }
                        e = e9;
                    } catch (IOException e11) {
                        e = e11;
                    }
                    Log.w("FirebaseCrashlytics", "Could not synthesize final report file for " + fileG6, e);
                }
                ca3.k(new File((File) ca3Var8.d, str12));
                z3 = false;
            }
            ca3.k(new File((File) ca3Var8.d, str12));
            z3 = false;
        }
        me6 me6Var = k02Var3.c.c().a;
        ArrayList arrayListB = k02Var3.b();
        int size = arrayListB.size();
        int i10 = i;
        if (size <= i10) {
            return;
        }
        Iterator it5 = arrayListB.subList(i10, size).iterator();
        while (it5.hasNext()) {
            ((File) it5.next()).delete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v47 */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r1v49 */
    /* JADX WARN: Type inference failed for: r1v50 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v10, types: [int] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r30v0 */
    public final void c(String str, Boolean bool) {
        Integer num;
        Map mapUnmodifiableMap;
        List listUnmodifiableList;
        String str2 = str;
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        String strJ = xs1.j("Opening a new session with ID ", str2);
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", strJ, null);
        }
        Locale locale = Locale.US;
        k94 k94Var = this.f;
        cq cqVar = this.h;
        ke0 ke0Var = new ke0(k94Var.c, cqVar.f, cqVar.g, k94Var.c().a, xs1.c(cqVar.d != null ? 4 : 1), cqVar.h);
        String str3 = Build.VERSION.RELEASE;
        String str4 = Build.VERSION.CODENAME;
        me0 me0Var = new me0(jm1.C());
        Context context = this.a;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        im1 im1Var = im1.a;
        String str5 = Build.CPU_ABI;
        if (!TextUtils.isEmpty(str5)) {
            im1 im1Var2 = (im1) im1.b.get(str5.toLowerCase(locale));
            if (im1Var2 != null) {
                im1Var = im1Var2;
            }
        } else if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Architecture#getValue()::Build.CPU_ABI returned null or empty", null);
        }
        int iOrdinal = im1Var.ordinal();
        String str6 = Build.MODEL;
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        long jG = jm1.g(context);
        boolean zB = jm1.B();
        boolean zB2 = jm1.B();
        ?? r1 = zB2;
        if (jm1.C()) {
            r1 = (zB2 ? 1 : 0) | 2;
        }
        ?? r2 = r1;
        if (Debug.waitingForDebugger()) {
            r2 = (r1 == true ? 1 : 0) | 4;
        }
        String str7 = Build.MANUFACTURER;
        String str8 = Build.PRODUCT;
        this.j.prepareNativeSession(str2, "Crashlytics Android SDK/20.0.6", jCurrentTimeMillis, new je0(ke0Var, me0Var, new le0(iOrdinal, iAvailableProcessors, jG, blockCount, zB, r2 == true ? 1 : 0)));
        if (bool.booleanValue() && str2 != null) {
            i75 i75Var = this.d;
            synchronized (((String) i75Var.c)) {
                i75Var.c = str2;
                bp4 bp4Var = (bp4) ((fh8) i75Var.d).a.getReference();
                synchronized (bp4Var) {
                    mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(bp4Var.a));
                }
                i66 i66Var = (i66) i75Var.f;
                synchronized (i66Var) {
                    listUnmodifiableList = Collections.unmodifiableList(new ArrayList((ArrayList) i66Var.b));
                }
                str2 = str;
                ((o02) ((s02) i75Var.b).b).a(new pf2(i75Var, str, mapUnmodifiableMap, listUnmodifiableList, 1));
            }
        }
        ot9 ot9Var = this.i;
        ((w83) ot9Var.b).a();
        ot9Var.b = ot9.c;
        if (str2 != null) {
            ot9Var.b = new wc6(((ca3) ot9Var.a).g(str2, "userlog"));
        }
        this.l.b(str2);
        ca3 ca3Var = this.m;
        d02 d02Var = (d02) ca3Var.a;
        Charset charset = c02.a;
        wb0 wb0Var = new wb0();
        wb0Var.a = "20.0.6";
        cq cqVar2 = d02Var.c;
        String str9 = cqVar2.a;
        if (str9 == null) {
            f6.n("Null gmpAppId");
            return;
        }
        wb0Var.b = str9;
        k94 k94Var2 = d02Var.b;
        String str10 = k94Var2.c().a;
        if (str10 == null) {
            f6.n("Null installationUuid");
            return;
        }
        wb0Var.d = str10;
        wb0Var.e = k94Var2.c().b;
        wb0Var.f = k94Var2.c().c;
        String str11 = cqVar2.f;
        if (str11 == null) {
            f6.n("Null buildVersion");
            return;
        }
        wb0Var.h = str11;
        String str12 = cqVar2.g;
        if (str12 == null) {
            f6.n("Null displayVersion");
            return;
        }
        wb0Var.i = str12;
        wb0Var.c = 4;
        wb0Var.m = (byte) (wb0Var.m | 1);
        fc0 fc0Var = new fc0();
        fc0Var.f = false;
        byte b = (byte) (fc0Var.m | 2);
        fc0Var.d = jCurrentTimeMillis;
        fc0Var.m = (byte) (b | 1);
        if (str2 == null) {
            f6.n("Null identifier");
            return;
        }
        fc0Var.b = str2;
        String str13 = d02.g;
        if (str13 == null) {
            f6.n("Null generator");
            return;
        }
        fc0Var.a = str13;
        String str14 = k94Var2.c;
        if (str14 == null) {
            f6.n("Null identifier");
            return;
        }
        String str15 = k94Var2.c().a;
        oe oeVar = cqVar2.h;
        fc0Var.g = new hc0(str14, str11, str12, str15, (String) oeVar.i().b, (String) oeVar.i().c);
        ed0 ed0Var = new ed0();
        ed0Var.a = 3;
        ed0Var.e = (byte) (ed0Var.e | 1);
        if (str3 == null) {
            f6.n("Null version");
            return;
        }
        ed0Var.b = str3;
        if (str4 == null) {
            f6.n("Null buildVersion");
            return;
        }
        ed0Var.c = str4;
        ed0Var.d = jm1.C();
        ed0Var.e = (byte) (ed0Var.e | 2);
        fc0Var.i = ed0Var.a();
        StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
        int iIntValue = 7;
        if (!TextUtils.isEmpty(str5) && (num = (Integer) d02.f.get(str5.toLowerCase(locale))) != null) {
            iIntValue = num.intValue();
        }
        int iAvailableProcessors2 = Runtime.getRuntime().availableProcessors();
        long jG2 = jm1.g(d02Var.a);
        long blockCount2 = ((long) statFs2.getBlockCount()) * ((long) statFs2.getBlockSize());
        boolean zB3 = jm1.B();
        boolean zB4 = jm1.B();
        ?? r3 = zB4;
        if (jm1.C()) {
            r3 = (zB4 ? 1 : 0) | 2;
        }
        ?? r4 = r3;
        if (Debug.waitingForDebugger()) {
            r4 = (r3 == true ? 1 : 0) | 4;
        }
        jc0 jc0Var = new jc0();
        jc0Var.a = iIntValue;
        byte b2 = (byte) (jc0Var.j | 1);
        jc0Var.j = b2;
        if (str6 == null) {
            f6.n("Null model");
            return;
        }
        jc0Var.b = str6;
        jc0Var.c = iAvailableProcessors2;
        jc0Var.d = jG2;
        jc0Var.e = blockCount2;
        jc0Var.f = zB3;
        jc0Var.g = r4;
        jc0Var.j = (byte) (((byte) (((byte) (((byte) (((byte) (b2 | 2)) | 4)) | 8)) | 16)) | 32);
        if (str7 == null) {
            f6.n("Null manufacturer");
            return;
        }
        jc0Var.h = str7;
        if (str8 == 0) {
            f6.n("Null modelClass");
            return;
        }
        jc0Var.i = str8;
        fc0Var.j = jc0Var.a();
        fc0Var.l = 3;
        fc0Var.m = (byte) (fc0Var.m | 4);
        wb0Var.j = fc0Var.a();
        xb0 xb0VarA = wb0Var.a();
        ca3 ca3Var2 = ((k02) ca3Var.b).b;
        b02 b02Var = xb0VarA.k;
        if (b02Var == null) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Could not get session for report", null);
                return;
            }
            return;
        }
        String str16 = ((gc0) b02Var).b;
        try {
            k02.g.getClass();
            k02.f(ca3Var2.g(str16, "report"), f02.a.c(xb0VarA));
            File fileG = ca3Var2.g(str16, "start-time");
            long j = ((gc0) b02Var).d;
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(fileG), k02.e);
            try {
                outputStreamWriter.write("");
                fileG.setLastModified(j * 1000);
                outputStreamWriter.close();
            } catch (Throwable th) {
                try {
                    outputStreamWriter.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (IOException e) {
            String strJ2 = xs1.j("Could not persist report for session ", str16);
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", strJ2, e);
            }
        }
    }

    public final void d(long j) {
        try {
            ca3 ca3Var = this.g;
            String str = ".ae" + j;
            ca3Var.getClass();
            if (new File((File) ca3Var.c, str).createNewFile()) {
            } else {
                throw new IOException("Create new file failed.");
            }
        } catch (IOException e) {
            Log.w("FirebaseCrashlytics", "Could not create app exception marker file.", e);
        }
    }

    public final boolean e(f80 f80Var) throws Throwable {
        s02.a();
        m02 m02Var = this.n;
        if (m02Var != null && m02Var.e.get()) {
            Log.w("FirebaseCrashlytics", "Skipping session finalization because a crash has already occurred.", null);
            return false;
        }
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Finalizing previously open sessions.", null);
        }
        try {
            b(true, f80Var, true);
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "Closed all previously open sessions.", null);
            }
            return true;
        } catch (Exception e) {
            Log.e("FirebaseCrashlytics", "Unable to finalize previously open sessions.", e);
            return false;
        }
    }

    public final String f() {
        NavigableSet navigableSetC = ((k02) this.m.b).c();
        if (navigableSetC.isEmpty()) {
            return null;
        }
        return (String) navigableSetC.first();
    }

    public final String g() throws IOException {
        InputStream resourceAsStream;
        Context context = this.a;
        int iS = jm1.s(context, "com.google.firebase.crashlytics.version_control_info", "string");
        String string = iS == 0 ? null : context.getResources().getString(iS);
        if (string != null) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Read version control info from string resource", null);
            }
            return Base64.encodeToString(string.getBytes(t), 0);
        }
        ClassLoader classLoader = sy1.class.getClassLoader();
        if (classLoader == null) {
            Log.w("FirebaseCrashlytics", "Couldn't get Class Loader", null);
            resourceAsStream = null;
        } else {
            resourceAsStream = classLoader.getResourceAsStream("META-INF/version-control-info.textproto");
        }
        if (resourceAsStream == null) {
            if (resourceAsStream != null) {
                resourceAsStream.close();
            }
            Log.i("FirebaseCrashlytics", "No version control information found", null);
            return null;
        }
        try {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Read version control info from file", null);
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = resourceAsStream.read(bArr);
                    if (i == -1) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        String strEncodeToString = Base64.encodeToString(byteArray, 0);
                        resourceAsStream.close();
                        return strEncodeToString;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                    try {
                        resourceAsStream.close();
                    } catch (Throwable th) {
                        th.addSuppressed(th);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            resourceAsStream.close();
            throw th4;
        }
    }

    public final void h() {
        try {
            String strG = g();
            if (strG != null) {
                try {
                    ((fh8) this.d.e).b("com.crashlytics.version-control-info", strG);
                } catch (IllegalArgumentException e) {
                    Context context = this.a;
                    if (context != null) {
                        if ((context.getApplicationInfo().flags & 2) != 0) {
                            throw e;
                        }
                    }
                    Log.e("FirebaseCrashlytics", "Attempting to set custom attribute with null key, ignoring.", null);
                }
                Log.i("FirebaseCrashlytics", "Saved version control info", null);
            }
        } catch (IOException e2) {
            Log.w("FirebaseCrashlytics", "Unable to save version control info", e2);
        }
    }

    public final void i(Task task) {
        Task task2;
        Task taskV;
        TaskCompletionSource taskCompletionSource = this.o;
        ca3 ca3Var = ((k02) this.m.b).b;
        int i = 2;
        if (ca3.l(((File) ca3Var.e).listFiles()).isEmpty() && ca3.l(((File) ca3Var.f).listFiles()).isEmpty() && ca3.l(((File) ca3Var.k).listFiles()).isEmpty()) {
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "No crash reports are available to be sent.", null);
            }
            taskCompletionSource.trySetResult(Boolean.FALSE);
            return;
        }
        nh4 nh4Var = nh4.c;
        nh4Var.o("Crash reports are available to be sent.");
        ka2 ka2Var = this.b;
        if (ka2Var.b()) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Automatic data collection is enabled. Allowing upload.", null);
            }
            taskCompletionSource.trySetResult(Boolean.FALSE);
            taskV = Tasks.forResult(Boolean.TRUE);
        } else {
            nh4Var.h("Automatic data collection is disabled.");
            nh4Var.o("Notifying that unsent reports are available.");
            taskCompletionSource.trySetResult(Boolean.TRUE);
            synchronized (ka2Var.c) {
                task2 = ka2Var.d.getTask();
            }
            Task taskOnSuccessTask = task2.onSuccessTask(new ge());
            nh4Var.h("Waiting for send/deleteUnsentReports to be called.");
            taskV = nc8.V(taskOnSuccessTask, this.p.getTask());
        }
        taskV.onSuccessTask((o02) this.e.a, new yf1(this, task, i, false));
    }
}
