package defpackage;

import android.app.ActivityManager;
import android.app.Application;
import android.app.LocaleManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Process;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class i6 {
    public static p04 a(Bundle bundle) throws q04 {
        bundle.getClass();
        try {
            String string = bundle.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID");
            String string2 = bundle.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID_TOKEN");
            String string3 = bundle.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_DISPLAY_NAME");
            String string4 = bundle.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_FAMILY_NAME");
            String string5 = bundle.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_GIVEN_NAME");
            Uri uri = Build.VERSION.SDK_INT >= 33 ? (Uri) bundle.getParcelable("com.google.android.libraries.identity.googleid.BUNDLE_KEY_PROFILE_PICTURE_URI", Uri.class) : (Uri) bundle.getParcelable("com.google.android.libraries.identity.googleid.BUNDLE_KEY_PROFILE_PICTURE_URI");
            String string6 = bundle.getString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_PHONE_NUMBER");
            string.getClass();
            string2.getClass();
            return new p04(string, string2, string3, string4, string5, uri, string6);
        } catch (Exception e) {
            throw new q04(e);
        }
    }

    public static ArrayList b(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        context.getClass();
        int i = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            runningAppProcesses = ov2.a;
        }
        ArrayList arrayListQ0 = el1.Q0(runningAppProcesses);
        ArrayList<ActivityManager.RunningAppProcessInfo> arrayList = new ArrayList();
        for (Object obj : arrayListQ0) {
            if (((ActivityManager.RunningAppProcessInfo) obj).uid == i) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : arrayList) {
            String str2 = runningAppProcessInfo.processName;
            str2.getClass();
            arrayList2.add(new k76(str2, runningAppProcessInfo.pid, runningAppProcessInfo.importance, pe4.d(runningAppProcessInfo.processName, str)));
        }
        return arrayList2;
    }

    public static k76 c(Context context) {
        Object next;
        String strE;
        context.getClass();
        int iMyPid = Process.myPid();
        Iterator it = b(context).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((k76) next).b != iMyPid);
        k76 k76Var = (k76) next;
        if (k76Var != null) {
            return k76Var;
        }
        int i = Build.VERSION.SDK_INT;
        if (i > 33) {
            strE = Process.myProcessName();
            strE.getClass();
        } else if ((i < 28 || (strE = Application.getProcessName()) == null) && (strE = cf.e()) == null) {
            strE = "";
        }
        return new k76(strE, iMyPid, 0, false);
    }

    public static PackageInfo d(PackageManager packageManager, Context context) {
        return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
    }

    public static Object e(Bundle bundle, String str, Class cls) {
        return bundle.getParcelable(str, cls);
    }

    public static String f(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getUniqueId();
    }

    public static boolean g(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isTextSelectable();
    }

    public static LocaleList h(Object obj) {
        return ((LocaleManager) obj).getSystemLocales();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005a  */
    public static v00 i(PackageManager packageManager, String str) {
        List<PackageInfo> installedPackages;
        String string;
        String str2;
        CharSequence charSequenceLoadLabel;
        if (Build.VERSION.SDK_INT >= 33) {
            installedPackages = packageManager.getInstalledPackages(PackageManager.PackageInfoFlags.of(0L));
            installedPackages.getClass();
        } else {
            installedPackages = packageManager.getInstalledPackages(0);
            installedPackages.getClass();
        }
        ArrayList arrayList = new ArrayList(hl1.G0(installedPackages, 10));
        for (PackageInfo packageInfo : installedPackages) {
            String str3 = packageInfo.packageName;
            str3.getClass();
            try {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                string = (applicationInfo == null || (charSequenceLoadLabel = applicationInfo.loadLabel(packageManager)) == null) ? null : charSequenceLoadLabel.toString();
            } catch (RuntimeException unused) {
            }
            if (string == null) {
                str2 = str3;
            } else {
                str2 = nq7.j0(string) ? null : string;
                if (str2 == null) {
                    str2 = str3;
                }
            }
            arrayList.add(new r00(str2, str3));
        }
        String.CASE_INSENSITIVE_ORDER.getClass();
        int i = 2;
        return new v00(installedPackages.size(), str, el1.n1(arrayList, new yg(new xg(i), i)));
    }

    public static void j(ShortcutInfo.Builder builder) {
        builder.setExcludedFromSurfaces(0);
    }
}
