package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Environment;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.FileNotFoundException;
import java.lang.reflect.Field;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.PosixFileAttributes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g00 {
    public static final g00 a = new g00();
    public static final gv7 b = new gv7(new jx(1));
    public static final ex6 c = new ex6();
    public static final gv7 d = new gv7(new zj(2));
    public static final gv7 e = new gv7(new b7(4));

    public static boolean A(g00 g00Var, String str) {
        boolean z;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("show_system_apps", false);
            str.getClass();
            PackageInfo packageInfoQ = q(0, str);
            if (packageInfoQ != null) {
                return z(packageInfoQ, z);
            }
            if (!w(str)) {
                gs0 gs0Var = gs0.a;
                if (!gs0.c(str, is0.Hide)) {
                    return true;
                }
            }
            return false;
        } catch (ClassCastException unused) {
            z = false;
        }
    }

    public static void B(zm zmVar, ji jiVar) {
        zmVar.getClass();
        jiVar.getClass();
        if (!jiVar.checkInstalled()) {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            String string = contextC.getString(R.string.not_installed);
            string.getClass();
            zn4.e(new cv(14, contextC, string));
            return;
        }
        try {
            String packageName = jiVar.getPackageName();
            if (packageName == null) {
                return;
            }
            Intent launchIntentForPackage = zmVar.getPackageManager().getLaunchIntentForPackage(packageName);
            if (launchIntentForPackage == null) {
                Log.e("Util", "openApp: Package not found: ".concat(packageName));
            } else {
                launchIntentForPackage.addFlags(268435456);
                zmVar.startActivity(launchIntentForPackage);
            }
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = zmVar.getString(R.string.unknown_error_occured);
                message.getClass();
            }
            s35 s35Var = new s35(zmVar, R.style.M3AlertDialogTheme, new hv1(zmVar, R.style.M3AlertDialogTheme), null);
            ((ra) s35Var.b).f = message;
            String string2 = zmVar.getString(R.string.ok);
            string2.getClass();
            s35Var.t(string2, null);
            s35Var.m();
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0083 A[Catch: all -> 0x009f, TRY_ENTER, TRY_LEAVE, TryCatch #3 {, blocks: (B:34:0x006b, B:36:0x0071, B:38:0x0079, B:42:0x0083, B:46:0x0089, B:51:0x00a1), top: B:80:0x006b }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0087 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:46:0x0089 A[Catch: all -> 0x009f, TRY_ENTER, TRY_LEAVE, TryCatch #3 {, blocks: (B:34:0x006b, B:36:0x0071, B:38:0x0079, B:42:0x0083, B:46:0x0089, B:51:0x00a1), top: B:80:0x006b }] */
    public static void C() {
        synchronized (v53.a) {
            d45.b.getClass();
            if (d45.a() == null) {
                Log.d("_FavoriteAppsRepo", "User not signed in. Skipping repo setup.");
            } else if (!v53.b) {
                v53.b = true;
                Log.d("_FavoriteAppsRepo", "Initializing");
                zn4 zn4Var = zn4.a;
                zn4.c(new jx(10));
            }
        }
        synchronized (lr4.a) {
            if (d45.a() == null) {
                Log.d("LabelRepo", "User not signed in. Skipping repo setup.");
            } else if (!lr4.b) {
                lr4.b = true;
                Log.d("LabelRepo", "Initializing");
                zn4 zn4Var2 = zn4.a;
                zn4.c(new pu(9));
            }
        }
        synchronized (br1.a) {
            if (d45.a() == null) {
                Log.d("ConfigRepo", "User not signed in. Skipping repo setup.");
            } else if (!V.INSTANCE.getA()) {
                mp6 mp6Var = mp6.a;
                if (mp6.f()) {
                    if (br1.b) {
                        br1.b = true;
                        Log.d("ConfigRepo", "Initializing");
                        zn4 zn4Var3 = zn4.a;
                        zn4.c(new el(7));
                    }
                }
            } else if (br1.b) {
                br1.b = true;
                Log.d("ConfigRepo", "Initializing");
                zn4 zn4Var4 = zn4.a;
                zn4.c(new el(7));
            }
        }
        synchronized (gs0.a) {
            if (d45.a() == null) {
                Log.d("BlacklistRepo", "User not signed in. Skipping repo setup.");
            } else {
                if (gs0.b) {
                    return;
                }
                gs0.b = true;
                Log.d("BlacklistRepo", "Initializing");
                zn4 zn4Var5 = zn4.a;
                zn4.c(new fl(2));
            }
        }
    }

    public static void D(zm zmVar, ji jiVar) {
        zmVar.getClass();
        jiVar.getClass();
        if (!jiVar.checkInstalled()) {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            String string = contextC.getString(R.string.not_installed);
            string.getClass();
            zn4.e(new cv(14, contextC, string));
            return;
        }
        try {
            Intent data = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").addCategory("android.intent.category.DEFAULT").setData(Uri.parse("package:" + jiVar.getPackageName()));
            data.getClass();
            data.addFlags(268435456);
            zmVar.startActivity(data);
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = zmVar.getString(R.string.unknown_error_occured);
                message.getClass();
            }
            s35 s35Var = new s35(zmVar, R.style.M3AlertDialogTheme, new hv1(zmVar, R.style.M3AlertDialogTheme), null);
            ((ra) s35Var.b).f = message;
            String string2 = zmVar.getString(R.string.ok);
            string2.getClass();
            s35Var.t(string2, null);
            s35Var.m();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void E(int i, String str, String str2) throws FileNotFoundException {
        str.getClass();
        mp6 mp6Var = mp6.a;
        if (mp6.g) {
            jr7 jr7Var = new jr7(str2);
            if (!jr7Var.b("[ -e @@ ]") || !jr7Var.b("[ -d @@ ]")) {
                vr6.e$default(vr6.INSTANCE, "AppUtil", el1.Y0(x50.p0(new String[]{"performChownOnDir: dir=" + jr7Var + ", exists=" + jr7Var.b("[ -e @@ ]") + ", isDir=" + jr7Var.b("[ -d @@ ]"), el1.U0(mp6.a.h(new String[]{"ls -l | grep ".concat(nq7.B0(str2, '/'))}, ip6.SU))}), null, null, null, null, 63), null, 4, null);
            }
            if (!jr7Var.b("[ -e @@ ]")) {
                throw new FileNotFoundException(jr7Var.getPath());
            }
            boolean z = g42.a;
            String path = jr7Var.getPath();
            path.getClass();
            mp6.a.h(new String[]{g42.e(i, str, path)}, ip6.SU);
        }
    }

    public static void F(String str) {
        str.getClass();
        w13.q(g00.class, str);
    }

    public static String a(String str) throws PackageManager.NameNotFoundException {
        PackageManager packageManagerR = r();
        if (!b67.c()) {
            return packageManagerR.getInstallerPackageName(str);
        }
        InstallSourceInfo installSourceInfo = packageManagerR.getInstallSourceInfo(str);
        installSourceInfo.getClass();
        return installSourceInfo.getInstallingPackageName();
    }

    public static String b(q63 q63Var, Long l) {
        q63Var.getClass();
        long jA = q63Var.A();
        if (l.longValue() <= 0 || l.longValue() == jA) {
            return null;
        }
        p93 p93Var = p93.a;
        String strC = p93.c(l);
        String strC2 = p93.c(Long.valueOf(jA));
        return dj7.n(u48.p("Backup file size mismatch! Expected: ", strC, ", Found: ", strC2, ", Diff: "), p93.c(Long.valueOf(Math.abs(jA - l.longValue()))), ".");
    }

    public static void c(String str, boolean z) {
        str.getClass();
        mp6.a.j(z, new String[]{u48.k(i(), "pm clear --user ", TokenAuthenticationScheme.SCHEME_DELIMITER, str)}, ip6.SHIZUKU);
        F(str);
    }

    public static void d(String str, String str2, boolean z) {
        ApplicationInfo applicationInfo;
        str.getClass();
        str2.getClass();
        ai8.b();
        StringBuilder sbV = dj7.v("pm ", z ? "disable-user" : "enable", " --user ", i(), TokenAuthenticationScheme.SCHEME_DELIMITER);
        sbV.append(str);
        mp6.a.h(new String[]{sbV.toString()}, ip6.SHIZUKU);
        if (z) {
            return;
        }
        try {
            PackageInfo packageInfoQ = q(0, str);
            if (packageInfoQ == null || (applicationInfo = packageInfoQ.applicationInfo) == null || applicationInfo.enabled) {
                return;
            }
            vr6.w$default(vr6.INSTANCE, "AppUtil", "Failed to enable the app due to manufacturer restrictions. Executing a workaround...", null, 4, null);
            SwiftApp.Companion companion = SwiftApp.d;
            ai8.j(SwiftApp.Companion.c(), str);
            g(str);
        } catch (Exception unused) {
            vr6.e$default(vr6.INSTANCE, "AppUtil", "Workaround to enable app failed", null, 4, null);
        }
    }

    public static void e(ji jiVar, Integer num, String str, boolean z) {
        jiVar.getClass();
        if (num == null) {
            num = n(jiVar.getPackageName());
        }
        if (num != null && num.intValue() > 0) {
            f(jiVar.getDataDir(), jiVar.getDeDataDir(), num.intValue(), str, z);
            return;
        }
        throw new RuntimeException("fixDataOwnership: Unable to get package uid for " + jiVar.asString() + ". uid=" + num);
    }

    public static void f(String str, String str2, int i, String str3, boolean z) {
        ww4 ww4VarP = nc8.p();
        ww4VarP.addAll(j(str, Integer.valueOf(i), str3, z));
        ww4VarP.addAll(j(str2, Integer.valueOf(i), str3, z));
        ww4 ww4VarH = nc8.h(ww4VarP);
        if (ww4VarH.isEmpty()) {
            return;
        }
        mp6 mp6Var = mp6.a;
        String[] strArr = (String[]) ww4VarH.toArray(new String[0]);
        mp6.a.h((String[]) Arrays.copyOf(strArr, strArr.length), ip6.SU);
    }

    public static void g(String str) {
        str.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
        } else {
            mp6.a.h(new String[]{"am force-stop ".concat(str)}, ip6.SHIZUKU);
        }
    }

    public static String h(String str) {
        str.getClass();
        return uq7.T(str, ".", "");
    }

    public static int i() {
        Integer num = null;
        try {
            String str = (String) el1.U0(mp6.a.j(true, new String[]{(String) g42.v.getValue()}, ip6.SHIZUKU));
            Integer numW = str != null ? uq7.W(10, str) : null;
            if (x() && numW != null && numW.intValue() == 0) {
                String name = Environment.getExternalStorageDirectory().getName();
                name.getClass();
                numW = uq7.W(10, name);
                if (numW != null && numW.intValue() == 0) {
                    vr6.e$default(vr6.INSTANCE, "AppUtil", "getCurrentUser: Secondary user id still reported '0' when it shouldn't be!", null, 4, null);
                }
            }
            num = numW;
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "AppUtil", "getCurrentUser=".concat(io4.b(e2)), null, 4, null);
        }
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public static List j(String str, Integer num, String str2, boolean z) {
        String str3;
        if (str == null || str.length() == 0 || !new jr7(str).b("[ -e @@ ]")) {
            return ov2.a;
        }
        ArrayList arrayList = new ArrayList();
        if (str2 == null || str2.length() == 0 || nq7.j0(str2)) {
            str3 = x() ? String.format((String) g42.p.getValue(), Arrays.copyOf(new Object[]{str}, 1)) : String.format((String) g42.o.getValue(), Arrays.copyOf(new Object[]{str}, 1));
        } else {
            str3 = String.format((String) g42.q.getValue(), Arrays.copyOf(new Object[]{str2, str}, 2));
        }
        arrayList.add(str3);
        boolean z2 = g42.a;
        arrayList.add(g42.e(num.intValue(), String.valueOf(num.intValue()), str));
        if (z) {
            arrayList.add(String.format((String) g42.s.getValue(), Arrays.copyOf(new Object[]{str}, 1)));
        }
        return arrayList;
    }

    public static String k(q63 q63Var) {
        if (q63Var == null || !q63Var.j()) {
            q.f("Can't fetch gid! file=", q63Var, ", exists=", q63Var != null ? Boolean.valueOf(q63Var.j()) : null);
            return null;
        }
        Path path = q63Var.n().getFile().toPath();
        path.getClass();
        String string = ((PosixFileAttributes) Files.readAttributes(path, PosixFileAttributes.class, LinkOption.NOFOLLOW_LINKS)).group().toString();
        if (string.length() > 0) {
            return string;
        }
        throw new IllegalStateException(("Invalid gid for file=" + q63Var + ", gid=" + string).toString());
    }

    public static List m(final boolean z) {
        Exception exc;
        List<PackageInfo> installedPackages = r().getInstalledPackages(0);
        installedPackages.getClass();
        if (installedPackages.isEmpty()) {
            vr6.w$default(vr6.INSTANCE, "AppUtil: getInstalledApps", "No installed apps found, workaround search in progress", null, 4, null);
            try {
                mp6 mp6Var = mp6.a;
                boolean z2 = g42.a;
                List<String> listH = mp6Var.h(new String[]{g42.a("AQIsN1o92HK2PiHRIgUdcveNkX5tzYs4UaCUq8vRmxDE8T5XIiwJvDgRTKaAzg==")}, ip6.SHIZUKU);
                ArrayList arrayList = new ArrayList();
                for (String str : listH) {
                    String str2 = null;
                    if (uq7.V(str, "package:", false)) {
                        String strSubstring = str.substring(8);
                        if (strSubstring.length() > 0) {
                            str2 = strSubstring;
                        }
                    }
                    if (str2 != null) {
                        arrayList.add(str2);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    PackageInfo packageInfoQ = q(0, (String) it.next());
                    if (packageInfoQ != null) {
                        arrayList2.add(packageInfoQ);
                    }
                }
                try {
                    vr6.i$default(vr6.INSTANCE, "AppUtil: getInstalledApps", "Found " + arrayList2.size() + " packages using workaround", null, 4, null);
                    installedPackages = arrayList2;
                } catch (Exception e2) {
                    exc = e2;
                    installedPackages = arrayList2;
                    vr6.e$default(vr6.INSTANCE, "AppUtil: getInstalledApps", "Error while getting installed apps using workaround", exc, null, 8, null);
                }
            } catch (Exception e3) {
                exc = e3;
            }
        }
        return h77.C0(new q98(new me3(new ll1(installedPackages), true, new mt3() { // from class: b00
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                PackageInfo packageInfo = (PackageInfo) obj;
                g00 g00Var = g00.a;
                packageInfo.getClass();
                return Boolean.valueOf(g00.z(packageInfo, z));
            }
        }), new nk(2)));
    }

    public static Integer n(String str) {
        String string;
        str.getClass();
        try {
            return Integer.valueOf(r().getApplicationInfo(str, 0).uid);
        } catch (Exception e2) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, "AppUtil", "getInstalledPackageUid(non-root): ".concat(io4.b(e2)), null, 4, null);
            mp6 mp6Var = mp6.a;
            if (mp6.f()) {
                String str2 = (String) el1.U0(mp6Var.j(true, new String[]{String.format((String) g42.A.getValue(), Arrays.copyOf(new Object[]{str}, 1))}, ip6.SHIZUKU));
                Integer numW = (str2 == null || (string = nq7.H0(str2).toString()) == null) ? null : uq7.W(10, string);
                if (numW != null) {
                    return numW;
                }
                vr6.e$default(vr6Var, "AppUtil", "Unable to get uid even with root access", null, 4, null);
            }
            return null;
        }
    }

    public static Drawable o(q63 q63Var) {
        ApplicationInfo applicationInfo;
        PackageInfo packageInfoP = p(q63Var, 0);
        if (packageInfoP == null || (applicationInfo = packageInfoP.applicationInfo) == null) {
            return null;
        }
        applicationInfo.sourceDir = q63Var.v();
        applicationInfo.publicSourceDir = q63Var.v();
        SwiftApp.Companion companion = SwiftApp.d;
        return applicationInfo.loadIcon(SwiftApp.Companion.c().getPackageManager());
    }

    public static PackageInfo p(q63 q63Var, int i) {
        q63Var.getClass();
        if (!q63Var.b()) {
            SwiftApp.Companion companion = SwiftApp.d;
            return SwiftApp.Companion.c().getPackageManager().getPackageArchiveInfo(q63Var.v(), i);
        }
        z84 z84VarC = aq6.c();
        if (z84VarC != null) {
            return z84VarC.getPackageArchiveInfo(q63Var.v(), i);
        }
        return null;
    }

    public static PackageInfo q(int i, String str) {
        if (str == null) {
            return null;
        }
        try {
            return r().getPackageInfo(str, i);
        } catch (Exception unused) {
            return null;
        }
    }

    public static PackageManager r() {
        SwiftApp.Companion companion = SwiftApp.d;
        PackageManager packageManager = SwiftApp.Companion.c().getPackageManager();
        packageManager.getClass();
        return packageManager;
    }

    public static LinkedHashSet s(Set set) {
        Integer num;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (ji jiVar : kz4.g.c.a()) {
            if (jiVar.isInstalled() && (num = (Integer) io4.j("AppUtil", "getPackageNamesForUids", false, new ck(jiVar, 7), 12)) != null && set.contains(num)) {
                linkedHashSet.add(jiVar.getPackageName());
            }
        }
        return linkedHashSet;
    }

    public static LinkedHashSet t(String str) {
        str.getClass();
        PackageInfo packageInfoQ = q(15, str);
        if (packageInfoQ == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ActivityInfo[] activityInfoArr = packageInfoQ.activities;
        if (activityInfoArr != null) {
            ArrayList arrayList = new ArrayList(activityInfoArr.length);
            for (ActivityInfo activityInfo : activityInfoArr) {
                arrayList.add(activityInfo.processName);
            }
            linkedHashSet.addAll(arrayList);
        }
        ServiceInfo[] serviceInfoArr = packageInfoQ.services;
        if (serviceInfoArr != null) {
            ArrayList arrayList2 = new ArrayList(serviceInfoArr.length);
            for (ServiceInfo serviceInfo : serviceInfoArr) {
                arrayList2.add(serviceInfo.processName);
            }
            linkedHashSet.addAll(arrayList2);
        }
        ActivityInfo[] activityInfoArr2 = packageInfoQ.receivers;
        if (activityInfoArr2 != null) {
            ArrayList arrayList3 = new ArrayList(activityInfoArr2.length);
            for (ActivityInfo activityInfo2 : activityInfoArr2) {
                arrayList3.add(activityInfo2.processName);
            }
            linkedHashSet.addAll(arrayList3);
        }
        ProviderInfo[] providerInfoArr = packageInfoQ.providers;
        if (providerInfoArr != null) {
            ArrayList arrayList4 = new ArrayList(providerInfoArr.length);
            for (ProviderInfo providerInfo : providerInfoArr) {
                arrayList4.add(providerInfo.processName);
            }
            linkedHashSet.addAll(arrayList4);
        }
        if (linkedHashSet.isEmpty()) {
            return null;
        }
        return linkedHashSet;
    }

    public static String u(String str) {
        if (str == null || str.length() == 0 || !new jr7(str).b("[ -e @@ ]")) {
            return null;
        }
        mp6 mp6Var = mp6.a;
        return (String) el1.U0(mp6.a.h(new String[]{String.format((String) g42.n.getValue(), Arrays.copyOf(new Object[]{str}, 1))}, ip6.SU));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0040  */
    public static ArrayList v(String str) {
        ArrayList<String> arrayList;
        PackageInfo packageInfoP;
        ApplicationInfo applicationInfo;
        String[] strArr;
        str.getClass();
        PackageInfo packageInfoQ = q(1024, str);
        if (packageInfoQ == null || (applicationInfo = packageInfoQ.applicationInfo) == null || (strArr = applicationInfo.sharedLibraryFiles) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (String str2 : strArr) {
                str2.getClass();
                if (uq7.V(str2, "/data/app/", false) && uq7.O(str2, ".apk", false)) {
                    arrayList.add(str2);
                }
            }
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
        }
        if (arrayList != null) {
            ArrayList arrayList2 = new ArrayList();
            for (String str3 : arrayList) {
                str3.getClass();
                q63 q63Var = new q63(str3, 1);
                if (!q63Var.j()) {
                    q63Var = null;
                }
                if (q63Var != null && (packageInfoP = p(q63Var, 0)) != null) {
                    String str4 = packageInfoP.packageName;
                    str4.getClass();
                    arrayList2.add(new yc7(str4, str3));
                }
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : arrayList2) {
                if (((yc7) obj).isValid()) {
                    arrayList3.add(obj);
                }
            }
            if (!arrayList3.isEmpty()) {
                return arrayList3;
            }
        }
        return null;
    }

    public static boolean w(String str) {
        str.getClass();
        return nq7.Z(str, "org.swiftapps.swiftbackup", false) || str.equals("com.topjohnwu.magisk");
    }

    public static boolean x() {
        return ((Boolean) b.getValue()).booleanValue();
    }

    public static boolean y(PackageInfo packageInfo) {
        ApplicationInfo applicationInfo;
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) {
            return false;
        }
        return (applicationInfo.flags & 1) != 0 || pe4.d(packageInfo.sharedUserId, "android.uid.system");
    }

    /* JADX WARN: Code duplicated, block: B:37:0x007d  */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    public static boolean z(PackageInfo packageInfo, boolean z) {
        boolean z2;
        boolean z3;
        packageInfo.getClass();
        String str = packageInfo.packageName;
        str.getClass();
        if (b67.b()) {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo == null || !applicationInfo.isResourceOverlay()) {
                z2 = false;
            } else {
                z2 = true;
            }
        } else {
            String str2 = packageInfo.packageName;
            str2.getClass();
            if (nq7.Z(str2, "withOMS", false)) {
                z2 = true;
            } else {
                try {
                    Field fieldM = tu0.m(packageInfo.getClass(), "overlayTarget");
                    if (fieldM == null) {
                        z2 = false;
                    } else {
                        String str3 = (String) fieldM.get(packageInfo);
                        z2 = !(str3 == null || str3.length() == 0);
                    }
                } catch (Exception e2) {
                    u48.s("isOverlay: ", e2.getMessage(), "AppUtil");
                }
            }
        }
        if (!z2 && !w(str)) {
            gs0 gs0Var = gs0.a;
            z3 = gs0.c(str, is0.Hide) || (!z && y(packageInfo)) || str.equals(mp6.i);
        }
        return !z3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v84, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v8 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r8v21, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v19, types: [int] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v22, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v9 */
    public final c00 l(boolean z) {
        q63 q63Var;
        ArrayList arrayList;
        hk hkVar;
        ji jiVarFromMetadataFile;
        q63 q63Var2;
        int i;
        ArrayList arrayList2;
        Iterator it;
        ?? r9;
        ?? r23;
        boolean zI;
        ArrayList arrayListB;
        Object obj = null;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        String str = ry5.u;
        ArrayList arrayListB2 = new q63(qy5.f(false, null).b, 2).B();
        int i2 = 1;
        if (arrayListB2 != null) {
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : arrayListB2) {
                if (((q63) obj2).x()) {
                    arrayList3.add(obj2);
                }
            }
            ArrayList arrayList4 = !arrayList3.isEmpty() ? arrayList3 : null;
            if (arrayList4 != null) {
                vr6.i$default(vr6.INSTANCE, "AppUtil", arrayList4.size() + " directories in accounts folder: " + el1.Y0(arrayList4, null, null, null, new rx(i2), 31), null, 4, null);
            }
        }
        String str2 = ry5.u;
        q63 q63Var3 = new q63(qy5.f(false, null).g, 2);
        q63 q63Var4 = new q63(eq3.j(qy5.f(false, null).f, "local_archived/"), 2);
        ArrayList arrayList5 = new ArrayList();
        for (q63 q63Var5 : fl1.A0(q63Var3, q63Var4)) {
            if (!q63Var5.j()) {
                q63Var5 = null;
            }
            if (q63Var5 != null && (arrayListB = q63Var5.B()) != null) {
                ArrayList arrayList6 = new ArrayList();
                for (Object obj3 : arrayListB) {
                    q63 q63Var6 = (q63) obj3;
                    if (q63Var6.y() && q63Var6.m().equals("xml")) {
                        arrayList6.add(obj3);
                    }
                }
                if (arrayList6.isEmpty()) {
                    arrayList6 = null;
                }
                if (arrayList6 != null) {
                    arrayList5.addAll(arrayList6);
                }
            }
        }
        if (!arrayList5.isEmpty()) {
            int size = arrayList5.size();
            String strH = xs1.h(size, "Migrating local backup files for ", " apps.");
            String str3 = "MigrationV5";
            vr6.i$default(vr6.INSTANCE, "MigrationV5", strH, null, 4, null);
            ArrayList arrayList7 = new ArrayList();
            Iterator it2 = arrayList5.iterator();
            int i3 = 0;
            ?? r4 = " to ";
            while (true) {
                boolean zHasNext = it2.hasNext();
                ex6 ex6Var = c;
                if (!zHasNext) {
                    q63Var = q63Var4;
                    ex6Var.i(obj);
                    break;
                }
                int i4 = i3 + 1;
                q63 q63Var7 = (q63) it2.next();
                f00 f00Var = new f00(i4, size, strH);
                ex6Var.i(f00Var);
                String strQ = q63Var7.q();
                try {
                    LocalMetadata localMetadataB = cu.b(q63Var7);
                    if (localMetadataB == null) {
                        q63Var2 = q63Var4;
                        i = size;
                        arrayList2 = arrayList7;
                        it = it2;
                        r9 = r4;
                    } else {
                        Long dateBackup = localMetadataB.getDateBackup();
                        ?? r24 = r4;
                        long jLongValue = dateBackup != null ? dateBackup.longValue() : q63Var7.z();
                        try {
                            q63 q63VarT = q63Var7.t();
                            q63 q63VarJ = q63VarT != null ? q63VarT.J(strQ + ".app") : null;
                            q63 q63VarT2 = q63Var7.t();
                            q63 q63VarJ2 = q63VarT2 != null ? q63VarT2.J(strQ + ".splits") : null;
                            q63 q63VarT3 = q63Var7.t();
                            q63 q63VarJ3 = q63VarT3 != null ? q63VarT3.J(strQ + ".dat") : null;
                            q63 q63VarT4 = q63Var7.t();
                            q63 q63VarJ4 = q63VarT4 != null ? q63VarT4.J(strQ + ".extdat") : null;
                            q63 q63VarT5 = q63Var7.t();
                            q63 q63VarJ5 = q63VarT5 != null ? q63VarT5.J(strQ + ".exp") : null;
                            q63 q63VarT6 = q63Var7.t();
                            q63 q63VarJ6 = q63VarT6 != null ? q63VarT6.J(strQ + ".med") : null;
                            q63 q63VarT7 = q63Var7.t();
                            List listP0 = x50.p0(new q63[]{q63VarJ, q63VarJ2, q63VarJ3, q63VarJ4, q63VarJ5, q63VarJ6, q63VarT7 != null ? q63VarT7.J(strQ + ".xml") : null});
                            ArrayList arrayList8 = new ArrayList();
                            for (Object obj4 : (ArrayList) listP0) {
                                if (((q63) obj4).j()) {
                                    arrayList8.add(obj4);
                                }
                            }
                            Parcelable.Creator<hk> creator = hk.CREATOR;
                            hk hkVar2 = new hk(fk.d(jLongValue, arrayList7), strQ, false);
                            q63.E(hkVar2.e());
                            String str4 = (String) hkVar2.H.getValue();
                            if (str4 != null) {
                                arrayList7.add(str4);
                            }
                            vr6.i$default(vr6.INSTANCE, str3, "Moving " + arrayList8.size() + " backup files for package '" + strQ + "' to directory " + hkVar2.e(), null, 4, null);
                            String str5 = str3;
                            try {
                                Iterator it3 = arrayList8.iterator();
                                r24 = r24;
                                while (it3.hasNext()) {
                                    try {
                                        q63 q63Var8 = (q63) it3.next();
                                        hk hkVar3 = hkVar2;
                                        Iterator it4 = it3;
                                        long jA = q63Var8.A();
                                        q63Var2 = q63Var4;
                                        try {
                                            q63 q63VarJ7 = hkVar3.e().J(q63Var8.p());
                                            String strP = q63Var8.p();
                                            p93 p93Var = p93.a;
                                            i = size;
                                            try {
                                                arrayList2 = arrayList7;
                                                try {
                                                    String str6 = strH + "\n\n" + (strP + "\n(" + p93.c(Long.valueOf(jA)) + ")");
                                                    try {
                                                        int i5 = f00Var.a;
                                                        r9 = f00Var.b;
                                                        it = it2;
                                                        try {
                                                            try {
                                                                ex6Var.i(new f00(i5, r9, str6));
                                                                try {
                                                                    zI = q63Var8.I(q63VarJ7);
                                                                    r9 = r24;
                                                                } catch (Exception e2) {
                                                                    String strG0 = yc9.g0(e2);
                                                                    ?? sb = new StringBuilder();
                                                                    sb.append("Error while moving file ");
                                                                    sb.append(q63Var8);
                                                                    ?? r10 = r24;
                                                                    sb.append(r10);
                                                                    sb.append(q63VarJ7);
                                                                    sb.append(": ");
                                                                    sb.append(strG0);
                                                                    Log.e(str5, sb.toString());
                                                                    zI = false;
                                                                    r9 = r10;
                                                                } catch (Throwable th) {
                                                                    th = th;
                                                                    str3 = str5;
                                                                    r23 = r24;
                                                                    r9 = r23;
                                                                    vr6.e$default(vr6.INSTANCE, str3, dj7.l("Error while migrating legacy backups of package '", strQ, "': ", yc9.g0(th)), null, 4, null);
                                                                    r4 = r9;
                                                                    i3 = i4;
                                                                    q63Var4 = q63Var2;
                                                                    size = i;
                                                                    arrayList7 = arrayList2;
                                                                    it2 = it;
                                                                    obj = null;
                                                                }
                                                                if (zI) {
                                                                    try {
                                                                        Log.i(str5, "Moved successful for file " + q63Var8.p());
                                                                    } catch (Throwable th2) {
                                                                        th = th2;
                                                                        str3 = str5;
                                                                        vr6.e$default(vr6.INSTANCE, str3, dj7.l("Error while migrating legacy backups of package '", strQ, "': ", yc9.g0(th)), null, 4, null);
                                                                        r4 = r9;
                                                                        i3 = i4;
                                                                        q63Var4 = q63Var2;
                                                                        size = i;
                                                                        arrayList7 = arrayList2;
                                                                        it2 = it;
                                                                        obj = null;
                                                                    }
                                                                } else {
                                                                    try {
                                                                        Log.e(str5, "Error while moving file " + q63Var8 + r9 + q63VarJ7 + ". Copying the file instead...");
                                                                        q63Var8.d(q63VarJ7, null);
                                                                    } catch (Throwable th3) {
                                                                        th = th3;
                                                                        str5 = str5;
                                                                        str3 = str5;
                                                                        vr6.e$default(vr6.INSTANCE, str3, dj7.l("Error while migrating legacy backups of package '", strQ, "': ", yc9.g0(th)), null, 4, null);
                                                                        r4 = r9;
                                                                        i3 = i4;
                                                                        q63Var4 = q63Var2;
                                                                        size = i;
                                                                        arrayList7 = arrayList2;
                                                                        it2 = it;
                                                                        obj = null;
                                                                    }
                                                                }
                                                                str5 = str5;
                                                                try {
                                                                    long jA2 = q63VarJ7.A();
                                                                    if (jA != jA2) {
                                                                        throw new IllegalStateException(("Mismatch between src and dest length: src: " + jA + ", dest: " + jA2).toString());
                                                                    }
                                                                    if (q63Var8.j()) {
                                                                        q63Var8.h();
                                                                    }
                                                                    str5 = str5;
                                                                    r24 = r9;
                                                                    hkVar2 = hkVar3;
                                                                    it3 = it4;
                                                                    q63Var4 = q63Var2;
                                                                    size = i;
                                                                    arrayList7 = arrayList2;
                                                                    it2 = it;
                                                                } catch (Throwable th4) {
                                                                    th = th4;
                                                                    str3 = str5;
                                                                    vr6.e$default(vr6.INSTANCE, str3, dj7.l("Error while migrating legacy backups of package '", strQ, "': ", yc9.g0(th)), null, 4, null);
                                                                    r4 = r9;
                                                                    i3 = i4;
                                                                    q63Var4 = q63Var2;
                                                                    size = i;
                                                                    arrayList7 = arrayList2;
                                                                    it2 = it;
                                                                    obj = null;
                                                                }
                                                            } catch (Throwable th5) {
                                                                th = th5;
                                                                str5 = str5;
                                                                r9 = r24;
                                                                str3 = str5;
                                                                vr6.e$default(vr6.INSTANCE, str3, dj7.l("Error while migrating legacy backups of package '", strQ, "': ", yc9.g0(th)), null, 4, null);
                                                                r4 = r9;
                                                                i3 = i4;
                                                                q63Var4 = q63Var2;
                                                                size = i;
                                                                arrayList7 = arrayList2;
                                                                it2 = it;
                                                                obj = null;
                                                            }
                                                        } catch (Throwable th6) {
                                                            th = th6;
                                                            str5 = str5;
                                                        }
                                                    } catch (Throwable th7) {
                                                        th = th7;
                                                        str5 = str5;
                                                        it = it2;
                                                    }
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    it = it2;
                                                    r9 = r24;
                                                    str3 = str5;
                                                    vr6.e$default(vr6.INSTANCE, str3, dj7.l("Error while migrating legacy backups of package '", strQ, "': ", yc9.g0(th)), null, 4, null);
                                                    r4 = r9;
                                                    i3 = i4;
                                                    q63Var4 = q63Var2;
                                                    size = i;
                                                    arrayList7 = arrayList2;
                                                    it2 = it;
                                                    obj = null;
                                                }
                                            } catch (Throwable th9) {
                                                th = th9;
                                                arrayList2 = arrayList7;
                                            }
                                        } catch (Throwable th10) {
                                            th = th10;
                                            i = size;
                                            arrayList2 = arrayList7;
                                            it = it2;
                                            r9 = r24;
                                            str5 = str5;
                                            str3 = str5;
                                            vr6.e$default(vr6.INSTANCE, str3, dj7.l("Error while migrating legacy backups of package '", strQ, "': ", yc9.g0(th)), null, 4, null);
                                            r4 = r9;
                                            i3 = i4;
                                            q63Var4 = q63Var2;
                                            size = i;
                                            arrayList7 = arrayList2;
                                            it2 = it;
                                            obj = null;
                                        }
                                    } catch (Throwable th11) {
                                        th = th11;
                                        q63Var2 = q63Var4;
                                    }
                                }
                                q63Var2 = q63Var4;
                                i = size;
                                arrayList2 = arrayList7;
                                it = it2;
                                r9 = r24;
                                str3 = str5;
                                try {
                                    vr6.i$default(vr6.INSTANCE, str3, "Successfully migrated backups for package " + strQ + " to new directory structure", null, 4, null);
                                } catch (Throwable th12) {
                                    th = th12;
                                    vr6.e$default(vr6.INSTANCE, str3, dj7.l("Error while migrating legacy backups of package '", strQ, "': ", yc9.g0(th)), null, 4, null);
                                }
                            } catch (Throwable th13) {
                                th = th13;
                                str3 = str5;
                                q63Var2 = q63Var4;
                                i = size;
                                arrayList2 = arrayList7;
                                it = it2;
                                r23 = r24;
                                r9 = r23;
                                vr6.e$default(vr6.INSTANCE, str3, dj7.l("Error while migrating legacy backups of package '", strQ, "': ", yc9.g0(th)), null, 4, null);
                                r4 = r9;
                                i3 = i4;
                                q63Var4 = q63Var2;
                                size = i;
                                arrayList7 = arrayList2;
                                it2 = it;
                                obj = null;
                            }
                        } catch (Throwable th14) {
                            th = th14;
                        }
                    }
                } catch (Throwable th15) {
                    th = th15;
                    q63Var2 = q63Var4;
                    i = size;
                    arrayList2 = arrayList7;
                    it = it2;
                    r9 = r4;
                }
                r4 = r9;
                i3 = i4;
                q63Var4 = q63Var2;
                size = i;
                arrayList7 = arrayList2;
                it2 = it;
                obj = null;
            }
        } else {
            q63Var = q63Var4;
        }
        String[] list = q63Var.n().getFile().list();
        if (list == null || list.length == 0) {
            q63Var.h();
        }
        List listM = m(z);
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayListB3 = q63Var3.B();
        if (arrayListB3 != null) {
            ArrayList arrayList10 = new ArrayList();
            for (Object obj5 : arrayListB3) {
                if (((q63) obj5).x()) {
                    arrayList10.add(obj5);
                }
            }
            arrayList = arrayList10;
        } else {
            arrayList = null;
        }
        vr6.i$default(vr6.INSTANCE, "AppUtil", (arrayList != null ? arrayList.size() : 0) + " package directories in " + q63Var3, null, 4, null);
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it5 = arrayList.iterator();
            while (it5.hasNext()) {
                String strP2 = ((q63) it5.next()).p();
                if (A(this, strP2)) {
                    if (!listM.isEmpty()) {
                        Iterator it6 = listM.iterator();
                        while (true) {
                            if (it6.hasNext()) {
                                if (pe4.d(((ji) it6.next()).getPackageName(), strP2)) {
                                }
                            }
                        }
                    }
                    Parcelable.Creator<hk> creator2 = hk.CREATOR;
                    List listB = fk.b(strP2);
                    if (listB != null && (hkVar = (hk) el1.U0(listB)) != null && (jiVarFromMetadataFile = ji.Companion.fromMetadataFile(hkVar.v())) != null) {
                        arrayList9.add(jiVarFromMetadataFile);
                    }
                }
            }
        }
        return new c00(0, listM, arrayList9);
    }
}
