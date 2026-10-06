package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class av {
    public static final gv7 a = new gv7(new qm(1));
    public static final gv7 b = new gv7(new pu(0));

    public static ArrayList a(String str, Set set, Set set2, Set set3, g55 g55Var, Set set4, fu fuVar, boolean z) {
        eu euVarN;
        ArrayList arrayList = new ArrayList();
        eu euVar = eu.allow;
        if (b(fuVar, str, "android:get_usage_stats", euVar)) {
            c("Usage access", "Granted", z);
            arrayList.add("android.permission.PACKAGE_USAGE_STATS");
        }
        if (b(fuVar, str, "android:request_install_packages", euVar)) {
            c("Install unknown apps", "Granted", z);
            arrayList.add("android.permission.REQUEST_INSTALL_PACKAGES");
        }
        if (set != null && set.contains(str)) {
            c("DND access", "Granted", z);
            arrayList.add("android.permission.ACCESS_NOTIFICATION_POLICY");
        }
        if (b(fuVar, str, "android:system_alert_window", euVar)) {
            c("Display over other apps", "Granted", z);
            arrayList.add("android.permission.SYSTEM_ALERT_WINDOW");
        }
        if (hp0.b(str)) {
            c("Battery optimization - Don't optimize", "Granted", z);
            arrayList.add("android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
        }
        if (set2 != null && set2.contains(str)) {
            c("Unrestricted data", "Granted", z);
            arrayList.add("RESTRICT_BACKGROUND_DATA_WHITELIST");
        }
        if (set3 != null && set3.contains(str)) {
            c("Background data disabled", "Denied", z);
            arrayList.add("RESTRICT_BACKGROUND_DATA_BLACKLIST");
        }
        if (b(fuVar, str, "android:run_any_in_background", eu.ignore)) {
            c("Run in background", "Denied", z);
            arrayList.add("RUN_IN_BACKGROUND_DISABLED");
        }
        if (b(fuVar, str, "android:write_settings", euVar)) {
            c("Modify system settings", "Granted", z);
            arrayList.add("android.permission.WRITE_SETTINGS");
        }
        if (b(fuVar, str, "android:activate_vpn", euVar)) {
            c("Activate VPN", "Granted", z);
            arrayList.add("android.permission.BIND_VPN_SERVICE");
        }
        g00 g00Var = g00.a;
        int i = b67.a() ? 19 : 18;
        LinkedHashMap linkedHashMap = de7.a;
        List listI = nc8.I(str);
        mp6 mp6Var = mp6.a;
        String str2 = null;
        if (mp6.f() && de7.a("appwidget")) {
            StringBuilder sb = new StringBuilder();
            for (Object obj : listI) {
                if (obj instanceof Integer) {
                    sb.append(" i32 " + obj);
                } else {
                    if (!(obj instanceof String)) {
                        g84.h("ShellServiceCall: Type not provided for service call!");
                        return null;
                    }
                    sb.append(" s16 " + obj);
                }
            }
            str2 = (String) el1.U0(mp6Var.h(new String[]{"service call appwidget " + i + TokenAuthenticationScheme.SCHEME_DELIMITER + ((Object) sb)}, ip6.SHIZUKU));
        }
        if (str2 != null ? nq7.Z(str2, "Parcel(00000000 00000001", false) : false) {
            c("Bind app widgets", "Granted", z);
            arrayList.add("android.permission.BIND_APPWIDGET");
        }
        if (b67.c() && b(fuVar, str, "android:manage_external_storage", eu.allow)) {
            c("All files access", "Granted", z);
            arrayList.add("android.permission.MANAGE_EXTERNAL_STORAGE");
        }
        if (b67.d() && b(fuVar, str, "android:schedule_exact_alarm", eu.allow)) {
            c("Alarms & reminders", "Granted", z);
            arrayList.add("android.permission.SCHEDULE_EXACT_ALARM");
        }
        if (set4 != null && set4.contains(str)) {
            String strD = g55Var != null ? g55Var.d() : "MAGISK_HIDE";
            if (z) {
                vr6.i$default(vr6.INSTANCE, "AppPermissionsHelper", eq3.k("Special data: ", strD, " = Enabled"), null, 4, null);
            }
            arrayList.add("MAGISK_HIDE");
        }
        eu euVar2 = eu.ignore;
        if (b(fuVar, str, "android:change_wifi_state", euVar2)) {
            c("Wi-Fi Control disabled", "Denied", z);
            arrayList.add("Wi-Fi Control disabled");
        }
        eu euVar3 = eu.deny;
        if (b(fuVar, str, "android:picture_in_picture", euVar3)) {
            c("Picture-in-picture disabled", "Denied", z);
            arrayList.add("Picture-in-picture disabled");
        }
        if (b(fuVar, str, "android:turn_screen_on", euVar3)) {
            c("Turn screen on disabled", "Denied", z);
            arrayList.add("Turn screen on disabled");
        }
        List listA0 = fl1.A0(euVar3, euVar2);
        if (fuVar == null || (euVarN = fuVar.b("android:auto_revoke_permissions_if_unused")) == null) {
            euVarN = l73.n(str, "android:auto_revoke_permissions_if_unused");
        }
        if (el1.M0(listA0, euVarN)) {
            c("Pause app activity if unused disabled", "Denied", z);
            arrayList.add("Pause app activity if unused disabled");
        }
        return arrayList;
    }

    public static final boolean b(fu fuVar, String str, String str2, eu euVar) {
        if (fuVar != null) {
            euVar.getClass();
            return fuVar.b(str2) == euVar;
        }
        euVar.getClass();
        return l73.n(str, str2) == euVar;
    }

    public static final void c(String str, String str2, boolean z) {
        if (z) {
            vr6.i$default(vr6.INSTANCE, "AppPermissionsHelper", dj7.l("Special permission: ", str, " = ", str2), null, 4, null);
        }
    }

    public static void e(String str, Set set, boolean z, g55 g55Var) {
        String strK;
        List listI;
        str.getClass();
        set.getClass();
        gv7 gv7Var = new gv7(new qu(str, 0));
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : el1.Q0(set)) {
            if (pe4.d(str2, "android.permission.REQUEST_INSTALL_PACKAGES")) {
                if (z) {
                    eu euVar = eu.allow;
                    euVar.getClass();
                    boolean z2 = g42.a;
                    String string = euVar.toString();
                    string.getClass();
                    arrayList.add(String.format(g42.d(), Arrays.copyOf(new Object[]{"set", str, "android:request_install_packages", string}, 4)));
                    f("Install unknown apps", "Granted");
                }
            } else if (pe4.d(str2, "android.permission.ACCESS_NOTIFICATION_POLICY")) {
                if (z) {
                    boolean z3 = g42.a;
                    if (b67.a()) {
                        strK = String.format((String) g42.F.getValue(), Arrays.copyOf(new Object[]{str}, 1));
                    } else {
                        mp6 mp6Var = mp6.a;
                        gv7 gv7Var2 = g42.E;
                        String str3 = (String) el1.U0(mp6Var.h(new String[]{String.format((String) gv7Var2.getValue(), Arrays.copyOf(new Object[]{"get"}, 1))}, ip6.SHIZUKU));
                        if (str3 == null || !nq7.Z(str3, str, false)) {
                            strK = dj7.k(String.format((String) gv7Var2.getValue(), Arrays.copyOf(new Object[]{"put"}, 1)), TokenAuthenticationScheme.SCHEME_DELIMITER, (str3 == null || str3.length() == 0) ? str : dj7.k(str3, ":", str));
                        }
                        f("DND access", "Granted");
                    }
                    mp6.a.h(new String[]{strK}, ip6.SHIZUKU);
                    f("DND access", "Granted");
                }
            } else if (pe4.d(str2, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS")) {
                if (z) {
                    hp0.a(str, false);
                    f("Battery optimization - Don't optimize", "Granted");
                }
            } else if (pe4.d(str2, "android.permission.SYSTEM_ALERT_WINDOW")) {
                if (z) {
                    eu euVar2 = eu.allow;
                    euVar2.getClass();
                    boolean z4 = g42.a;
                    String string2 = euVar2.toString();
                    string2.getClass();
                    arrayList.add(String.format(g42.d(), Arrays.copyOf(new Object[]{"set", str, "android:system_alert_window", string2}, 4)));
                    f("Display over other apps", "Granted");
                }
            } else if (pe4.d(str2, "android.permission.WRITE_SETTINGS")) {
                if (z) {
                    eu euVar3 = eu.allow;
                    euVar3.getClass();
                    boolean z5 = g42.a;
                    String string3 = euVar3.toString();
                    string3.getClass();
                    arrayList.add(String.format(g42.d(), Arrays.copyOf(new Object[]{"set", str, "android:write_settings", string3}, 4)));
                    f("Modify system settings", "Granted");
                }
            } else if (pe4.d(str2, "android.permission.BIND_VPN_SERVICE")) {
                if (z) {
                    eu euVar4 = eu.allow;
                    euVar4.getClass();
                    boolean z6 = g42.a;
                    String string4 = euVar4.toString();
                    string4.getClass();
                    arrayList.add(String.format(g42.d(), Arrays.copyOf(new Object[]{"set", str, "android:activate_vpn", string4}, 4)));
                    f("Activate VPN", "Granted");
                }
            } else if (pe4.d(str2, "android.permission.BIND_APPWIDGET")) {
                if (z) {
                    g00 g00Var = g00.a;
                    mp6.a.h(new String[]{String.format((String) g42.K.getValue(), Arrays.copyOf(new Object[]{str}, 1))}, ip6.SHIZUKU);
                    f("Bind app widgets", "Granted");
                }
            } else if (pe4.d(str2, "android.permission.MANAGE_EXTERNAL_STORAGE")) {
                if (z && b67.c()) {
                    eu euVar5 = eu.allow;
                    euVar5.getClass();
                    boolean z7 = g42.a;
                    String string5 = euVar5.toString();
                    string5.getClass();
                    arrayList.add(String.format(g42.d(), Arrays.copyOf(new Object[]{"set", str, "android:manage_external_storage", string5}, 4)));
                    f("All files access", "Granted");
                }
            } else if (pe4.d(str2, "android.permission.SCHEDULE_EXACT_ALARM")) {
                if (z && b67.d()) {
                    eu euVar6 = eu.allow;
                    euVar6.getClass();
                    boolean z8 = g42.a;
                    String string6 = euVar6.toString();
                    string6.getClass();
                    arrayList.add(String.format(g42.d(), Arrays.copyOf(new Object[]{"set", str, "android:schedule_exact_alarm", string6}, 4)));
                    f("Alarms & reminders", "Granted");
                }
            } else if (pe4.d(str2, "RESTRICT_BACKGROUND_DATA_WHITELIST")) {
                if (z && ((Number) gv7Var.getValue()).intValue() > 0) {
                    boolean z9 = g42.a;
                    arrayList.add(String.format((String) g42.I.getValue(), Arrays.copyOf(new Object[]{"add", Integer.valueOf(((Number) gv7Var.getValue()).intValue())}, 2)));
                    f("Unrestricted data", "Granted");
                }
            } else if (pe4.d(str2, "RESTRICT_BACKGROUND_DATA_BLACKLIST")) {
                if (z && ((Number) gv7Var.getValue()).intValue() > 0) {
                    boolean z10 = g42.a;
                    arrayList.add(String.format((String) g42.J.getValue(), Arrays.copyOf(new Object[]{"add", Integer.valueOf(((Number) gv7Var.getValue()).intValue())}, 2)));
                    f("Background data disabled", "Denied");
                }
            } else if (pe4.d(str2, "RUN_IN_BACKGROUND_DISABLED")) {
                if (z) {
                    eu euVar7 = eu.ignore;
                    euVar7.getClass();
                    boolean z11 = g42.a;
                    String string7 = euVar7.toString();
                    string7.getClass();
                    arrayList.add(String.format(g42.d(), Arrays.copyOf(new Object[]{"set", str, "android:run_any_in_background", string7}, 4)));
                    f("Run in background", "Denied");
                }
            } else if (pe4.d(str2, "MAGISK_HIDE")) {
                if (z) {
                    mp6 mp6Var2 = mp6.a;
                    if (mp6.g && mp6.e() && g55Var != null) {
                        if (g55Var.c() && !g55Var.isEnabled()) {
                            g55Var.e();
                            if (!g55Var.isEnabled()) {
                            }
                        }
                        g55Var.b(str);
                        vr6.i$default(vr6.INSTANCE, "AppPermissionsHelper", eq3.k("Special data restored: ", g55Var.d(), " = Enabled"), null, 4, null);
                    }
                }
            } else if (pe4.d(str2, "Wi-Fi Control disabled")) {
                if (z) {
                    eu euVar8 = eu.ignore;
                    euVar8.getClass();
                    boolean z12 = g42.a;
                    String string8 = euVar8.toString();
                    string8.getClass();
                    arrayList.add(String.format(g42.d(), Arrays.copyOf(new Object[]{"set", str, "android:change_wifi_state", string8}, 4)));
                    f("Wi-Fi Control disabled", "Denied");
                }
            } else if (pe4.d(str2, "Picture-in-picture disabled")) {
                if (z) {
                    eu euVar9 = eu.deny;
                    euVar9.getClass();
                    boolean z13 = g42.a;
                    String string9 = euVar9.toString();
                    string9.getClass();
                    arrayList.add(String.format(g42.d(), Arrays.copyOf(new Object[]{"set", str, "android:picture_in_picture", string9}, 4)));
                    f("Picture-in-picture disabled", "Denied");
                }
            } else if (pe4.d(str2, "Turn screen on disabled")) {
                if (z) {
                    eu euVar10 = eu.deny;
                    euVar10.getClass();
                    boolean z14 = g42.a;
                    String string10 = euVar10.toString();
                    string10.getClass();
                    arrayList.add(String.format(g42.d(), Arrays.copyOf(new Object[]{"set", str, "android:turn_screen_on", string10}, 4)));
                    f("Turn screen on disabled", "Denied");
                }
            } else if (!pe4.d(str2, "Pause app activity if unused disabled")) {
                g00 g00Var2 = g00.a;
                int i = g00.i();
                if (b67.e()) {
                    boolean z15 = g42.a;
                    listI = fl1.A0(g42.f(i, str, str2), g42.g(i, str, str2), g42.l(i, str, str2));
                } else {
                    boolean z16 = g42.a;
                    listI = nc8.I(g42.g(i, str, str2));
                }
                arrayList2.addAll(listI);
                vr6.i$default(vr6.INSTANCE, "AppPermissionsHelper", eq3.k("Permission restored: ", nq7.A0(str2, ".", str2), " = Granted"), null, 4, null);
            } else if (z && ((Number) gv7Var.getValue()).intValue() > 0) {
                String strValueOf = String.valueOf(((Number) gv7Var.getValue()).intValue());
                eu euVar11 = eu.ignore;
                strValueOf.getClass();
                euVar11.getClass();
                boolean z17 = g42.a;
                String string11 = euVar11.toString();
                string11.getClass();
                arrayList.add(String.format(g42.d(), Arrays.copyOf(new Object[]{"set", strValueOf, "android:auto_revoke_permissions_if_unused", string11}, 4)));
                f("Pause app activity if unused disabled", "Denied");
            }
        }
        h(arrayList);
        h(arrayList2);
    }

    public static final void f(String str, String str2) {
        vr6.i$default(vr6.INSTANCE, "AppPermissionsHelper", dj7.l("Special permission restored: ", str, " = ", str2), null, 4, null);
    }

    public static void h(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        mp6 mp6Var = mp6.a;
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        mp6Var.h((String[]) Arrays.copyOf(strArr, strArr.length), ip6.SHIZUKU);
    }

    public static List i(Collection collection) {
        return el1.n1(collection, ms8.m(new nu(0), new ou(0)));
    }

    public static String j(uu uuVar) {
        int i = zu.b[uuVar.ordinal()];
        if (i == 1) {
            return "Denied";
        }
        if (i == 2) {
            return "Denied (Don't ask again)";
        }
        if (i == 3) {
            return "Granted";
        }
        q.j();
        return null;
    }
}
