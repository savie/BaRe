package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.net.Uri;
import android.os.Environment;
import android.os.Looper;
import android.provider.Settings;
import com.gun0912.tedpermission.TedPermissionActivity;
import java.util.AbstractList;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dz5 {
    public static final dz5 a = new dz5();
    public static final gv7 b = new gv7(new q9(11));
    public static final gv7 c = new gv7(new jx(16));
    public static final gv7 d = new gv7(new zj(13));
    public static final gv7 e = new gv7(new b7(24));
    public static final gv7 f = new gv7(new ov(12));

    public static void a(zm zmVar, t45 t45Var, String... strArr) {
        zmVar.getClass();
        if (b67.c() && x50.e0(strArr, el1.R0(c())) && n()) {
            t45Var.b(true, false);
            return;
        }
        kz7 kz7Var = new kz7();
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        kz7Var.c = strArr2;
        kz7Var.b = new cz5(t45Var, zmVar);
        if (od2.p(strArr2)) {
            c6.f("You must setPermissions() on TedPermission");
            return;
        }
        Context context = kz7Var.a;
        Intent intent = new Intent(context, (Class<?>) TedPermissionActivity.class);
        intent.putExtra("permissions", kz7Var.c);
        intent.putExtra("rationale_title", (CharSequence) null);
        intent.putExtra("rationale_message", (CharSequence) null);
        intent.putExtra("deny_title", (CharSequence) null);
        intent.putExtra("deny_message", (CharSequence) null);
        intent.putExtra("package_name", context.getPackageName());
        intent.putExtra("setting_button", kz7Var.d);
        intent.putExtra("denied_dialog_close_text", (CharSequence) kz7Var.e);
        intent.putExtra("rationale_confirm_text", (CharSequence) kz7Var.f);
        intent.putExtra("setting_button_text", (CharSequence) null);
        intent.putExtra("screen_orientation", kz7Var.g);
        intent.addFlags(268435456);
        intent.addFlags(262144);
        cz5 cz5Var = kz7Var.b;
        if (TedPermissionActivity.x == null) {
            TedPermissionActivity.x = new ArrayDeque();
        }
        TedPermissionActivity.x.push(cz5Var);
        context.startActivity(intent);
        String[] strArr3 = kz7Var.c;
        Context context2 = rz7.a;
        for (String str : strArr3) {
            rz7.a.getSharedPreferences("PREFS_NAME_PERMISSION", 0).edit().putBoolean("IS_FIRST_REQUEST_" + str, false).apply();
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x007a  */
    public static String b(Set set) throws PackageManager.NameNotFoundException {
        String string;
        StringBuilder sb = new StringBuilder();
        SwiftApp.Companion companion = SwiftApp.d;
        String string2 = SwiftApp.Companion.c().getString(R.string.permissions_needed_for_service);
        string2.getClass();
        sb.append(string2);
        sb.append(":\n\n");
        ArrayList arrayList = new ArrayList(hl1.G0(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            g00 g00Var = g00.a;
            PackageManager packageManagerR = g00.r();
            str.getClass();
            PermissionInfo permissionInfo = (PermissionInfo) io4.j("PermissionHelper", "getPermissionGroup", true, new jr4(str, 1), 8);
            Integer numValueOf = null;
            String str2 = permissionInfo != null ? permissionInfo.group : null;
            if (pe4.d(str2, "android.permission-group.UNDEFINED")) {
                str2 = null;
            }
            if (str2 == null || str2.length() == 0) {
                if (str.equals("android.permission.MANAGE_EXTERNAL_STORAGE") || str.equals("com.android.permission.GET_INSTALLED_APPS")) {
                    str2 = null;
                } else if (c().contains(str)) {
                    str2 = "android.permission-group.STORAGE";
                } else if (((Set) c.getValue()).contains(str)) {
                    str2 = "android.permission-group.SMS";
                } else if (((Set) e.getValue()).contains(str) && b67.a()) {
                    str2 = "android.permission-group.CALL_LOG";
                } else if (str.equals("android.permission.READ_CONTACTS")) {
                    str2 = "android.permission-group.CONTACTS";
                } else if (str.equals("android.permission.POST_NOTIFICATIONS") && b67.e()) {
                    str2 = "android.permission-group.NOTIFICATIONS";
                } else {
                    str2 = null;
                }
            }
            if (str2 == null || str2.length() == 0) {
                if (str.equals("android.permission.READ_CONTACTS")) {
                    numValueOf = Integer.valueOf(R.string.android_permission_name_contacts);
                } else if (str.equals("android.permission.MANAGE_EXTERNAL_STORAGE")) {
                    numValueOf = Integer.valueOf(R.string.android_permission_name_all_files_access);
                } else if (c().contains(str)) {
                    numValueOf = Integer.valueOf(R.string.android_permission_name_storage);
                } else if (str.equals("com.android.permission.GET_INSTALLED_APPS")) {
                    numValueOf = Integer.valueOf(R.string.android_permission_name_installed_apps);
                } else if (((Set) d.getValue()).contains(str)) {
                    numValueOf = Integer.valueOf(R.string.android_permission_name_sms);
                } else if (((Set) f.getValue()).contains(str) && b67.a()) {
                    numValueOf = Integer.valueOf(R.string.android_permission_name_call_logs);
                } else if (str.equals("android.permission.SCHEDULE_EXACT_ALARM")) {
                    numValueOf = Integer.valueOf(R.string.android_permission_alarms_and_reminders);
                } else if (str.equals("android.permission.POST_NOTIFICATIONS")) {
                    numValueOf = Integer.valueOf(R.string.notifications);
                } else if (str.equals("android.permission.ACCESS_LOCAL_NETWORK")) {
                    numValueOf = Integer.valueOf(R.string.android_permission_name_local_network);
                }
                if (numValueOf == null || numValueOf.intValue() <= 0) {
                    string = (String) el1.a1(nq7.x0(str, new String[]{"."}, 6));
                } else {
                    SwiftApp.Companion companion2 = SwiftApp.d;
                    string = SwiftApp.Companion.c().getString(numValueOf.intValue());
                    string.getClass();
                }
            } else {
                PermissionGroupInfo permissionGroupInfo = packageManagerR.getPermissionGroupInfo(str2, 0);
                permissionGroupInfo.getClass();
                string = permissionGroupInfo.loadLabel(packageManagerR).toString();
            }
            arrayList.add(string);
        }
        Iterator it2 = el1.v1(new LinkedHashSet(arrayList)).iterator();
        while (it2.hasNext()) {
            sb.append("• " + ((String) it2.next()) + "\n");
        }
        return nq7.H0(sb).toString();
    }

    public static Set c() {
        return (Set) b.getValue();
    }

    public static boolean d() {
        if (h("android.permission.ACCESS_LOCAL_NETWORK")) {
            return true;
        }
        mp6 mp6Var = mp6.a;
        if (!mp6.f()) {
            return false;
        }
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            vr6.w$default(vr6.INSTANCE, "PermissionHelper", "Skipping root/Shizuku permission grant on main thread: ".concat("android.permission.ACCESS_LOCAL_NETWORK"), null, 4, null);
            return false;
        }
        try {
            e("android.permission.ACCESS_LOCAL_NETWORK");
            return h("android.permission.ACCESS_LOCAL_NETWORK");
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "PermissionHelper", "Unable to grant permission with root/Shizuku: ".concat("android.permission.ACCESS_LOCAL_NETWORK"), e2, null, 8, null);
            return false;
        }
    }

    public static void e(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            boolean z = g42.a;
            SwiftApp.Companion companion = SwiftApp.d;
            String packageName = SwiftApp.Companion.c().getPackageName();
            packageName.getClass();
            str.getClass();
            arrayList.add(String.format((String) g42.g.getValue(), Arrays.copyOf(new Object[]{packageName, str}, 2)));
        }
        if (arrayList.isEmpty()) {
            return;
        }
        mp6 mp6Var = mp6.a;
        String[] strArr2 = (String[]) arrayList.toArray(new String[0]);
        mp6Var.h((String[]) Arrays.copyOf(strArr2, strArr2.length), ip6.SHIZUKU);
    }

    public static void f() {
        if (!b67.c()) {
            e("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE");
            return;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        String packageName = SwiftApp.Companion.c().getPackageName();
        packageName.getClass();
        eu euVar = eu.allow;
        euVar.getClass();
        mp6 mp6Var = mp6.a;
        boolean z = g42.a;
        String string = euVar.toString();
        string.getClass();
        mp6Var.j(true, new String[]{String.format(g42.d(), Arrays.copyOf(new Object[]{"set", packageName, "android:manage_external_storage", string}, 4))}, ip6.SHIZUKU);
    }

    public static boolean g() {
        return i((Set) f.getValue());
    }

    public static boolean h(String str) {
        str.getClass();
        if (str.equals("android.permission.MANAGE_EXTERNAL_STORAGE") && b67.c()) {
            return Environment.isExternalStorageManager();
        }
        if (str.equals("android.permission.POST_NOTIFICATIONS") && !b67.e()) {
            return true;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        return zh8.e(SwiftApp.Companion.c(), str) == 0;
    }

    public static boolean i(Set set) {
        set.getClass();
        if (set.isEmpty()) {
            return true;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!h((String) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean j() {
        SwiftApp.Companion companion = SwiftApp.d;
        String packageName = SwiftApp.Companion.c().getPackageName();
        try {
            g00 g00Var = g00.a;
            List<PackageInfo> installedPackages = g00.r().getInstalledPackages(0);
            installedPackages.getClass();
            ArrayList arrayList = new ArrayList(hl1.G0(installedPackages, 10));
            Iterator<T> it = installedPackages.iterator();
            while (it.hasNext()) {
                arrayList.add(((PackageInfo) it.next()).packageName);
            }
            Set set = zc4.a;
            packageName.getClass();
            if (arrayList.contains(packageName) && !arrayList.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (zc4.a.contains((String) it2.next())) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "PermissionHelper", "Unable to verify installed app visibility", e2, null, 8, null);
            return true;
        }
    }

    public static boolean k() {
        boolean zJ = j();
        Set set = zc4.a;
        boolean zL = l(zJ);
        boolean zH = h("com.android.permission.GET_INSTALLED_APPS");
        if (zL) {
            return zH && zJ;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    /* JADX WARN: Code duplicated, block: B:21:0x003b  */
    public static boolean l(boolean z) {
        PermissionInfo permissionInfo;
        boolean z2;
        boolean z3;
        String str;
        try {
            g00 g00Var = g00.a;
            permissionInfo = g00.r().getPermissionInfo("com.android.permission.GET_INSTALLED_APPS", 0);
        } catch (PackageManager.NameNotFoundException unused) {
            permissionInfo = null;
        }
        if (permissionInfo == null || (str = permissionInfo.packageName) == null) {
            z2 = false;
        } else {
            g00 g00Var2 = g00.a;
            if (g00.y(g00.q(0, str))) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (permissionInfo == null) {
            z3 = false;
        } else {
            if ((b67.a() ? permissionInfo.getProtection() : permissionInfo.protectionLevel & 15) == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
        }
        SwiftApp.Companion companion = SwiftApp.d;
        boolean z4 = Settings.Secure.getInt(SwiftApp.Companion.c().getContentResolver(), "oem_installed_apps_runtime_permission_enable", 0) == 1;
        Set set = zc4.a;
        String str2 = permissionInfo != null ? permissionInfo.packageName : null;
        if (str2 == null) {
            return false;
        }
        if (!str2.equals("com.lbe.security.miui")) {
            if (!z2) {
                return false;
            }
            if (!z3 && !z4 && z) {
                return false;
            }
        }
        return true;
    }

    public static boolean m() {
        return i((Set) d.getValue());
    }

    public static boolean n() {
        return i(c());
    }

    public static void o(zm zmVar, Set set, boolean z) {
        zmVar.getClass();
        set.getClass();
        int i = 0;
        if (b67.c() && set.contains(el1.R0(c()))) {
            List listI = nc8.I(new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION", Uri.parse("package:" + zmVar.getPackageName())).addCategory("android.intent.category.DEFAULT"));
            String packageName = zmVar.getPackageName();
            packageName.getClass();
            r(zmVar, el1.g1(listI, z85.d(packageName, set, false, false)), set);
            return;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        String strK = dj7.k(b(set), "\n\n", dj7.g(R.string.grant_permissions_from_settings));
        s35 s35Var = new s35(zmVar, R.style.M3AlertDialogTheme, new hv1(zmVar, R.style.M3AlertDialogTheme), Float.valueOf(14.0f));
        s35Var.v(R.string.permissions_needed);
        ra raVar = (ra) s35Var.b;
        raVar.m = false;
        raVar.f = strK;
        s35Var.s(R.string.settings, new fp3(1, zmVar, set));
        s35Var.q(R.string.cancel, new bz5(z, zmVar, i));
        s35Var.m();
    }

    public static void p() {
        vr6.i$default(vr6.INSTANCE, "PermissionHelper", "Revoking storage permissions", null, 4, null);
        if (b67.c()) {
            SwiftApp.Companion companion = SwiftApp.d;
            String packageName = SwiftApp.Companion.c().getPackageName();
            packageName.getClass();
            eu euVar = eu.ignore;
            euVar.getClass();
            mp6 mp6Var = mp6.a;
            boolean z = g42.a;
            String string = euVar.toString();
            string.getClass();
            mp6Var.j(true, new String[]{String.format(g42.d(), Arrays.copyOf(new Object[]{"set", packageName, "android:manage_external_storage", string}, 4))}, ip6.SHIZUKU);
            return;
        }
        mp6 mp6Var2 = mp6.a;
        boolean z2 = g42.a;
        SwiftApp.Companion companion2 = SwiftApp.d;
        String packageName2 = SwiftApp.Companion.c().getPackageName();
        packageName2.getClass();
        gv7 gv7Var = g42.h;
        String str = String.format((String) gv7Var.getValue(), Arrays.copyOf(new Object[]{packageName2, "android.permission.WRITE_EXTERNAL_STORAGE"}, 2));
        String packageName3 = SwiftApp.Companion.c().getPackageName();
        packageName3.getClass();
        mp6Var2.h(new String[]{str, String.format((String) gv7Var.getValue(), Arrays.copyOf(new Object[]{packageName3, "android.permission.READ_EXTERNAL_STORAGE"}, 2))}, ip6.SHIZUKU);
    }

    public static void q(sa1 sa1Var, Set set) {
        set.getClass();
        s35 s35Var = new s35(sa1Var, R.style.M3AlertDialogTheme, new hv1(sa1Var, R.style.M3AlertDialogTheme), Float.valueOf(14.0f));
        ra raVar = (ra) s35Var.b;
        s35Var.v(R.string.permission_error);
        raVar.m = false;
        raVar.f = b(set);
        s35Var.s(R.string.close, new iq1(sa1Var, 4));
        s35Var.m();
    }

    public static void r(zm zmVar, AbstractList abstractList, Set set) {
        Iterator it = abstractList.iterator();
        Exception exc = null;
        while (it.hasNext()) {
            Intent intent = (Intent) it.next();
            try {
                zmVar.startActivityForResult(intent, 9785);
                return;
            } catch (Exception e2) {
                vr6.e$default(vr6.INSTANCE, "PermissionHelper", "Unable to open permission settings action=" + intent.getAction() + ", permissions=" + set, e2, null, 8, null);
                exc = e2;
            }
        }
        if (exc != null) {
            String strB = io4.b(exc);
            zmVar.getClass();
            zn4 zn4Var = zn4.a;
            zn4.e(new cv(14, zmVar, strB));
        }
    }
}
