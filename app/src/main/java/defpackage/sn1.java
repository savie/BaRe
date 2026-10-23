package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.material.internal.CheckableImageButton;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.CrashlyticsRegistrar;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.pcloud.sdk.internal.a;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sn1 implements mo1, er5, Continuation, v51, hm6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ sn1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.hm6
    public Object a(Response response) {
        return ((gw3) ((a) this.b).f(response, gw3.class)).d();
    }

    @Override // defpackage.v51
    public void b() {
        CheckableImageButton checkableImageButton = ((pw2) this.b).c;
        wx3.E(checkableImageButton, checkableImageButton.getContentDescription());
    }

    @Override // defpackage.er5
    public Object construct() {
        Class cls = (Class) this.b;
        try {
            return xe8.a.a(cls);
        } catch (Exception e) {
            e6.i(fz5.l(cls, "Unable to create instance of ", ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."), e);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0423  */
    /* JADX WARN: Code duplicated, block: B:103:0x042c  */
    /* JADX WARN: Code duplicated, block: B:105:0x0435  */
    /* JADX WARN: Code duplicated, block: B:106:0x043a  */
    /* JADX WARN: Code duplicated, block: B:128:0x0578  */
    /* JADX WARN: Code duplicated, block: B:130:0x0581  */
    /* JADX WARN: Code duplicated, block: B:134:0x05a1  */
    /* JADX WARN: Code duplicated, block: B:142:0x0607  */
    /* JADX WARN: Code duplicated, block: B:144:0x0616  */
    /* JADX WARN: Code duplicated, block: B:147:0x03d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x0242 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x0218 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:161:0x031b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x0316 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0211  */
    /* JADX WARN: Code duplicated, block: B:44:0x021e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0275  */
    /* JADX WARN: Code duplicated, block: B:54:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:56:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:57:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:61:0x0301  */
    /* JADX WARN: Code duplicated, block: B:63:0x0307  */
    /* JADX WARN: Code duplicated, block: B:68:0x032f A[LOOP:3: B:66:0x0329->B:68:0x032f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:71:0x0343  */
    /* JADX WARN: Code duplicated, block: B:72:0x034a  */
    /* JADX WARN: Code duplicated, block: B:76:0x0350  */
    /* JADX WARN: Code duplicated, block: B:82:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:84:0x03b7  */
    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        s02 s02Var;
        ka2 ka2Var;
        String str;
        int i;
        Throwable th;
        String strJ;
        String str2;
        FirebaseCrashlytics firebaseCrashlytics;
        long jCurrentTimeMillis;
        String strM;
        cq cqVarA;
        Context context;
        String str3;
        String str4;
        String str5;
        String strD;
        fo8 fo8Var;
        s79 s79Var;
        km8 km8Var;
        ig9 ig9Var;
        String strK;
        String strReplaceAll;
        String strReplaceAll2;
        int iS;
        String string;
        String[] strArr;
        ArrayList arrayList;
        int i2;
        StringBuilder sb;
        Iterator it;
        String string2;
        String strW;
        f80 f80Var;
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        fa7 fa7VarB;
        ka2 ka2Var2;
        Task taskOnSuccessTask;
        Context context2;
        boolean z;
        String str6;
        s02 s02Var2;
        boolean zExists;
        NetworkInfo activeNetworkInfo;
        Resources resources;
        fa7 fa7VarB2;
        String str7;
        String string3;
        int i3 = this.a;
        Object obj = this.b;
        switch (i3) {
            case 0:
                return obj;
            default:
                CrashlyticsRegistrar crashlyticsRegistrar = (CrashlyticsRegistrar) obj;
                int i4 = CrashlyticsRegistrar.d;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                FirebaseApp firebaseApp = (FirebaseApp) pp0Var.b(FirebaseApp.class);
                qg3 qg3Var = (qg3) pp0Var.b(qg3.class);
                lu5 lu5VarH = pp0Var.h(az1.class);
                lu5 lu5VarH2 = pp0Var.h(ab.class);
                lu5 lu5VarH3 = pp0Var.h(vg3.class);
                ExecutorService executorService = (ExecutorService) pp0Var.g(crashlyticsRegistrar.a);
                ExecutorService executorService2 = (ExecutorService) pp0Var.g(crashlyticsRegistrar.b);
                ExecutorService executorService3 = (ExecutorService) pp0Var.g(crashlyticsRegistrar.c);
                Context applicationContext = firebaseApp.getApplicationContext();
                String packageName = applicationContext.getPackageName();
                Log.i("FirebaseCrashlytics", "Initializing Firebase Crashlytics 20.0.6 for " + packageName, null);
                executorService.getClass();
                executorService2.getClass();
                s02 s02Var3 = new s02();
                s02Var3.a = new o02(executorService);
                s02Var3.b = new o02(executorService);
                Tasks.forResult(null);
                s02Var3.c = new o02(executorService2);
                ca3 ca3Var = new ca3(applicationContext);
                ka2 ka2Var3 = new ka2(firebaseApp);
                k94 k94Var = new k94(applicationContext, packageName, qg3Var, ka2Var3);
                cz1 cz1Var = new cz1(lu5VarH);
                db dbVar = new db(lu5VarH2);
                oy1 oy1Var = new oy1(ka2Var3, ca3Var);
                ch3 ch3Var = ch3.a;
                h97 h97Var = h97.a;
                ch3 ch3Var2 = ch3.a;
                ah3 ah3VarA = ch3.a(h97Var);
                if (ah3VarA.b != null) {
                    Log.d("FirebaseSessions", "Subscriber " + h97Var + " already registered.");
                } else {
                    ah3VarA.b = oy1Var;
                    Log.d("FirebaseSessions", "Subscriber " + h97Var + " registered.");
                    ah3VarA.a.countDown();
                }
                zy1 zy1Var = new zy1(firebaseApp, k94Var, cz1Var, ka2Var3, new bb(dbVar, 0), new cb(dbVar), ca3Var, oy1Var, new nh(lu5VarH3, 12), s02Var3);
                s02 s02Var4 = zy1Var.p;
                String applicationId = firebaseApp.getOptions().getApplicationId();
                int iS2 = jm1.s(applicationContext, "com.google.firebase.crashlytics.mapping_file_id", "string");
                if (iS2 == 0) {
                    iS2 = jm1.s(applicationContext, "com.crashlytics.android.build_id", "string");
                }
                String string4 = iS2 != 0 ? applicationContext.getResources().getString(iS2) : null;
                ArrayList<cx0> arrayList2 = new ArrayList();
                int iS3 = jm1.s(applicationContext, "com.google.firebase.crashlytics.build_ids_lib", "array");
                int iS4 = jm1.s(applicationContext, "com.google.firebase.crashlytics.build_ids_arch", "array");
                int iS5 = jm1.s(applicationContext, "com.google.firebase.crashlytics.build_ids_build_id", "array");
                try {
                    if (iS3 == 0 || iS4 == 0 || iS5 == 0) {
                        s02Var = s02Var4;
                        ka2Var = ka2Var3;
                        str = applicationId;
                        String str8 = String.format("Could not find resources: %d %d %d", Integer.valueOf(iS3), Integer.valueOf(iS4), Integer.valueOf(iS5));
                        i = 3;
                        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                            th = null;
                            Log.d("FirebaseCrashlytics", str8, null);
                        }
                        strJ = xs1.j("Mapping file ID is: ", string4);
                        if (Log.isLoggable("FirebaseCrashlytics", i)) {
                            Log.d("FirebaseCrashlytics", strJ, th);
                        }
                        for (cx0 cx0Var : arrayList2) {
                            String str9 = cx0Var.a;
                            String str10 = cx0Var.b;
                            String str11 = cx0Var.c;
                            StringBuilder sbP = u48.p("Build id for ", str9, " on ", str10, ": ");
                            sbP.append(str11);
                            string3 = sbP.toString();
                            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                Log.d("FirebaseCrashlytics", string3, null);
                            }
                        }
                        str2 = str;
                        cqVarA = cq.a(applicationContext, k94Var, str2, string4, arrayList2, new oe(applicationContext));
                        context = applicationContext;
                        str3 = "Installer package name is: " + cqVarA.d;
                        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                            Log.v("FirebaseCrashlytics", str3, null);
                        }
                        ma2 ma2Var = new ma2(9);
                        str4 = cqVarA.f;
                        str5 = cqVarA.g;
                        strD = k94Var.d();
                        fo8Var = new fo8(18);
                        s79Var = new s79(fo8Var, 8);
                        km8Var = new km8(ca3Var);
                        Locale locale = Locale.US;
                        ig9Var = new ig9(eq3.k("https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/", str2, "/settings"), ma2Var);
                        String str12 = Build.MANUFACTURER;
                        String str13 = k94.h;
                        strK = dj7.k(str12.replaceAll(str13, ""), "/", Build.MODEL.replaceAll(str13, ""));
                        strReplaceAll = Build.VERSION.INCREMENTAL.replaceAll(str13, "");
                        strReplaceAll2 = Build.VERSION.RELEASE.replaceAll(str13, "");
                        iS = jm1.s(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
                        if (iS == 0) {
                            iS = jm1.s(context, "com.crashlytics.android.build_id", "string");
                        }
                        if (iS != 0) {
                            string = context.getResources().getString(iS);
                        } else {
                            string = null;
                        }
                        strArr = new String[]{string, str2, str5, str4};
                        arrayList = new ArrayList();
                        i2 = 0;
                        while (true) {
                            if (i2 < 4) {
                                Context context3 = context;
                                Collections.sort(arrayList);
                                sb = new StringBuilder();
                                it = arrayList.iterator();
                                while (it.hasNext()) {
                                    sb.append((String) it.next());
                                }
                                string2 = sb.toString();
                                if (string2.length() > 0) {
                                    strW = jm1.W(string2);
                                } else {
                                    strW = null;
                                }
                                f80Var = new f80(context3, new sa7(str2, strK, strReplaceAll, strReplaceAll2, k94Var, strW, str5, str4, xs1.c(strD == null ? 1 : 4)), fo8Var, s79Var, km8Var, ig9Var, ka2Var);
                                atomicReference = (AtomicReference) f80Var.i;
                                atomicReference2 = (AtomicReference) f80Var.h;
                                if (((Context) f80Var.a).getSharedPreferences("com.google.firebase.crashlytics", 0).getString("existing_instance_identifier", "").equals(((sa7) f80Var.b).f) || (fa7VarB2 = f80Var.b(1)) == null) {
                                    fa7VarB = f80Var.b(3);
                                    if (fa7VarB != null) {
                                        atomicReference2.set(fa7VarB);
                                        ((TaskCompletionSource) atomicReference.get()).trySetResult(fa7VarB);
                                    }
                                    ka2Var2 = (ka2) f80Var.g;
                                    Task task = ka2Var2.h.getTask();
                                    synchronized (ka2Var2.c) {
                                        Task task2 = ka2Var2.d.getTask();
                                        break;
                                    }
                                    taskOnSuccessTask = nc8.V(task, task2).onSuccessTask((o02) s02Var3.a, new oe(f80Var, s02Var3, 14, false));
                                } else {
                                    atomicReference2.set(fa7VarB2);
                                    ((TaskCompletionSource) atomicReference.get()).trySetResult(fa7VarB2);
                                    taskOnSuccessTask = Tasks.forResult(null);
                                }
                                taskOnSuccessTask.addOnFailureListener(executorService3, new q(10));
                                ca3 ca3Var2 = zy1Var.j;
                                context2 = zy1Var.a;
                                if (context2 != null || (resources = context2.getResources()) == null) {
                                    z = true;
                                } else {
                                    int iS6 = jm1.s(context2, "com.crashlytics.RequireBuildId", "bool");
                                    if (iS6 > 0) {
                                        z = resources.getBoolean(iS6);
                                    } else {
                                        int iS7 = jm1.s(context2, "com.crashlytics.RequireBuildId", "string");
                                        if (iS7 > 0) {
                                            z = Boolean.parseBoolean(context2.getString(iS7));
                                        } else {
                                            z = true;
                                        }
                                    }
                                }
                                str6 = cqVarA.b;
                                if (z) {
                                    if (TextUtils.isEmpty(str6)) {
                                        Log.e("FirebaseCrashlytics", ".");
                                        Log.e("FirebaseCrashlytics", ".     |  | ");
                                        Log.e("FirebaseCrashlytics", ".     |  |");
                                        Log.e("FirebaseCrashlytics", ".     |  |");
                                        Log.e("FirebaseCrashlytics", ".   \\ |  | /");
                                        Log.e("FirebaseCrashlytics", ".    \\    /");
                                        Log.e("FirebaseCrashlytics", ".     \\  /");
                                        Log.e("FirebaseCrashlytics", ".      \\/");
                                        Log.e("FirebaseCrashlytics", ".");
                                        Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
                                        Log.e("FirebaseCrashlytics", ".");
                                        Log.e("FirebaseCrashlytics", ".      /\\");
                                        Log.e("FirebaseCrashlytics", ".     /  \\");
                                        Log.e("FirebaseCrashlytics", ".    /    \\");
                                        Log.e("FirebaseCrashlytics", ".   / |  | \\");
                                        Log.e("FirebaseCrashlytics", ".     |  |");
                                        Log.e("FirebaseCrashlytics", ".     |  |");
                                        Log.e("FirebaseCrashlytics", ".     |  |");
                                        Log.e("FirebaseCrashlytics", ".");
                                        l0.e("The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
                                        return null;
                                    }
                                } else if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                                    Log.v("FirebaseCrashlytics", "Configured not to require a build ID.", null);
                                }
                                String str14 = new py0().a;
                                try {
                                    int i5 = 3;
                                    zy1Var.f = new yf1(i5, "crash_marker", ca3Var2);
                                    zy1Var.e = new yf1(i5, "initialization_marker", ca3Var2);
                                    s02Var2 = s02Var;
                                    i75 i75Var = new i75(str14, ca3Var2, s02Var2);
                                    ot9 ot9Var = new ot9(ca3Var2);
                                    oe oeVar = new oe(new uk7[]{new sl4()});
                                    ((lu5) zy1Var.o.b).a(new c6(11));
                                    zy1Var.h = new sy1(zy1Var.a, zy1Var.i, zy1Var.b, zy1Var.j, zy1Var.f, cqVarA, i75Var, ot9Var, ca3.e(zy1Var.a, zy1Var.i, zy1Var.j, cqVarA, ot9Var, i75Var, oeVar, f80Var, zy1Var.c, zy1Var.m, zy1Var.p), zy1Var.n, zy1Var.l, zy1Var.m, zy1Var.p);
                                    yf1 yf1Var = zy1Var.e;
                                    ca3 ca3Var3 = (ca3) yf1Var.c;
                                    String str15 = (String) yf1Var.b;
                                    ca3Var3.getClass();
                                    zExists = new File((File) ca3Var3.c, str15).exists();
                                    try {
                                        zy1Var.g = Boolean.TRUE.equals((Boolean) ((o02) s02Var2.a).a.submit(new q80(zy1Var, 1)).get(3L, TimeUnit.SECONDS));
                                    } catch (Exception unused) {
                                        zy1Var.g = false;
                                    }
                                    sy1 sy1Var = zy1Var.h;
                                    Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
                                    ((o02) sy1Var.e.a).a(new av1(1, sy1Var, str14));
                                    m02 m02Var = new m02(new km5(sy1Var, 7), f80Var, defaultUncaughtExceptionHandler, sy1Var.j);
                                    sy1Var.n = m02Var;
                                    Thread.setDefaultUncaughtExceptionHandler(m02Var);
                                    if (!zExists && (context2.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0 || ((activeNetworkInfo = ((ConnectivityManager) context2.getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.isConnectedOrConnecting()))) {
                                        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                            Log.d("FirebaseCrashlytics", "Crashlytics did not finish previous background initialization. Initializing synchronously.", null);
                                        }
                                        zy1Var.b(f80Var);
                                    } else {
                                        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                            Log.d("FirebaseCrashlytics", "Successfully configured exception handler.", null);
                                        }
                                        ((o02) s02Var2.a).a(new ty1(0, zy1Var, f80Var));
                                    }
                                    break;
                                } catch (Exception e) {
                                    Log.e("FirebaseCrashlytics", "Crashlytics was not started due to an exception during initialization", e);
                                    zy1Var.h = null;
                                }
                                firebaseCrashlytics = new FirebaseCrashlytics(zy1Var);
                                jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                                if (jCurrentTimeMillis > 16) {
                                    return firebaseCrashlytics;
                                }
                                strM = fz5.m("Initializing Crashlytics blocked main for ", " ms", jCurrentTimeMillis);
                                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                    return firebaseCrashlytics;
                                }
                                Log.d("FirebaseCrashlytics", strM, null);
                                return firebaseCrashlytics;
                            }
                            str7 = strArr[i2];
                            Context context4 = context;
                            if (str7 != null) {
                                arrayList.add(str7.replace("-", "").toLowerCase(Locale.US));
                            }
                            i2++;
                            context = context4;
                        }
                    } else {
                        String[] stringArray = applicationContext.getResources().getStringArray(iS3);
                        String[] stringArray2 = applicationContext.getResources().getStringArray(iS4);
                        String[] stringArray3 = applicationContext.getResources().getStringArray(iS5);
                        ka2Var = ka2Var3;
                        if (stringArray.length == stringArray3.length && stringArray2.length == stringArray3.length) {
                            int i6 = 0;
                            while (i6 < stringArray3.length) {
                                int i7 = i6;
                                arrayList2.add(new cx0(stringArray[i7], stringArray2[i7], stringArray3[i7]));
                                i6 = i7 + 1;
                                applicationId = applicationId;
                                s02Var4 = s02Var4;
                            }
                            s02Var = s02Var4;
                            str = applicationId;
                        } else {
                            s02Var = s02Var4;
                            str = applicationId;
                            String str16 = String.format("Lengths did not match: %d %d %d", Integer.valueOf(stringArray.length), Integer.valueOf(stringArray2.length), Integer.valueOf(stringArray3.length));
                            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                Log.d("FirebaseCrashlytics", str16, null);
                            }
                        }
                        i = 3;
                    }
                    cqVarA = cq.a(applicationContext, k94Var, str2, string4, arrayList2, new oe(applicationContext));
                    context = applicationContext;
                    str3 = "Installer package name is: " + cqVarA.d;
                    if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                        Log.v("FirebaseCrashlytics", str3, null);
                    }
                    ma2 ma2Var2 = new ma2(9);
                    str4 = cqVarA.f;
                    str5 = cqVarA.g;
                    strD = k94Var.d();
                    fo8Var = new fo8(18);
                    s79Var = new s79(fo8Var, 8);
                    km8Var = new km8(ca3Var);
                    Locale locale2 = Locale.US;
                    ig9Var = new ig9(eq3.k("https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/", str2, "/settings"), ma2Var2);
                    String str17 = Build.MANUFACTURER;
                    String str18 = k94.h;
                    strK = dj7.k(str17.replaceAll(str18, ""), "/", Build.MODEL.replaceAll(str18, ""));
                    strReplaceAll = Build.VERSION.INCREMENTAL.replaceAll(str18, "");
                    strReplaceAll2 = Build.VERSION.RELEASE.replaceAll(str18, "");
                    iS = jm1.s(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
                    if (iS == 0) {
                        iS = jm1.s(context, "com.crashlytics.android.build_id", "string");
                    }
                    if (iS != 0) {
                        string = context.getResources().getString(iS);
                    } else {
                        string = null;
                    }
                    strArr = new String[]{string, str2, str5, str4};
                    arrayList = new ArrayList();
                    i2 = 0;
                    while (true) {
                        if (i2 < 4) {
                            Context context5 = context;
                            Collections.sort(arrayList);
                            sb = new StringBuilder();
                            it = arrayList.iterator();
                            while (it.hasNext()) {
                                sb.append((String) it.next());
                            }
                            string2 = sb.toString();
                            if (string2.length() > 0) {
                                strW = jm1.W(string2);
                            } else {
                                strW = null;
                            }
                            f80Var = new f80(context5, new sa7(str2, strK, strReplaceAll, strReplaceAll2, k94Var, strW, str5, str4, xs1.c(strD == null ? 1 : 4)), fo8Var, s79Var, km8Var, ig9Var, ka2Var);
                            atomicReference = (AtomicReference) f80Var.i;
                            atomicReference2 = (AtomicReference) f80Var.h;
                            if (((Context) f80Var.a).getSharedPreferences("com.google.firebase.crashlytics", 0).getString("existing_instance_identifier", "").equals(((sa7) f80Var.b).f)) {
                                fa7VarB = f80Var.b(3);
                                if (fa7VarB != null) {
                                    atomicReference2.set(fa7VarB);
                                    ((TaskCompletionSource) atomicReference.get()).trySetResult(fa7VarB);
                                }
                                ka2Var2 = (ka2) f80Var.g;
                                Task task3 = ka2Var2.h.getTask();
                                synchronized (ka2Var2.c) {
                                    Task task4 = ka2Var2.d.getTask();
                                    taskOnSuccessTask = nc8.V(task3, task4).onSuccessTask((o02) s02Var3.a, new oe(f80Var, s02Var3, 14, false));
                                }
                            } else {
                                fa7VarB = f80Var.b(3);
                                if (fa7VarB != null) {
                                    atomicReference2.set(fa7VarB);
                                    ((TaskCompletionSource) atomicReference.get()).trySetResult(fa7VarB);
                                }
                                ka2Var2 = (ka2) f80Var.g;
                                Task task5 = ka2Var2.h.getTask();
                                synchronized (ka2Var2.c) {
                                    Task task6 = ka2Var2.d.getTask();
                                    taskOnSuccessTask = nc8.V(task5, task6).onSuccessTask((o02) s02Var3.a, new oe(f80Var, s02Var3, 14, false));
                                }
                            }
                            taskOnSuccessTask.addOnFailureListener(executorService3, new q(10));
                            ca3 ca3Var4 = zy1Var.j;
                            context2 = zy1Var.a;
                            if (context2 != null) {
                                z = true;
                            } else {
                                z = true;
                            }
                            str6 = cqVarA.b;
                            if (z) {
                                if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                                    Log.v("FirebaseCrashlytics", "Configured not to require a build ID.", null);
                                }
                            } else if (TextUtils.isEmpty(str6)) {
                                Log.e("FirebaseCrashlytics", ".");
                                Log.e("FirebaseCrashlytics", ".     |  | ");
                                Log.e("FirebaseCrashlytics", ".     |  |");
                                Log.e("FirebaseCrashlytics", ".     |  |");
                                Log.e("FirebaseCrashlytics", ".   \\ |  | /");
                                Log.e("FirebaseCrashlytics", ".    \\    /");
                                Log.e("FirebaseCrashlytics", ".     \\  /");
                                Log.e("FirebaseCrashlytics", ".      \\/");
                                Log.e("FirebaseCrashlytics", ".");
                                Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
                                Log.e("FirebaseCrashlytics", ".");
                                Log.e("FirebaseCrashlytics", ".      /\\");
                                Log.e("FirebaseCrashlytics", ".     /  \\");
                                Log.e("FirebaseCrashlytics", ".    /    \\");
                                Log.e("FirebaseCrashlytics", ".   / |  | \\");
                                Log.e("FirebaseCrashlytics", ".     |  |");
                                Log.e("FirebaseCrashlytics", ".     |  |");
                                Log.e("FirebaseCrashlytics", ".     |  |");
                                Log.e("FirebaseCrashlytics", ".");
                                l0.e("The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
                                return null;
                            }
                            String str19 = new py0().a;
                            int i8 = 3;
                            zy1Var.f = new yf1(i8, "crash_marker", ca3Var4);
                            zy1Var.e = new yf1(i8, "initialization_marker", ca3Var4);
                            s02Var2 = s02Var;
                            i75 i75Var2 = new i75(str19, ca3Var4, s02Var2);
                            ot9 ot9Var2 = new ot9(ca3Var4);
                            oe oeVar2 = new oe(new uk7[]{new sl4()});
                            ((lu5) zy1Var.o.b).a(new c6(11));
                            zy1Var.h = new sy1(zy1Var.a, zy1Var.i, zy1Var.b, zy1Var.j, zy1Var.f, cqVarA, i75Var2, ot9Var2, ca3.e(zy1Var.a, zy1Var.i, zy1Var.j, cqVarA, ot9Var2, i75Var2, oeVar2, f80Var, zy1Var.c, zy1Var.m, zy1Var.p), zy1Var.n, zy1Var.l, zy1Var.m, zy1Var.p);
                            yf1 yf1Var2 = zy1Var.e;
                            ca3 ca3Var5 = (ca3) yf1Var2.c;
                            String str110 = (String) yf1Var2.b;
                            ca3Var5.getClass();
                            zExists = new File((File) ca3Var5.c, str110).exists();
                            zy1Var.g = Boolean.TRUE.equals((Boolean) ((o02) s02Var2.a).a.submit(new q80(zy1Var, 1)).get(3L, TimeUnit.SECONDS));
                            sy1 sy1Var2 = zy1Var.h;
                            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler2 = Thread.getDefaultUncaughtExceptionHandler();
                            ((o02) sy1Var2.e.a).a(new av1(1, sy1Var2, str19));
                            m02 m02Var2 = new m02(new km5(sy1Var2, 7), f80Var, defaultUncaughtExceptionHandler2, sy1Var2.j);
                            sy1Var2.n = m02Var2;
                            Thread.setDefaultUncaughtExceptionHandler(m02Var2);
                            if (!zExists) {
                                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                    Log.d("FirebaseCrashlytics", "Successfully configured exception handler.", null);
                                }
                                ((o02) s02Var2.a).a(new ty1(0, zy1Var, f80Var));
                            } else {
                                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                    Log.d("FirebaseCrashlytics", "Successfully configured exception handler.", null);
                                }
                                ((o02) s02Var2.a).a(new ty1(0, zy1Var, f80Var));
                            }
                            firebaseCrashlytics = new FirebaseCrashlytics(zy1Var);
                            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                            if (jCurrentTimeMillis > 16) {
                                return firebaseCrashlytics;
                            }
                            strM = fz5.m("Initializing Crashlytics blocked main for ", " ms", jCurrentTimeMillis);
                            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                return firebaseCrashlytics;
                            }
                            Log.d("FirebaseCrashlytics", strM, null);
                            return firebaseCrashlytics;
                        }
                        str7 = strArr[i2];
                        Context context6 = context;
                        if (str7 != null) {
                            arrayList.add(str7.replace("-", "").toLowerCase(Locale.US));
                        }
                        i2++;
                        context = context6;
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.e("FirebaseCrashlytics", "Error retrieving app package info.", e2);
                    firebaseCrashlytics = null;
                }
                th = null;
                strJ = xs1.j("Mapping file ID is: ", string4);
                if (Log.isLoggable("FirebaseCrashlytics", i)) {
                    Log.d("FirebaseCrashlytics", strJ, th);
                }
                while (r2.hasNext()) {
                    String str20 = cx0Var.a;
                    String str111 = cx0Var.b;
                    String str112 = cx0Var.c;
                    StringBuilder sbP2 = u48.p("Build id for ", str20, " on ", str111, ": ");
                    sbP2.append(str112);
                    string3 = sbP2.toString();
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", string3, null);
                    }
                }
                str2 = str;
                break;
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return (Task) ((Callable) this.b).call();
    }
}
