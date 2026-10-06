package defpackage;

import android.app.ActivityManager;
import android.content.pm.ShortcutManager;
import android.os.Looper;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ni {
    public static ArrayList a(ji jiVar, boolean z, boolean z2) {
        Set setZ1;
        ji jiVar2;
        BlacklistApp blacklistApp;
        boolean z3;
        List<BlacklistApp> items;
        Object next;
        Integer numValueOf = Integer.valueOf(R.drawable.ic_launch_mini);
        jiVar.getClass();
        ArrayList arrayList = new ArrayList();
        v53 v53Var = v53.a;
        String packageName = jiVar.getPackageName();
        packageName.getClass();
        boolean zContainsKey = v53.c.containsKey(packageName);
        SwiftApp.Companion companion = SwiftApp.d;
        arrayList.add(new ki(13, dj7.g(R.string.favorites), null, null, R.drawable.ic_favorite, zContainsKey ? Integer.valueOf(R.color.favorites) : null, null, null, false, null, false, 16184));
        if (z) {
            arrayList.add(new ki(14, dj7.k(SwiftApp.Companion.c().getString(R.string.backup), " / ", SwiftApp.Companion.c().getString(R.string.restore)), null, null, R.drawable.ic_backup_restore, null, null, null, false, null, false, 16312));
        }
        boolean a = V.INSTANCE.getA();
        lr4 lr4Var = lr4.a;
        Set setE = lr4.e(jiVar.getPackageName());
        int i = 0;
        arrayList.add(new ki(11, dj7.g((setE == null || setE.isEmpty()) ? R.string.set_app_labels : R.string.edit_app_labels), null, (setE == null || setE.isEmpty()) ? null : new li(setE, i), R.drawable.ic_label_filled, null, !a ? Integer.valueOf(R.drawable.ic_flash_circle) : null, !a ? Integer.valueOf(R.color.premium) : null, false, null, false, 15512));
        if (setE != null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = setE.iterator();
            while (it.hasNext()) {
                String id = ((LabelParams) it.next()).getId();
                if (id != null) {
                    arrayList2.add(id);
                }
            }
            setZ1 = el1.z1(arrayList2);
        } else {
            setZ1 = null;
        }
        Set<String> set = sv2.a;
        if (setZ1 == null) {
            setZ1 = set;
        }
        lr4 lr4Var2 = lr4.a;
        Set setF = lr4.f();
        if (setF != null) {
            set = setF;
        }
        if (a && !set.isEmpty() && !set.isEmpty()) {
            Iterator it2 = set.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    jiVar2 = jiVar;
                    break;
                }
                if (!setZ1.contains((String) it2.next())) {
                    ArrayList arrayList3 = new ArrayList();
                    for (String str : set) {
                        lr4 lr4Var3 = lr4.a;
                        LabelParams labelParamsC = lr4.c(str);
                        if (labelParamsC != null) {
                            arrayList3.add(labelParamsC);
                        }
                    }
                    Set setZ2 = el1.z1(arrayList3);
                    jiVar2 = jiVar;
                    mi miVar = !setZ2.isEmpty() ? new mi(i, jiVar2, setZ2) : null;
                    SwiftApp.Companion companion2 = SwiftApp.d;
                    arrayList.add(new ki(12, dj7.g(R.string.add_recently_applied_labels), !a ? SwiftApp.Companion.c().getString(R.string.premium_only) : null, miVar, R.drawable.ic_magic_auto_fix_high_black_filled, Integer.valueOf(R.color.ambr), Integer.valueOf(R.drawable.ic_menu_close), null, false, null, false, 15880));
                    break;
                }
            }
        } else {
            jiVar2 = jiVar;
            break;
        }
        BlacklistData blacklistData = gs0.c;
        if (blacklistData == null || (items = blacklistData.getItems()) == null) {
            blacklistApp = null;
        } else {
            Iterator<T> it3 = items.iterator();
            do {
                if (!it3.hasNext()) {
                    next = null;
                    break;
                }
                next = it3.next();
            } while (!pe4.d(((BlacklistApp) next).getPackageName(), jiVar2.getPackageName()));
            blacklistApp = (BlacklistApp) next;
        }
        if (blacklistApp != null) {
            SwiftApp.Companion companion3 = SwiftApp.d;
            arrayList.add(new ki(21, dj7.g(R.string.change_blacklist_mode), blacklistApp.getBlackListTypeDisplayString(), null, R.drawable.ic_settings_block_filled, null, null, null, false, null, false, 16296));
        } else {
            SwiftApp.Companion companion4 = SwiftApp.d;
            arrayList.add(new ki(21, dj7.g(R.string.add_to_blacklist), null, null, R.drawable.ic_settings_block_filled, null, Integer.valueOf(R.drawable.ic_help), null, false, null, false, 16056));
        }
        if (jiVar2.isInstalled() && jiVar2.getEnabled()) {
            mp6 mp6Var = mp6.a;
            boolean zF = mp6.f();
            int i2 = R.string.not_optimized;
            if (zF) {
                boolean z4 = hp0.a;
                String packageName2 = jiVar2.getPackageName();
                packageName2.getClass();
                boolean zB = hp0.b(packageName2);
                boolean z5 = !zB;
                if (!zB) {
                    i2 = R.string.optimizing_battery_use;
                }
                SwiftApp.Companion companion5 = SwiftApp.d;
                String strG = dj7.g(R.string.battery_optimization);
                String string = SwiftApp.Companion.c().getString(i2);
                boolean z6 = hp0.a;
                arrayList.add(new ki(22, strG, string, null, R.drawable.ic_battery, null, !z6 ? numValueOf : null, null, z6, Boolean.valueOf(z5), false, 9896));
            } else {
                boolean z7 = hp0.a;
                if (!hp0.b(jiVar2.getPackageName())) {
                    i2 = R.string.optimizing_battery_use;
                }
                SwiftApp.Companion companion6 = SwiftApp.d;
                arrayList.add(new ki(22, dj7.g(R.string.battery_optimization), SwiftApp.Companion.c().getString(i2), null, R.drawable.ic_battery, null, numValueOf, null, false, null, false, 13992));
            }
        }
        if (z2) {
            SwiftApp.Companion companion7 = SwiftApp.d;
            if (((ShortcutManager) SwiftApp.Companion.c().getSystemService(ShortcutManager.class)).isRequestPinShortcutSupported()) {
                arrayList.add(new ki(31, dj7.g(R.string.add_to_homescreen), null, null, R.drawable.ic_add_to_homescreen, null, null, null, false, null, true, 8120));
                z3 = false;
            } else {
                z3 = true;
            }
            arrayList.add(new ki(32, dj7.g(R.string.settings), null, null, R.drawable.ic_settings, null, null, null, false, null, z3, 8120));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:90:0x01ad  */
    public static ArrayList b(ji jiVar, boolean z) {
        d00 d00Var;
        e00 e00Var;
        ip6 ip6Var;
        d00 d00Var2;
        jiVar.getClass();
        Object obj = null;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (z && jiVar.isInstalled() && jiVar.getEnabled() && jiVar.isLaunchable()) {
            SwiftApp.Companion companion = SwiftApp.d;
            arrayList.add(new oi(1, dj7.g(R.string.launch), null, R.drawable.ic_launch_mini, false, 20));
        }
        mp6 mp6Var = mp6.a;
        if (mp6.f() && jiVar.isInstalled()) {
            SwiftApp.Companion companion2 = SwiftApp.d;
            String string = SwiftApp.Companion.c().getString(jiVar.getEnabled() ? R.string.disable : R.string.enable);
            string.getClass();
            arrayList.add(new oi(2, string, !jiVar.getEnabled() ? Integer.valueOf(R.color.disabled_app_indicator) : null, jiVar.getEnabled() ? R.drawable.ic_disable : R.drawable.ic_enable, false, 16));
        }
        if (z && jiVar.isInstalled() && !jiVar.isBundled()) {
            SwiftApp.Companion companion3 = SwiftApp.d;
            arrayList.add(new oi(3, dj7.g(R.string.uninstall), null, R.drawable.ic_delete, false, 20));
        }
        if (mp6.f() && jiVar.isInstalled() && jiVar.getEnabled()) {
            g00 g00Var = g00.a;
            Integer numN = g00.n(jiVar.getPackageName());
            if (numN != null) {
                int iIntValue = numN.intValue();
                Method method = (Method) g00.e.getValue();
                if (method == null || (e00Var = (e00) g00.d.getValue()) == null) {
                    d00Var = null;
                } else {
                    SwiftApp.Companion companion4 = SwiftApp.d;
                    ActivityManager activityManager = (ActivityManager) SwiftApp.Companion.c().getSystemService(ActivityManager.class);
                    if (activityManager == null) {
                        d00Var = null;
                    } else {
                        try {
                            Object objInvoke = method.invoke(activityManager, Integer.valueOf(iIntValue));
                            objInvoke.getClass();
                            int iIntValue2 = ((Integer) objInvoke).intValue();
                            if (iIntValue2 == e00Var.a || iIntValue2 == e00Var.b) {
                                d00Var = d00.PERSISTENT;
                            } else {
                                d00Var = iIntValue2 == e00Var.c ? d00.NONEXISTENT : d00.OTHER;
                            }
                        } catch (Exception unused) {
                            d00Var = null;
                        }
                    }
                }
                if (d00Var == null) {
                    String str = String.format((String) g42.G.getValue(), Arrays.copyOf(new Object[]{Integer.valueOf(iIntValue)}, 1));
                    mp6 mp6Var2 = mp6.a;
                    if (mp6.g) {
                        ip6Var = ip6.SU;
                    } else {
                        ip6Var = mp6.g() ? ip6.SHIZUKU : ip6.ANY;
                    }
                    String str2 = (String) el1.U0(mp6Var2.h(new String[]{str}, ip6Var));
                    if (str2 == null || str2.length() == 0) {
                        d00Var2 = d00.OTHER;
                    } else {
                        Iterator it = ((z3) d00.getEntries()).iterator();
                        while (true) {
                            w3 w3Var = (w3) it;
                            if (!w3Var.hasNext()) {
                                break;
                            }
                            Object next = w3Var.next();
                            if (nq7.Z(str2, ((d00) next).toString(), false)) {
                                obj = next;
                                break;
                            }
                        }
                        d00 d00Var3 = (d00) obj;
                        if (d00Var3 == null) {
                            d00Var2 = d00.OTHER;
                        } else {
                            d00Var = d00Var3;
                        }
                    }
                    d00Var = d00Var2;
                }
                if (d00Var == null) {
                    d00Var = d00.OTHER;
                }
            } else {
                d00Var = d00.OTHER;
            }
            if (d00Var != d00.PERSISTENT) {
                boolean z2 = d00Var == d00.NONEXISTENT;
                SwiftApp.Companion companion5 = SwiftApp.d;
                arrayList.add(new oi(4, dj7.g(R.string.force_stop), null, R.drawable.ic_force_stop, !z2, 4));
            }
            SwiftApp.Companion companion6 = SwiftApp.d;
            arrayList.add(new oi(6, dj7.g(R.string.clear_data), null, R.drawable.ic_clear_data, false, 20));
        }
        SwiftApp.Companion companion7 = SwiftApp.d;
        arrayList.add(new oi(5, dj7.g(R.string.play_store), null, R.drawable.ic_google_play, false, 20));
        if (jiVar.isInstalled()) {
            arrayList.add(new oi(7, dj7.g(R.string.app_info), null, R.drawable.ic_information, false, 20));
            arrayList.add(new oi(8, dj7.g(R.string.share_apk), null, R.drawable.ic_share, false, 20));
        }
        return arrayList;
    }
}
